<?php
//Include Common Files @1-49503A54
define("RelativePath", "..");
define("PathToCurrentPage", "/Admin/");
define("FileName", "AdmProducts.php");
include_once(RelativePath . "/Common.php");
include_once(RelativePath . "/Template.php");
include_once(RelativePath . "/Sorter.php");
include_once(RelativePath . "/Navigator.php");
//End Include Common Files

//Master Page implementation @1-61A23584
include_once(RelativePath . "/Designs/BookStore/MasterPage.php");
//End Master Page implementation

class clsGridstore_products { //store_products class @56-CD4D1C2D

//Variables @56-A5F16E26

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
    public $Sorter_product_name;
    public $Sorter_category_name;
    public $Sorter_price;
    public $Sorter_is_recommended;
//End Variables

//Class_Initialize Event @56-92D9E1E5
    function clsGridstore_products($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "store_products";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid store_products";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsstore_productsDataSource($this);
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
        $this->SorterName = CCGetParam("store_productsOrder", "");
        $this->SorterDirection = CCGetParam("store_productsDir", "");

        $this->product_name = new clsControl(ccsLink, "product_name", "product_name", ccsText, "", CCGetRequestParam("product_name", ccsGet, NULL), $this);
        $this->product_name->Page = "AdmProductRecord.php";
        $this->category_name = new clsControl(ccsLabel, "category_name", "category_name", ccsText, "", CCGetRequestParam("category_name", ccsGet, NULL), $this);
        $this->price = new clsControl(ccsLabel, "price", "price", ccsFloat, array(False, 2, Null, Null, False, "", "", 1, True, ""), CCGetRequestParam("price", ccsGet, NULL), $this);
        $this->is_recommended = new clsControl(ccsLabel, "is_recommended", "is_recommended", ccsBoolean, array("Yes", "No", ""), CCGetRequestParam("is_recommended", ccsGet, NULL), $this);
        $this->Sorter_product_name = new clsSorter($this->ComponentName, "Sorter_product_name", $FileName, $this);
        $this->Sorter_category_name = new clsSorter($this->ComponentName, "Sorter_category_name", $FileName, $this);
        $this->Sorter_price = new clsSorter($this->ComponentName, "Sorter_price", $FileName, $this);
        $this->Sorter_is_recommended = new clsSorter($this->ComponentName, "Sorter_is_recommended", $FileName, $this);
        $this->Navigator = new clsNavigator($this->ComponentName, "Navigator", $FileName, 5, tpCentered, $this);
        $this->Navigator->PageSizes = array("1", "5", "10", "25", "50");
    }
//End Class_Initialize Event

//Initialize Method @56-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @56-2210101C
    function Show()
    {
        $Tpl = & CCGetTemplate($this);
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urls_product_name"] = CCGetFromGet("s_product_name", NULL);
        $this->DataSource->Parameters["urlproduct_category"] = CCGetFromGet("product_category", NULL);
        $this->DataSource->Parameters["urls_is_recommended"] = CCGetFromGet("s_is_recommended", NULL);
        $this->DataSource->Parameters["expr156"] = true;
        $this->DataSource->Parameters["expr157"] = true;

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
            $this->ControlsVisible["product_name"] = $this->product_name->Visible;
            $this->ControlsVisible["category_name"] = $this->category_name->Visible;
            $this->ControlsVisible["price"] = $this->price->Visible;
            $this->ControlsVisible["is_recommended"] = $this->is_recommended->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->product_name->SetValue($this->DataSource->product_name->GetValue());
                $this->product_name->Parameters = "";
                $this->product_name->Parameters = CCAddParam($this->product_name->Parameters, "product_id", $this->DataSource->f("product_id"));
                $this->category_name->SetValue($this->DataSource->category_name->GetValue());
                $this->price->SetValue($this->DataSource->price->GetValue());
                $this->is_recommended->SetValue($this->DataSource->is_recommended->GetValue());
                $this->Attributes->SetValue("rowNumber", $this->RowNumber);
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->product_name->Show();
                $this->category_name->Show();
                $this->price->Show();
                $this->is_recommended->Show();
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
        $this->Sorter_product_name->Show();
        $this->Sorter_category_name->Show();
        $this->Sorter_price->Show();
        $this->Sorter_is_recommended->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @56-B18B012A
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->product_name->Errors->ToString());
        $errors = ComposeStrings($errors, $this->category_name->Errors->ToString());
        $errors = ComposeStrings($errors, $this->price->Errors->ToString());
        $errors = ComposeStrings($errors, $this->is_recommended->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End store_products Class @56-FCB6E20C

class clsstore_productsDataSource extends clsDBInternetDB {  //store_productsDataSource Class @56-B5C31F8A

//DataSource Variables @56-A919E0CA
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $product_name;
    public $category_name;
    public $price;
    public $is_recommended;
//End DataSource Variables

//DataSourceClass_Initialize Event @56-73A57B31
    function clsstore_productsDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid store_products";
        $this->Initialize();
        $this->product_name = new clsField("product_name", ccsText, "");
        
        $this->category_name = new clsField("category_name", ccsText, "");
        
        $this->price = new clsField("price", ccsFloat, "");
        
        $this->is_recommended = new clsField("is_recommended", ccsBoolean, array(1, 0, ""));
        

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @56-AE03DD32
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "store_products.category_id";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_product_name" => array("product_name", ""), 
            "Sorter_category_name" => array("category_name", ""), 
            "Sorter_price" => array("price", ""), 
            "Sorter_is_recommended" => array("is_recommended", "")));
    }
//End SetOrder Method

//Prepare Method @56-D5BD7664
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_product_name", ccsText, "", "", $this->Parameters["urls_product_name"], "", false);
        $this->wp->AddParameter("2", "urlproduct_category", ccsInteger, "", "", $this->Parameters["urlproduct_category"], "", false);
        $this->wp->AddParameter("3", "urls_is_recommended", ccsInteger, "", "", $this->Parameters["urls_is_recommended"], "", false);
        $this->wp->AddParameter("4", "expr156", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), $this->BooleanFormat, $this->Parameters["expr156"], true, false);
        $this->wp->AddParameter("5", "expr157", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), $this->BooleanFormat, $this->Parameters["expr157"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opContains, "product_name", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->wp->Criterion[2] = $this->wp->Operation(opEqual, "store_products.category_id", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsInteger),false);
        $this->wp->Criterion[3] = $this->wp->Operation(opEqual, "is_recommended", $this->wp->GetDBValue("3"), $this->ToSQL($this->wp->GetDBValue("3"), ccsInteger),false);
        $this->wp->Criterion[4] = $this->wp->Operation(opEqual, "store_products.is_active", $this->wp->GetDBValue("4"), $this->ToSQL($this->wp->GetDBValue("4"), ccsBoolean),false);
        $this->wp->Criterion[5] = $this->wp->Operation(opEqual, "store_categories.category_is_active", $this->wp->GetDBValue("5"), $this->ToSQL($this->wp->GetDBValue("5"), ccsBoolean),false);
        $this->Where = $this->wp->opAND(
             false, $this->wp->opAND(
             false, $this->wp->opAND(
             false, $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]), 
             $this->wp->Criterion[3]), 
             $this->wp->Criterion[4]), 
             $this->wp->Criterion[5]);
    }
//End Prepare Method

//Open Method @56-87623387
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM store_products LEFT JOIN store_categories ON\n\n" .
        "store_products.category_id = store_categories.category_id";
        $this->SQL = "SELECT TOP {SqlParam_endRecord} category_name, product_name, price, is_recommended, product_id \n\n" .
        "FROM store_products LEFT JOIN store_categories ON\n\n" .
        "store_products.category_id = store_categories.category_id {SQL_Where} {SQL_OrderBy}";
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

//SetValues Method @56-3BC148B5
    function SetValues()
    {
        $this->product_name->SetDBValue($this->f("product_name"));
        $this->category_name->SetDBValue($this->f("category_name"));
        $this->price->SetDBValue(trim($this->f("price")));
        $this->is_recommended->SetDBValue(trim($this->f("is_recommended")));
    }
//End SetValues Method

} //End store_productsDataSource Class @56-FCB6E20C

class clsRecordSearch { //Search Class @19-39E8735D

//Variables @19-9E315808

    // Public variables
    public $ComponentType = "Record";
    public $ComponentName;
    public $Parent;
    public $HTMLFormAction;
    public $PressedButton;
    public $Errors;
    public $ErrorBlock;
    public $FormSubmitted;
    public $FormEnctype;
    public $Visible;
    public $IsEmpty;

    public $CCSEvents = "";
    public $CCSEventResult;

    public $RelativePath = "";

    public $InsertAllowed = false;
    public $UpdateAllowed = false;
    public $DeleteAllowed = false;
    public $ReadAllowed   = false;
    public $EditMode      = false;
    public $ds;
    public $DataSource;
    public $ValidatingControls;
    public $Controls;
    public $Attributes;

    // Class variables
//End Variables

//Class_Initialize Event @19-00D1F897
    function clsRecordSearch($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record Search/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "Search";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = explode(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_product_name = new clsControl(ccsTextBox, "s_product_name", "s_product_name", ccsText, "", CCGetRequestParam("s_product_name", $Method, NULL), $this);
            $this->product_category = new clsControl(ccsListBox, "product_category", "product_category", ccsText, "", CCGetRequestParam("product_category", $Method, NULL), $this);
            $this->product_category->DSType = dsTable;
            $this->product_category->DataSource = new clsDBInternetDB();
            $this->product_category->ds = & $this->product_category->DataSource;
            $this->product_category->DataSource->SQL = "SELECT *, category_id \n" .
"FROM store_categories {SQL_Where} {SQL_OrderBy}";
            list($this->product_category->BoundColumn, $this->product_category->TextColumn, $this->product_category->DBFormat) = array("category_id", "category_name", "");
            $this->product_category->DataSource->Parameters["expr131"] = true;
            $this->product_category->DataSource->wp = new clsSQLParameters();
            $this->product_category->DataSource->wp->AddParameter("1", "expr131", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), $this->product_category->DataSource->BooleanFormat, $this->product_category->DataSource->Parameters["expr131"], true, false);
            $this->product_category->DataSource->wp->Criterion[1] = $this->product_category->DataSource->wp->Operation(opEqual, "category_is_active", $this->product_category->DataSource->wp->GetDBValue("1"), $this->product_category->DataSource->ToSQL($this->product_category->DataSource->wp->GetDBValue("1"), ccsBoolean),false);
            $this->product_category->DataSource->Where = 
                 $this->product_category->DataSource->wp->Criterion[1];
            $this->s_is_recommended = new clsControl(ccsListBox, "s_is_recommended", "s_is_recommended", ccsInteger, "", CCGetRequestParam("s_is_recommended", $Method, NULL), $this);
            $this->s_is_recommended->DSType = dsListOfValues;
            $this->s_is_recommended->Values = array(array("0", "No"), array("1", "Yes"));
            $this->Search = new clsButton("Search", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @19-8EC30FF5
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_product_name->Validate() && $Validation);
        $Validation = ($this->product_category->Validate() && $Validation);
        $Validation = ($this->s_is_recommended->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_product_name->Errors->Count() == 0);
        $Validation =  $Validation && ($this->product_category->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_is_recommended->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @19-FCA21D4E
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_product_name->Errors->Count());
        $errors = ($errors || $this->product_category->Errors->Count());
        $errors = ($errors || $this->s_is_recommended->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @19-DD28CC45
    function Operation()
    {
        if(!$this->Visible)
            return;

        global $Redirect;
        global $FileName;

        if(!$this->FormSubmitted) {
            return;
        }

        if($this->FormSubmitted) {
            $this->PressedButton = "Search";
            if($this->Search->Pressed) {
                $this->PressedButton = "Search";
            }
        }
        $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->Validate()) {
            if($this->PressedButton == "Search") {
                $Redirect = $FileName . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Search", "Search_x", "Search_y")), CCGetQueryString("QueryString", array("s_product_name", "product_category", "s_is_recommended", "ccsForm")));
                if(!CCGetEvent($this->Search->CCSEvents, "OnClick", $this->Search)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @19-13D5BFFB
    function Show()
    {
        global $CCSUseAmp;
        $Tpl = & CCGetTemplate($this);
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->product_category->Prepare();
        $this->s_is_recommended->Prepare();

        $RecordBlock = "Record " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $RecordBlock;
        $this->EditMode = $this->EditMode && $this->ReadAllowed;
        if (!$this->FormSubmitted) {
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->s_product_name->Errors->ToString());
            $Error = ComposeStrings($Error, $this->product_category->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_is_recommended->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Errors->ToString());
            $Tpl->SetVar("Error", $Error);
            $Tpl->Parse("Error", false);
        }
        $CCSForm = $this->EditMode ? $this->ComponentName . ":" . "Edit" : $this->ComponentName;
        $this->HTMLFormAction = $FileName . "?" . CCAddParam(CCGetQueryString("QueryString", ""), "ccsForm", $CCSForm);
        $Tpl->SetVar("Action", !$CCSUseAmp ? $this->HTMLFormAction : str_replace("&", "&amp;", $this->HTMLFormAction));
        $Tpl->SetVar("HTMLFormName", $this->ComponentName);
        $Tpl->SetVar("HTMLFormEnctype", $this->FormEnctype);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        $this->Attributes->Show();
        if(!$this->Visible) {
            $Tpl->block_path = $ParentPath;
            return;
        }

        $this->s_product_name->Show();
        $this->product_category->Show();
        $this->s_is_recommended->Show();
        $this->Search->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End Search Class @19-FCB6E20C

//Include Page implementation @54-1A7B89D7
include_once(RelativePath . "/Admin/AdmHeader.php");
//End Include Page implementation

//Include Page implementation @55-594D0A6B
include_once(RelativePath . "/Admin/AdmMenu.php");
//End Include Page implementation

//Initialize Page @1-2E5A0F7A
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
$TemplateFileName = "AdmProducts.html";
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

//Initialize Objects @1-27A1DC03
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
$Link1->Page = "AdmProductRecord.php";
$store_products = new clsGridstore_products("", $MainPage);
$Search = new clsRecordSearch("", $MainPage);
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
$MainPage->store_products = & $store_products;
$MainPage->Search = & $Search;
$MainPage->Menu = & $Menu;
$MainPage->AdmHeader = & $AdmHeader;
$MainPage->Sidebar = & $Sidebar;
$MainPage->AdmMenu = & $AdmMenu;
$Content->AddComponent("store_products", $store_products);
$Content->AddComponent("Search", $Search);
$Content->AddComponent("Link1", $Link1);
$Menu->AddComponent("AdmHeader", $AdmHeader);
$Sidebar->AddComponent("AdmMenu", $AdmMenu);
$store_products->Initialize();

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

//Execute Components @1-49096C1A
$MasterPage->Operations();
$AdmMenu->Operations();
$AdmHeader->Operations();
$Search->Operation();
//End Execute Components

//Go to destination page @1-A99D9804
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBInternetDB->close();
    header("Location: " . $Redirect);
    unset($store_products);
    unset($Search);
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

//Unload Page @1-4541EEFA
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBInternetDB->close();
unset($MasterPage);
unset($store_products);
unset($Search);
$AdmHeader->Class_Terminate();
unset($AdmHeader);
$AdmMenu->Class_Terminate();
unset($AdmMenu);
unset($Tpl);
//End Unload Page


?>
