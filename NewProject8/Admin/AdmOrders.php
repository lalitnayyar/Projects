<?php
//Include Common Files @1-7097F218
define("RelativePath", "..");
define("PathToCurrentPage", "/Admin/");
define("FileName", "AdmOrders.php");
include_once(RelativePath . "/Common.php");
include_once(RelativePath . "/Template.php");
include_once(RelativePath . "/Sorter.php");
include_once(RelativePath . "/Navigator.php");
//End Include Common Files

//Master Page implementation @1-61A23584
include_once(RelativePath . "/Designs/BookStore/MasterPage.php");
//End Master Page implementation

class clsRecordOrders_Search { //Orders_Search Class @27-C9C58555

//Variables @27-9E315808

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

//Class_Initialize Event @27-462B2C81
    function clsRecordOrders_Search($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record Orders_Search/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "Orders_Search";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = explode(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->begin_date = new clsControl(ccsTextBox, "begin_date", "Begin Date", ccsDate, array("mm", "/", "dd", "/", "yy"), CCGetRequestParam("begin_date", $Method, NULL), $this);
            $this->end_date = new clsControl(ccsTextBox, "end_date", "End Date", ccsDate, array("mm", "/", "dd", "/", "yy"), CCGetRequestParam("end_date", $Method, NULL), $this);
            $this->order_status = new clsControl(ccsListBox, "order_status", "order_status", ccsText, "", CCGetRequestParam("order_status", $Method, NULL), $this);
            $this->order_status->DSType = dsTable;
            $this->order_status->DataSource = new clsDBInternetDB();
            $this->order_status->ds = & $this->order_status->DataSource;
            $this->order_status->DataSource->SQL = "SELECT * \n" .
"FROM store_statuses {SQL_Where} {SQL_OrderBy}";
            list($this->order_status->BoundColumn, $this->order_status->TextColumn, $this->order_status->DBFormat) = array("status_id", "status_name", "");
            $this->Search = new clsButton("Search", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @27-A67EA1C0
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->begin_date->Validate() && $Validation);
        $Validation = ($this->end_date->Validate() && $Validation);
        $Validation = ($this->order_status->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->begin_date->Errors->Count() == 0);
        $Validation =  $Validation && ($this->end_date->Errors->Count() == 0);
        $Validation =  $Validation && ($this->order_status->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @27-C22EB7C1
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->begin_date->Errors->Count());
        $errors = ($errors || $this->end_date->Errors->Count());
        $errors = ($errors || $this->order_status->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @27-A61446AA
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
                $Redirect = $FileName . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Search", "Search_x", "Search_y")), CCGetQueryString("QueryString", array("begin_date", "end_date", "order_status", "ccsForm")));
                if(!CCGetEvent($this->Search->CCSEvents, "OnClick", $this->Search)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @27-9BFE9E91
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

        $this->order_status->Prepare();

        $RecordBlock = "Record " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $RecordBlock;
        $this->EditMode = $this->EditMode && $this->ReadAllowed;
        if (!$this->FormSubmitted) {
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->begin_date->Errors->ToString());
            $Error = ComposeStrings($Error, $this->end_date->Errors->ToString());
            $Error = ComposeStrings($Error, $this->order_status->Errors->ToString());
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

        $this->begin_date->Show();
        $this->end_date->Show();
        $this->order_status->Show();
        $this->Search->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End Orders_Search Class @27-FCB6E20C

class clsGridusers_store_statuses_stor { //users_store_statuses_stor class @58-0BB54E78

//Variables @58-3F4E5EB2

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
    public $Sorter_order_date;
    public $Sorter_user_login;
    public $Sorter_status_name;
    public $Sorter_total;
//End Variables

//Class_Initialize Event @58-C47F135C
    function clsGridusers_store_statuses_stor($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "users_store_statuses_stor";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid users_store_statuses_stor";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsusers_store_statuses_storDataSource($this);
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
        $this->SorterName = CCGetParam("users_store_statuses_storOrder", "");
        $this->SorterDirection = CCGetParam("users_store_statuses_storDir", "");

        $this->order_id = new clsControl(ccsLink, "order_id", "order_id", ccsText, "", CCGetRequestParam("order_id", ccsGet, NULL), $this);
        $this->order_id->Page = "AdmOrderItems.php";
        $this->order_date = new clsControl(ccsLabel, "order_date", "order_date", ccsDate, $DefaultDateFormat, CCGetRequestParam("order_date", ccsGet, NULL), $this);
        $this->user_login = new clsControl(ccsLabel, "user_login", "user_login", ccsText, "", CCGetRequestParam("user_login", ccsGet, NULL), $this);
        $this->status_name = new clsControl(ccsLabel, "status_name", "status_name", ccsText, "", CCGetRequestParam("status_name", ccsGet, NULL), $this);
        $this->total = new clsControl(ccsLabel, "total", "total", ccsText, "", CCGetRequestParam("total", ccsGet, NULL), $this);
        $this->Sorter_order_date = new clsSorter($this->ComponentName, "Sorter_order_date", $FileName, $this);
        $this->Sorter_user_login = new clsSorter($this->ComponentName, "Sorter_user_login", $FileName, $this);
        $this->Sorter_status_name = new clsSorter($this->ComponentName, "Sorter_status_name", $FileName, $this);
        $this->Sorter_total = new clsSorter($this->ComponentName, "Sorter_total", $FileName, $this);
        $this->Navigator = new clsNavigator($this->ComponentName, "Navigator", $FileName, 5, tpCentered, $this);
        $this->Navigator->PageSizes = array("1", "5", "10", "25", "50");
        $this->Records_Found = new clsControl(ccsLabel, "Records_Found", "Records_Found", ccsText, "", CCGetRequestParam("Records_Found", ccsGet, NULL), $this);
    }
//End Class_Initialize Event

//Initialize Method @58-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @58-8D34657B
    function Show()
    {
        $Tpl = & CCGetTemplate($this);
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urlbegin_date"] = CCGetFromGet("begin_date", NULL);
        $this->DataSource->Parameters["urlend_date"] = CCGetFromGet("end_date", NULL);
        $this->DataSource->Parameters["urlorder_status"] = CCGetFromGet("order_status", NULL);

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
            $this->ControlsVisible["order_id"] = $this->order_id->Visible;
            $this->ControlsVisible["order_date"] = $this->order_date->Visible;
            $this->ControlsVisible["user_login"] = $this->user_login->Visible;
            $this->ControlsVisible["status_name"] = $this->status_name->Visible;
            $this->ControlsVisible["total"] = $this->total->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->order_id->SetValue($this->DataSource->order_id->GetValue());
                $this->order_id->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->order_id->Parameters = CCAddParam($this->order_id->Parameters, "order_id", $this->DataSource->f("order_id"));
                $this->order_date->SetValue($this->DataSource->order_date->GetValue());
                $this->user_login->SetValue($this->DataSource->user_login->GetValue());
                $this->status_name->SetValue($this->DataSource->status_name->GetValue());
                $this->total->SetValue($this->DataSource->total->GetValue());
                $this->Attributes->SetValue("rowNumber", $this->RowNumber);
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->order_id->Show();
                $this->order_date->Show();
                $this->user_login->Show();
                $this->status_name->Show();
                $this->total->Show();
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
        $this->Sorter_order_date->Show();
        $this->Sorter_user_login->Show();
        $this->Sorter_status_name->Show();
        $this->Sorter_total->Show();
        $this->Navigator->Show();
        $this->Records_Found->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @58-FC173E50
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->order_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->order_date->Errors->ToString());
        $errors = ComposeStrings($errors, $this->user_login->Errors->ToString());
        $errors = ComposeStrings($errors, $this->status_name->Errors->ToString());
        $errors = ComposeStrings($errors, $this->total->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End users_store_statuses_stor Class @58-FCB6E20C

class clsusers_store_statuses_storDataSource extends clsDBInternetDB {  //users_store_statuses_storDataSource Class @58-CCA59862

//DataSource Variables @58-8DD46C9F
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $order_id;
    public $order_date;
    public $user_login;
    public $status_name;
    public $total;
//End DataSource Variables

//DataSourceClass_Initialize Event @58-48C9EEBD
    function clsusers_store_statuses_storDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid users_store_statuses_stor";
        $this->Initialize();
        $this->order_id = new clsField("order_id", ccsText, "");
        
        $this->order_date = new clsField("order_date", ccsDate, $this->DateFormat);
        
        $this->user_login = new clsField("user_login", ccsText, "");
        
        $this->status_name = new clsField("status_name", ccsText, "");
        
        $this->total = new clsField("total", ccsText, "");
        

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @58-87857212
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "order_date desc";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_order_date" => array("order_date", ""), 
            "Sorter_user_login" => array("user_login", ""), 
            "Sorter_status_name" => array("status_name", ""), 
            "Sorter_total" => array("total", "")));
    }
//End SetOrder Method

//Prepare Method @58-24ADF650
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urlbegin_date", ccsDate, array("mm", "/", "dd", "/", "yy"), $this->DateFormat, $this->Parameters["urlbegin_date"], "", false);
        $this->wp->AddParameter("2", "urlend_date", ccsDate, array("mm", "/", "dd", "/", "yy"), $this->DateFormat, $this->Parameters["urlend_date"], "", false);
        $this->wp->AddParameter("3", "urlorder_status", ccsInteger, "", "", $this->Parameters["urlorder_status"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opGreaterThan, "store_orders.order_date", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsDate),false);
        $this->wp->Criterion[2] = $this->wp->Operation(opLessThan, "store_orders.order_date", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsDate),false);
        $this->wp->Criterion[3] = $this->wp->Operation(opEqual, "store_statuses.status_id", $this->wp->GetDBValue("3"), $this->ToSQL($this->wp->GetDBValue("3"), ccsInteger),false);
        $this->Where = $this->wp->opAND(
             false, $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]), 
             $this->wp->Criterion[3]);
    }
//End Prepare Method

//Open Method @58-EAA1E8A2
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM (store_orders LEFT JOIN store_statuses ON\n\n" .
        "store_orders.order_status_id = store_statuses.status_id) LEFT JOIN users ON\n\n" .
        "store_orders.user_id = users.user_id";
        $this->SQL = "SELECT TOP {SqlParam_endRecord} * \n\n" .
        "FROM (store_orders LEFT JOIN store_statuses ON\n\n" .
        "store_orders.order_status_id = store_statuses.status_id) LEFT JOIN users ON\n\n" .
        "store_orders.user_id = users.user_id {SQL_Where} {SQL_OrderBy}";
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

//SetValues Method @58-07B9E37B
    function SetValues()
    {
        $this->order_id->SetDBValue($this->f("order_id"));
        $this->order_date->SetDBValue(trim($this->f("order_date")));
        $this->user_login->SetDBValue($this->f("user_login"));
        $this->status_name->SetDBValue($this->f("status_name"));
        $this->total->SetDBValue($this->f("total"));
    }
//End SetValues Method

} //End users_store_statuses_storDataSource Class @58-FCB6E20C

//Include Page implementation @56-1A7B89D7
include_once(RelativePath . "/Admin/AdmHeader.php");
//End Include Page implementation

//Include Page implementation @57-594D0A6B
include_once(RelativePath . "/Admin/AdmMenu.php");
//End Include Page implementation

//Initialize Page @1-039F27C3
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
$TemplateFileName = "AdmOrders.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$ContentType = "text/html";
$PathToRoot = "../";
//End Initialize Page

//Authenticate User @1-ED7CB2E0
CCSecurityRedirect("2", "");
//End Authenticate User

//Include events file @1-9FA41233
include_once("./AdmOrders_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-9417ABBC
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
$Orders_Search = new clsRecordOrders_Search("", $MainPage);
$users_store_statuses_stor = new clsGridusers_store_statuses_stor("", $MainPage);
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
$MainPage->Orders_Search = & $Orders_Search;
$MainPage->users_store_statuses_stor = & $users_store_statuses_stor;
$MainPage->Menu = & $Menu;
$MainPage->AdmHeader = & $AdmHeader;
$MainPage->Sidebar = & $Sidebar;
$MainPage->AdmMenu = & $AdmMenu;
$Content->AddComponent("Orders_Search", $Orders_Search);
$Content->AddComponent("users_store_statuses_stor", $users_store_statuses_stor);
$Menu->AddComponent("AdmHeader", $AdmHeader);
$Sidebar->AddComponent("AdmMenu", $AdmMenu);
$users_store_statuses_stor->Initialize();

BindEvents();

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

//Execute Components @1-5270DED9
$MasterPage->Operations();
$AdmMenu->Operations();
$AdmHeader->Operations();
$Orders_Search->Operation();
//End Execute Components

//Go to destination page @1-7FA683D3
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBInternetDB->close();
    header("Location: " . $Redirect);
    unset($Orders_Search);
    unset($users_store_statuses_stor);
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

//Unload Page @1-DA234C4D
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBInternetDB->close();
unset($MasterPage);
unset($Orders_Search);
unset($users_store_statuses_stor);
$AdmHeader->Class_Terminate();
unset($AdmHeader);
$AdmMenu->Class_Terminate();
unset($AdmMenu);
unset($Tpl);
//End Unload Page


?>
