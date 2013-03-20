<?php
//Include Common Files @1-C78C8929
define("RelativePath", ".");
define("PathToCurrentPage", "/");
define("FileName", "Officers.php");
include_once(RelativePath . "/Common.php");
include_once(RelativePath . "/Template.php");
include_once(RelativePath . "/Sorter.php");
include_once(RelativePath . "/Navigator.php");
//End Include Common Files

//Master Page implementation @1-DB06AD2E
include_once(RelativePath . "/Designs/FarmSong/MasterPage.php");
//End Master Page implementation

class clsGridofficers { //officers class @23-63E017DA

//Variables @23-AD24F47A

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
    public $Sorter_officer_name;
    public $Sorter_officer_position;
    public $Sorter_officer_email;
//End Variables

//Class_Initialize Event @23-41F6DAC5
    function clsGridofficers($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "officers";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid officers";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsofficersDataSource($this);
        $this->ds = & $this->DataSource;
        $this->PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(!is_numeric($this->PageSize) || !strlen($this->PageSize))
            $this->PageSize = 10;
        else
            $this->PageSize = intval($this->PageSize);
        if ($this->PageSize > 100)
            $this->PageSize = 100;
        if($this->PageSize == 0)
            $this->Errors->addError("<p>Form: Grid " . $this->ComponentName . "<BR>Error: (CCS06) Invalid page size.</p>");
        $this->PageNumber = intval(CCGetParam($this->ComponentName . "Page", 1));
        if ($this->PageNumber <= 0) $this->PageNumber = 1;
        $this->SorterName = CCGetParam("officersOrder", "");
        $this->SorterDirection = CCGetParam("officersDir", "");

        $this->officer_name = new clsControl(ccsLabel, "officer_name", "officer_name", ccsText, "", CCGetRequestParam("officer_name", ccsGet, NULL), $this);
        $this->officer_position = new clsControl(ccsLabel, "officer_position", "officer_position", ccsText, "", CCGetRequestParam("officer_position", ccsGet, NULL), $this);
        $this->officer_email = new clsControl(ccsLink, "officer_email", "officer_email", ccsText, "", CCGetRequestParam("officer_email", ccsGet, NULL), $this);
        $this->Sorter_officer_name = new clsSorter($this->ComponentName, "Sorter_officer_name", $FileName, $this);
        $this->Sorter_officer_position = new clsSorter($this->ComponentName, "Sorter_officer_position", $FileName, $this);
        $this->Sorter_officer_email = new clsSorter($this->ComponentName, "Sorter_officer_email", $FileName, $this);
    }
//End Class_Initialize Event

//Initialize Method @23-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @23-8BE53380
    function Show()
    {
        $Tpl = & CCGetTemplate($this);
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urls_keyword"] = CCGetFromGet("s_keyword", NULL);

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
            $this->ControlsVisible["officer_name"] = $this->officer_name->Visible;
            $this->ControlsVisible["officer_position"] = $this->officer_position->Visible;
            $this->ControlsVisible["officer_email"] = $this->officer_email->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->officer_name->SetValue($this->DataSource->officer_name->GetValue());
                $this->officer_position->SetValue($this->DataSource->officer_position->GetValue());
                $this->officer_email->SetValue($this->DataSource->officer_email->GetValue());
                $this->officer_email->Page = $this->DataSource->f("officer_email");
                $this->Attributes->SetValue("rowNumber", $this->RowNumber);
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->officer_name->Show();
                $this->officer_position->Show();
                $this->officer_email->Show();
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
        $this->Sorter_officer_name->Show();
        $this->Sorter_officer_position->Show();
        $this->Sorter_officer_email->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @23-B48F020B
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->officer_name->Errors->ToString());
        $errors = ComposeStrings($errors, $this->officer_position->Errors->ToString());
        $errors = ComposeStrings($errors, $this->officer_email->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End officers Class @23-FCB6E20C

class clsofficersDataSource extends clsDBinternet {  //officersDataSource Class @23-C92298ED

//DataSource Variables @23-E57221D5
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $officer_name;
    public $officer_position;
    public $officer_email;
//End DataSource Variables

//DataSourceClass_Initialize Event @23-BE931654
    function clsofficersDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid officers";
        $this->Initialize();
        $this->officer_name = new clsField("officer_name", ccsText, "");
        
        $this->officer_position = new clsField("officer_position", ccsText, "");
        
        $this->officer_email = new clsField("officer_email", ccsText, "");
        

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @23-FA879240
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "officer_id";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_officer_name" => array("officer_name", ""), 
            "Sorter_officer_position" => array("officer_position", ""), 
            "Sorter_officer_email" => array("officer_email", "")));
    }
//End SetOrder Method

//Prepare Method @23-064BA6B8
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_keyword", ccsText, "", "", $this->Parameters["urls_keyword"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opContains, "officer_name", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @23-E10A56DD
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM officers";
        $this->SQL = "SELECT TOP {SqlParam_endRecord} *, officer_id \n\n" .
        "FROM officers {SQL_Where} {SQL_OrderBy}";
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

//SetValues Method @23-9AA9C08E
    function SetValues()
    {
        $this->officer_name->SetDBValue($this->f("officer_name"));
        $this->officer_position->SetDBValue($this->f("officer_position"));
        $this->officer_email->SetDBValue($this->f("officer_email"));
    }
//End SetValues Method

} //End officersDataSource Class @23-FCB6E20C

//Include Page implementation @19-3DD2EFDC
include_once(RelativePath . "/Header.php");
//End Include Page implementation

//Include Page implementation @35-DACD5363
include_once(RelativePath . "/Search.php");
//End Include Page implementation

//Initialize Page @1-1EBACD45
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
$TemplateFileName = "Officers.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$ContentType = "text/html";
$PathToRoot = "./";
//End Initialize Page

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-DDE0547C
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
$officers = new clsGridofficers("", $MainPage);
$Menu = new clsPanel("Menu", $MainPage);
$Menu->PlaceholderName = "Menu";
$Header = new clsHeader("", "Header", $MainPage);
$Header->Initialize();
$Sidebar1 = new clsPanel("Sidebar1", $MainPage);
$Sidebar1->PlaceholderName = "Sidebar1";
$Search = new clsSearch("", "Search", $MainPage);
$Search->Initialize();
$MainPage->Head = & $Head;
$MainPage->Content = & $Content;
$MainPage->officers = & $officers;
$MainPage->Menu = & $Menu;
$MainPage->Header = & $Header;
$MainPage->Sidebar1 = & $Sidebar1;
$MainPage->Search = & $Search;
$Content->AddComponent("officers", $officers);
$Menu->AddComponent("Header", $Header);
$Sidebar1->AddComponent("Search", $Search);
$officers->Initialize();

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

//Go to destination page @1-50A4E211
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBinternet->close();
    header("Location: " . $Redirect);
    unset($officers);
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

//Unload Page @1-BD187063
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBinternet->close();
unset($MasterPage);
unset($officers);
$Header->Class_Terminate();
unset($Header);
$Search->Class_Terminate();
unset($Search);
unset($Tpl);
//End Unload Page


?>
