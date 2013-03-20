<?php
//Include Common Files @1-85A02DE5
define("RelativePath", ".");
define("PathToCurrentPage", "/");
define("FileName", "Articles.php");
include_once(RelativePath . "/Common.php");
include_once(RelativePath . "/Template.php");
include_once(RelativePath . "/Sorter.php");
include_once(RelativePath . "/Navigator.php");
//End Include Common Files

//Master Page implementation @1-DB06AD2E
include_once(RelativePath . "/Designs/FarmSong/MasterPage.php");
//End Master Page implementation

class clsGridarticles { //articles class @52-C7F38401

//Variables @52-6E51DF5A

    // Public variables
    public $ComponentType = "Grid";
    public $ComponentName;
    public $Visible;
    public $Errors;
    public $ErrorBlock;
    public $ds;
    public $DataSource;
    public $PageSize;
    public $IsEmpty;
    public $ForceIteration = false;
    public $HasRecord = false;
    public $SorterName = "";
    public $SorterDirection = "";
    public $PageNumber;
    public $RowNumber;
    public $ControlsVisible = array();

    public $CCSEvents = "";
    public $CCSEventResult;

    public $RelativePath = "";
    public $Attributes;

    // Grid Controls
    public $StaticControls;
    public $RowControls;
//End Variables

//Class_Initialize Event @52-DF15DC97
    function clsGridarticles($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "articles";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid articles";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsarticlesDataSource($this);
        $this->ds = & $this->DataSource;
        $this->PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(!is_numeric($this->PageSize) || !strlen($this->PageSize))
            $this->PageSize = 50;
        else
            $this->PageSize = intval($this->PageSize);
        if ($this->PageSize > 100)
            $this->PageSize = 100;
        if($this->PageSize == 0)
            $this->Errors->addError("<p>Form: Grid " . $this->ComponentName . "<BR>Error: (CCS06) Invalid page size.</p>");
        $this->PageNumber = intval(CCGetParam($this->ComponentName . "Page", 1));
        if ($this->PageNumber <= 0) $this->PageNumber = 1;

        $this->article_title = new clsControl(ccsLabel, "article_title", "article_title", ccsText, "", CCGetRequestParam("article_title", ccsGet, NULL), $this);
        $this->category_name = new clsControl(ccsLabel, "category_name", "category_name", ccsText, "", CCGetRequestParam("category_name", ccsGet, NULL), $this);
        $this->article_desc = new clsControl(ccsLabel, "article_desc", "article_desc", ccsText, "", CCGetRequestParam("article_desc", ccsGet, NULL), $this);
        $this->article_desc->HTML = true;
    }
//End Class_Initialize Event

//Initialize Method @52-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @52-3238B033
    function Show()
    {
        $Tpl = & CCGetTemplate($this);
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urls_article_title"] = CCGetFromGet("s_article_title", NULL);
        $this->DataSource->Parameters["urls_category_id"] = CCGetFromGet("s_category_id", NULL);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();
        $this->HasRecord = $this->DataSource->has_next_record();
        $this->IsEmpty = ! $this->HasRecord;
        $this->Attributes->Show();

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        if(!$this->Visible) return;

        $GridBlock = "Grid " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $GridBlock;


        if (!$this->IsEmpty) {
            $this->ControlsVisible["article_title"] = $this->article_title->Visible;
            $this->ControlsVisible["category_name"] = $this->category_name->Visible;
            $this->ControlsVisible["article_desc"] = $this->article_desc->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                // Parse Separator
                if($this->RowNumber) {
                    $this->Attributes->Show();
                    $Tpl->parseto("Separator", true, "Row");
                }
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->article_title->SetValue($this->DataSource->article_title->GetValue());
                $this->category_name->SetValue($this->DataSource->category_name->GetValue());
                $this->article_desc->SetValue($this->DataSource->article_desc->GetValue());
                $this->Attributes->SetValue("rowNumber", $this->RowNumber);
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->article_title->Show();
                $this->category_name->Show();
                $this->article_desc->Show();
                $Tpl->block_path = $ParentPath . "/" . $GridBlock;
                $Tpl->parse("Row", true);
            }
        }
        else { // Show NoRecords block if no records are found
            $this->Attributes->Show();
            $Tpl->parse("NoRecords", false);
        }

        $errors = $this->GetErrors();
        if(strlen($errors))
        {
            $Tpl->replaceblock("", $errors);
            $Tpl->block_path = $ParentPath;
            return;
        }
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @52-A807DF93
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->article_title->Errors->ToString());
        $errors = ComposeStrings($errors, $this->category_name->Errors->ToString());
        $errors = ComposeStrings($errors, $this->article_desc->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End articles Class @52-FCB6E20C

class clsarticlesDataSource extends clsDBinternet {  //articlesDataSource Class @52-78E6A599

//DataSource Variables @52-DD0C1AD0
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $article_title;
    public $category_name;
    public $article_desc;
//End DataSource Variables

//DataSourceClass_Initialize Event @52-890C69CA
    function clsarticlesDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid articles";
        $this->Initialize();
        $this->article_title = new clsField("article_title", ccsText, "");
        
        $this->category_name = new clsField("category_name", ccsText, "");
        
        $this->article_desc = new clsField("article_desc", ccsText, "");
        

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @52-614BF412
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "article_id";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            "");
    }
//End SetOrder Method

//Prepare Method @52-BFBE4011
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_article_title", ccsText, "", "", $this->Parameters["urls_article_title"], "", false);
        $this->wp->AddParameter("2", "urls_category_id", ccsInteger, "", "", $this->Parameters["urls_category_id"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opContains, "article_title", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->wp->Criterion[2] = $this->wp->Operation(opEqual, "articles.category_id", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsInteger),false);
        $this->Where = $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]);
    }
//End Prepare Method

//Open Method @52-584292FC
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM articles LEFT JOIN event_categories ON\n\n" .
        "articles.category_id = event_categories.category_id";
        $this->SQL = "SELECT TOP {SqlParam_endRecord} article_id, article_title, articles.category_id AS articles_category_id, article_desc, date_add, date_end, event_categories.category_id AS event_categories_category_id,\n\n" .
        "category_name \n\n" .
        "FROM articles LEFT JOIN event_categories ON\n\n" .
        "articles.category_id = event_categories.category_id {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
        $this->MoveToPage($this->AbsolutePage);
    }
//End Open Method

//SetValues Method @52-33F5A75A
    function SetValues()
    {
        $this->article_title->SetDBValue($this->f("article_title"));
        $this->category_name->SetDBValue($this->f("category_name"));
        $this->article_desc->SetDBValue($this->f("article_desc"));
    }
//End SetValues Method

} //End articlesDataSource Class @52-FCB6E20C

//Include Page implementation @31-3DD2EFDC
include_once(RelativePath . "/Header.php");
//End Include Page implementation

//Include Page implementation @51-60DF5A1B
include_once(RelativePath . "/SearchArticles.php");
//End Include Page implementation

//Initialize Page @1-0C083BA4
// Variables
$FileName = "";
$Redirect = "";
$Tpl = "";
$TemplateFileName = "";
$BlockToParse = "";
$ComponentName = "";
$Attributes = "";
$PathToCurrentMasterPage = "";
$TemplatePathValue = "";

// Events;
$CCSEvents = "";
$CCSEventResult = "";
$MasterPage = null;
$TemplateSource = "";

$FileName = FileName;
$Redirect = "";
$TemplateFileName = "Articles.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$ContentType = "text/html";
$PathToRoot = "./";
//End Initialize Page

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-488B9477
$DBinternet = new clsDBinternet();
$MainPage->Connections["internet"] = & $DBinternet;
$Attributes = new clsAttributes("page:");
$Attributes->SetValue("pathToRoot", $PathToRoot);
$MainPage->Attributes = & $Attributes;

// Controls
$MasterPage = new clsMasterPage("/Designs/" . $CCProjectDesign . "/", "MasterPage", $MainPage);
$MasterPage->Attributes = $Attributes;
$MasterPage->Initialize();
$Head = new clsPanel("Head", $MainPage);
$Head->PlaceholderName = "Head";
$Content = new clsPanel("Content", $MainPage);
$Content->PlaceholderName = "Content";
$articles = new clsGridarticles("", $MainPage);
$Menu = new clsPanel("Menu", $MainPage);
$Menu->PlaceholderName = "Menu";
$Header = new clsHeader("", "Header", $MainPage);
$Header->Initialize();
$Sidebar1 = new clsPanel("Sidebar1", $MainPage);
$Sidebar1->PlaceholderName = "Sidebar1";
$Search = new clsSearchArticles("", "Search", $MainPage);
$Search->Initialize();
$MainPage->Head = & $Head;
$MainPage->Content = & $Content;
$MainPage->articles = & $articles;
$MainPage->Menu = & $Menu;
$MainPage->Header = & $Header;
$MainPage->Sidebar1 = & $Sidebar1;
$MainPage->Search = & $Search;
$Content->AddComponent("articles", $articles);
$Menu->AddComponent("Header", $Header);
$Sidebar1->AddComponent("Search", $Search);
$articles->Initialize();

$CCSEventResult = CCGetEvent($CCSEvents, "AfterInitialize", $MainPage);

if ($Charset) {
    header("Content-Type: " . $ContentType . "; charset=" . $Charset);
} else {
    header("Content-Type: " . $ContentType);
}
//End Initialize Objects

//Initialize HTML Template @1-0960A09D
$CCSEventResult = CCGetEvent($CCSEvents, "OnInitializeView", $MainPage);
$Tpl = new clsTemplate();
if (strlen($TemplateSource)) {
    $Tpl->LoadTemplateFromStr($TemplateSource, $BlockToParse, "CP1252");
} else {
    $Tpl->LoadTemplate(PathToCurrentPage . $TemplateFileName, $BlockToParse, "CP1252");
}
$Tpl->SetVar("CCS_PathToRoot", $PathToRoot);
$Tpl->SetVar("CCS_PathToMasterPage", RelativePath . $PathToCurrentMasterPage);
$Tpl->block_path = "/$BlockToParse";
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeShow", $MainPage);
$Attributes->SetValue("pathToRoot", "");
$Attributes->Show();
//End Initialize HTML Template

//Execute Components @1-DE18C840
$MasterPage->Operations();
$Search->Operations();
$Header->Operations();
//End Execute Components

//Go to destination page @1-A6AF71D6
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBinternet->close();
    header("Location: " . $Redirect);
    unset($articles);
    $Header->Class_Terminate();
    unset($Header);
    $Search->Class_Terminate();
    unset($Search);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-D7EA2B1C
$Head->Show();
$Content->Show();
$Menu->Show();
$Sidebar1->Show();
$MasterPage->Tpl->SetVar("Head", $Tpl->GetVar("Panel Head"));
$MasterPage->Tpl->SetVar("Content", $Tpl->GetVar("Panel Content"));
$MasterPage->Tpl->SetVar("Menu", $Tpl->GetVar("Panel Menu"));
$MasterPage->Tpl->SetVar("Sidebar1", $Tpl->GetVar("Panel Sidebar1"));
$MasterPage->Show();
if (!isset($main_block)) $main_block = $MasterPage->HTML;
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-6A07107B
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBinternet->close();
unset($MasterPage);
unset($articles);
$Header->Class_Terminate();
unset($Header);
$Search->Class_Terminate();
unset($Search);
unset($Tpl);
//End Unload Page


?>
