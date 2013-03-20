<?php
//Include Common Files @1-110EBE2D
define("RelativePath", "..");
define("PathToCurrentPage", "/Admin/");
define("FileName", "AdmEditProducts.php");
include_once(RelativePath . "/Common.php");
include_once(RelativePath . "/Template.php");
include_once(RelativePath . "/Sorter.php");
include_once(RelativePath . "/Navigator.php");
//End Include Common Files

//Master Page implementation @1-61A23584
include_once(RelativePath . "/Designs/BookStore/MasterPage.php");
//End Master Page implementation

class clsGridstore_editorial { //store_editorial class @78-A8B4514B

//Variables @78-BC919039

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
    public $Sorter_article_title;
    public $Sorter_category_name;
    public $Sorter_product_name;
//End Variables

//Class_Initialize Event @78-25868D59
    function clsGridstore_editorial($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "store_editorial";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid store_editorial";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsstore_editorialDataSource($this);
        $this->ds = & $this->DataSource;
        $this->PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(!is_numeric($this->PageSize) || !strlen($this->PageSize))
            $this->PageSize = 20;
        else
            $this->PageSize = intval($this->PageSize);
        if ($this->PageSize > 100)
            $this->PageSize = 100;
        if($this->PageSize == 0)
            $this->Errors->addError("<p>Form: Grid " . $this->ComponentName . "<BR>Error: (CCS06) Invalid page size.</p>");
        $this->PageNumber = intval(CCGetParam($this->ComponentName . "Page", 1));
        if ($this->PageNumber <= 0) $this->PageNumber = 1;
        $this->SorterName = CCGetParam("store_editorialOrder", "");
        $this->SorterDirection = CCGetParam("store_editorialDir", "");

        $this->article_title = new clsControl(ccsLink, "article_title", "article_title", ccsText, "", CCGetRequestParam("article_title", ccsGet, NULL), $this);
        $this->article_title->HTML = true;
        $this->article_title->Page = "AdmEditProductRecord.php";
        $this->category_name = new clsControl(ccsLabel, "category_name", "category_name", ccsText, "", CCGetRequestParam("category_name", ccsGet, NULL), $this);
        $this->product_name = new clsControl(ccsLabel, "product_name", "product_name", ccsText, "", CCGetRequestParam("product_name", ccsGet, NULL), $this);
        $this->Sorter_article_title = new clsSorter($this->ComponentName, "Sorter_article_title", $FileName, $this);
        $this->Sorter_category_name = new clsSorter($this->ComponentName, "Sorter_category_name", $FileName, $this);
        $this->Sorter_product_name = new clsSorter($this->ComponentName, "Sorter_product_name", $FileName, $this);
        $this->Navigator = new clsNavigator($this->ComponentName, "Navigator", $FileName, 5, tpCentered, $this);
        $this->Navigator->PageSizes = array("1", "5", "10", "25", "50");
    }
//End Class_Initialize Event

//Initialize Method @78-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @78-AD354B39
    function Show()
    {
        $Tpl = & CCGetTemplate($this);
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["expr112"] = 1;

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
            $this->ControlsVisible["product_name"] = $this->product_name->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->article_title->SetValue($this->DataSource->article_title->GetValue());
                $this->article_title->Parameters = "";
                $this->article_title->Parameters = CCAddParam($this->article_title->Parameters, "article_id", $this->DataSource->f("article_id"));
                $this->category_name->SetValue($this->DataSource->category_name->GetValue());
                $this->product_name->SetValue($this->DataSource->product_name->GetValue());
                $this->Attributes->SetValue("rowNumber", $this->RowNumber);
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->article_title->Show();
                $this->category_name->Show();
                $this->product_name->Show();
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
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        $this->Navigator->PageSize = $this->PageSize;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        if (($this->Navigator->TotalPages <= 1 && $this->Navigator->PageNumber == 1) || $this->Navigator->PageSize == "") {
            $this->Navigator->Visible = false;
        }
        $this->Sorter_article_title->Show();
        $this->Sorter_category_name->Show();
        $this->Sorter_product_name->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @78-46C51275
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->article_title->Errors->ToString());
        $errors = ComposeStrings($errors, $this->category_name->Errors->ToString());
        $errors = ComposeStrings($errors, $this->product_name->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End store_editorial Class @78-FCB6E20C

class clsstore_editorialDataSource extends clsDBInternetDB {  //store_editorialDataSource Class @78-21D26EE3

//DataSource Variables @78-8ED7B597
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
    public $product_name;
//End DataSource Variables

//DataSourceClass_Initialize Event @78-F8B5C697
    function clsstore_editorialDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid store_editorial";
        $this->Initialize();
        $this->article_title = new clsField("article_title", ccsText, "");
        
        $this->category_name = new clsField("category_name", ccsText, "");
        
        $this->product_name = new clsField("product_name", ccsText, "");
        

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @78-F1FA0CBD
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "editorial_cat_id";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_article_title" => array("article_title", ""), 
            "Sorter_category_name" => array("category_name", ""), 
            "Sorter_product_name" => array("product_name", "")));
    }
//End SetOrder Method

//Prepare Method @78-DE8DF4A0
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "expr112", ccsInteger, "", "", $this->Parameters["expr112"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "store_editorial_products.is_active", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsInteger),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @78-BFA0F9F6
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM (store_editorial_products LEFT JOIN store_editorial_categories ON\n\n" .
        "store_editorial_products.editorial_cat_id = store_editorial_categories.category_id) LEFT JOIN store_products ON\n\n" .
        "store_editorial_products.product_id = store_products.product_id";
        $this->SQL = "SELECT TOP {SqlParam_endRecord} article_id, editorial_cat_id, article_title, store_editorial_products.product_id AS store_editorial_products_product_id, store_products.product_id AS store_products_product_id,\n\n" .
        "store_products.category_id AS store_products_category_id, product_name, price, image_url, category_name, store_editorial_categories.category_id AS store_editorial_categories_category_id \n\n" .
        "FROM (store_editorial_products LEFT JOIN store_editorial_categories ON\n\n" .
        "store_editorial_products.editorial_cat_id = store_editorial_categories.category_id) LEFT JOIN store_products ON\n\n" .
        "store_editorial_products.product_id = store_products.product_id {SQL_Where} {SQL_OrderBy}";
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

//SetValues Method @78-9178E9FD
    function SetValues()
    {
        $this->article_title->SetDBValue($this->f("article_title"));
        $this->category_name->SetDBValue($this->f("category_name"));
        $this->product_name->SetDBValue($this->f("product_name"));
    }
//End SetValues Method

} //End store_editorialDataSource Class @78-FCB6E20C

//Include Page implementation @76-1A7B89D7
include_once(RelativePath . "/Admin/AdmHeader.php");
//End Include Page implementation

//Include Page implementation @77-594D0A6B
include_once(RelativePath . "/Admin/AdmMenu.php");
//End Include Page implementation

//Initialize Page @1-9A96D55C
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
$TemplateFileName = "AdmEditProducts.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$ContentType = "text/html";
$PathToRoot = "../";
//End Initialize Page

//Authenticate User @1-ED7CB2E0
CCSecurityRedirect("2", "");
//End Authenticate User

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-165BC4F0
$DBInternetDB = new clsDBInternetDB();
$MainPage->Connections["InternetDB"] = & $DBInternetDB;
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
$Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", ccsGet, NULL), $MainPage);
$Link1->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
$Link1->Page = "AdmEditProductRecord.php";
$store_editorial = new clsGridstore_editorial("", $MainPage);
$Menu = new clsPanel("Menu", $MainPage);
$Menu->PlaceholderName = "Menu";
$AdmHeader = new clsAdmHeader("", "AdmHeader", $MainPage);
$AdmHeader->Initialize();
$Sidebar = new clsPanel("Sidebar", $MainPage);
$Sidebar->PlaceholderName = "Sidebar1";
$AdmMenu = new clsAdmMenu("", "AdmMenu", $MainPage);
$AdmMenu->Initialize();
$MainPage->Head = & $Head;
$MainPage->Content = & $Content;
$MainPage->Link1 = & $Link1;
$MainPage->store_editorial = & $store_editorial;
$MainPage->Menu = & $Menu;
$MainPage->AdmHeader = & $AdmHeader;
$MainPage->Sidebar = & $Sidebar;
$MainPage->AdmMenu = & $AdmMenu;
$Content->AddComponent("store_editorial", $store_editorial);
$Content->AddComponent("Link1", $Link1);
$Menu->AddComponent("AdmHeader", $AdmHeader);
$Sidebar->AddComponent("AdmMenu", $AdmMenu);
$store_editorial->Initialize();

$CCSEventResult = CCGetEvent($CCSEvents, "AfterInitialize", $MainPage);

if ($Charset) {
    header("Content-Type: " . $ContentType . "; charset=" . $Charset);
} else {
    header("Content-Type: " . $ContentType);
}
//End Initialize Objects

//Initialize HTML Template @1-073C030C
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
$Attributes->SetValue("pathToRoot", "../");
$Attributes->Show();
//End Initialize HTML Template

//Execute Components @1-39166E9C
$MasterPage->Operations();
$AdmMenu->Operations();
$AdmHeader->Operations();
//End Execute Components

//Go to destination page @1-59DAD6A5
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBInternetDB->close();
    header("Location: " . $Redirect);
    unset($store_editorial);
    $AdmHeader->Class_Terminate();
    unset($AdmHeader);
    $AdmMenu->Class_Terminate();
    unset($AdmMenu);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-15DE59F8
$Head->Show();
$Content->Show();
$Menu->Show();
$Sidebar->Show();
$MasterPage->Tpl->SetVar("Head", $Tpl->GetVar("Panel Head"));
$MasterPage->Tpl->SetVar("Content", $Tpl->GetVar("Panel Content"));
$MasterPage->Tpl->SetVar("Menu", $Tpl->GetVar("Panel Menu"));
$MasterPage->Tpl->SetVar("Sidebar1", $Tpl->GetVar("Panel Sidebar"));
$MasterPage->Show();
if (!isset($main_block)) $main_block = $MasterPage->HTML;
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-6706E62A
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBInternetDB->close();
unset($MasterPage);
unset($store_editorial);
$AdmHeader->Class_Terminate();
unset($AdmHeader);
$AdmMenu->Class_Terminate();
unset($AdmMenu);
unset($Tpl);
//End Unload Page


?>
