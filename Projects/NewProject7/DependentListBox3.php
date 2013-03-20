<?php
//Include Common Files @1-2156437F
define("RelativePath", ".");
define("PathToCurrentPage", "/");
define("FileName", "DependentListBox3.php");
include_once(RelativePath . "/Common.php");
include_once(RelativePath . "/Template.php");
include_once(RelativePath . "/Sorter.php");
include_once(RelativePath . "/Navigator.php");
include_once(RelativePath . "/Services.php");
//End Include Common Files

//Include Page implementation @80-8EACA429
include_once(RelativePath . "/header.php");
//End Include Page implementation

class clsRecorddirectory_items_statesSearch { //directory_items_statesSearch Class @2-864B2ADB

//Variables @2-9E315808

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

//Class_Initialize Event @2-88288926
    function clsRecorddirectory_items_statesSearch($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record directory_items_statesSearch/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "directory_items_statesSearch";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = explode(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_category_id = new clsControl(ccsListBox, "s_category_id", "s_category_id", ccsSingle, "", CCGetRequestParam("s_category_id", $Method, NULL), $this);
            $this->s_category_id->DSType = dsTable;
            $this->s_category_id->DataSource = new clsDBInternetDB();
            $this->s_category_id->ds = & $this->s_category_id->DataSource;
            $this->s_category_id->DataSource->SQL = "SELECT * \n" .
"FROM directory_categories {SQL_Where} {SQL_OrderBy}";
            list($this->s_category_id->BoundColumn, $this->s_category_id->TextColumn, $this->s_category_id->DBFormat) = array("category_id", "category_name", "");
            $this->s_category_id->DataSource->Parameters["expr12"] = 1;
            $this->s_category_id->DataSource->Parameters["expr13"] = 0;
            $this->s_category_id->DataSource->wp = new clsSQLParameters();
            $this->s_category_id->DataSource->wp->AddParameter("1", "expr12", ccsInteger, "", "", $this->s_category_id->DataSource->Parameters["expr12"], "", false);
            $this->s_category_id->DataSource->wp->AddParameter("2", "expr13", ccsInteger, "", "", $this->s_category_id->DataSource->Parameters["expr13"], "", false);
            $this->s_category_id->DataSource->wp->Criterion[1] = $this->s_category_id->DataSource->wp->Operation(opIsNull, "category_id_parent", $this->s_category_id->DataSource->wp->GetDBValue("1"), $this->s_category_id->DataSource->ToSQL($this->s_category_id->DataSource->wp->GetDBValue("1"), ccsInteger),false);
            $this->s_category_id->DataSource->wp->Criterion[2] = $this->s_category_id->DataSource->wp->Operation(opEqual, "category_id_parent", $this->s_category_id->DataSource->wp->GetDBValue("2"), $this->s_category_id->DataSource->ToSQL($this->s_category_id->DataSource->wp->GetDBValue("2"), ccsInteger),false);
            $this->s_category_id->DataSource->Where = $this->s_category_id->DataSource->wp->opOR(
                 false, 
                 $this->s_category_id->DataSource->wp->Criterion[1], 
                 $this->s_category_id->DataSource->wp->Criterion[2]);
            $this->s_subcategory_id = new clsControl(ccsListBox, "s_subcategory_id", "s_subcategory_id", ccsSingle, "", CCGetRequestParam("s_subcategory_id", $Method, NULL), $this);
            $this->s_subcategory_id->DSType = dsTable;
            $this->s_subcategory_id->DataSource = new clsDBInternetDB();
            $this->s_subcategory_id->ds = & $this->s_subcategory_id->DataSource;
            $this->s_subcategory_id->DataSource->SQL = "SELECT * \n" .
"FROM directory_categories {SQL_Where} {SQL_OrderBy}";
            list($this->s_subcategory_id->BoundColumn, $this->s_subcategory_id->TextColumn, $this->s_subcategory_id->DBFormat) = array("category_id", "category_name", "");
            $this->s_subcategory_id->DataSource->Parameters["expr15"] = 0;
            $this->s_subcategory_id->DataSource->wp = new clsSQLParameters();
            $this->s_subcategory_id->DataSource->wp->AddParameter("1", "expr15", ccsInteger, "", "", $this->s_subcategory_id->DataSource->Parameters["expr15"], "", false);
            $this->s_subcategory_id->DataSource->wp->Criterion[1] = $this->s_subcategory_id->DataSource->wp->Operation(opEqual, "category_id", $this->s_subcategory_id->DataSource->wp->GetDBValue("1"), $this->s_subcategory_id->DataSource->ToSQL($this->s_subcategory_id->DataSource->wp->GetDBValue("1"), ccsInteger),false);
            $this->s_subcategory_id->DataSource->Where = 
                 $this->s_subcategory_id->DataSource->wp->Criterion[1];
            $this->s_item_id = new clsControl(ccsListBox, "s_item_id", "s_item_id", ccsSingle, "", CCGetRequestParam("s_item_id", $Method, NULL), $this);
            $this->s_item_id->DSType = dsTable;
            $this->s_item_id->DataSource = new clsDBInternetDB();
            $this->s_item_id->ds = & $this->s_item_id->DataSource;
            $this->s_item_id->DataSource->SQL = "SELECT * \n" .
"FROM directory_items {SQL_Where} {SQL_OrderBy}";
            list($this->s_item_id->BoundColumn, $this->s_item_id->TextColumn, $this->s_item_id->DBFormat) = array("item_id", "item_name", "");
            $this->s_item_id->DataSource->Parameters["expr96"] = 0;
            $this->s_item_id->DataSource->wp = new clsSQLParameters();
            $this->s_item_id->DataSource->wp->AddParameter("1", "expr96", ccsInteger, "", "", $this->s_item_id->DataSource->Parameters["expr96"], "", false);
            $this->s_item_id->DataSource->wp->Criterion[1] = $this->s_item_id->DataSource->wp->Operation(opEqual, "category_id", $this->s_item_id->DataSource->wp->GetDBValue("1"), $this->s_item_id->DataSource->ToSQL($this->s_item_id->DataSource->wp->GetDBValue("1"), ccsInteger),false);
            $this->s_item_id->DataSource->Where = 
                 $this->s_item_id->DataSource->wp->Criterion[1];
        }
    }
//End Class_Initialize Event

//Validate Method @2-9A363753
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_category_id->Validate() && $Validation);
        $Validation = ($this->s_subcategory_id->Validate() && $Validation);
        $Validation = ($this->s_item_id->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_category_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_subcategory_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_item_id->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @2-1E7F910C
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_category_id->Errors->Count());
        $errors = ($errors || $this->s_subcategory_id->Errors->Count());
        $errors = ($errors || $this->s_item_id->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @2-82225C24
    function Operation()
    {
        if(!$this->Visible)
            return;

        global $Redirect;
        global $FileName;

        if(!$this->FormSubmitted) {
            return;
        }

        $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm"));
    }
//End Operation Method

//Show Method @2-9A6215B3
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

        $this->s_category_id->Prepare();
        $this->s_subcategory_id->Prepare();
        $this->s_item_id->Prepare();

        $RecordBlock = "Record " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $RecordBlock;
        $this->EditMode = $this->EditMode && $this->ReadAllowed;
        if (!$this->FormSubmitted) {
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->s_category_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_subcategory_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_item_id->Errors->ToString());
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

        $this->s_category_id->Show();
        $this->s_subcategory_id->Show();
        $this->s_item_id->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End directory_items_statesSearch Class @2-FCB6E20C

class clsRecorddirectory_items_states { //directory_items_states Class @18-462FCBD6

//Variables @18-9E315808

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

//Class_Initialize Event @18-48E5FF6E
    function clsRecorddirectory_items_states($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record directory_items_states/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "directory_items_states";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = explode(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->item_name = new clsControl(ccsLabel, "item_name", "item_name", ccsText, "", CCGetRequestParam("item_name", $Method, NULL), $this);
            $this->address = new clsControl(ccsLabel, "address", "address", ccsText, "", CCGetRequestParam("address", $Method, NULL), $this);
            $this->city = new clsControl(ccsLabel, "city", "city", ccsText, "", CCGetRequestParam("city", $Method, NULL), $this);
            $this->zip = new clsControl(ccsLabel, "zip", "zip", ccsText, "", CCGetRequestParam("zip", $Method, NULL), $this);
            $this->state_name = new clsControl(ccsLabel, "state_name", "state_name", ccsText, "", CCGetRequestParam("state_name", $Method, NULL), $this);
            $this->phone = new clsControl(ccsLabel, "phone", "phone", ccsText, "", CCGetRequestParam("phone", $Method, NULL), $this);
            $this->note = new clsControl(ccsLabel, "note", "note", ccsMemo, "", CCGetRequestParam("note", $Method, NULL), $this);
            $this->email = new clsControl(ccsLabel, "email", "email", ccsText, "", CCGetRequestParam("email", $Method, NULL), $this);
            $this->url = new clsControl(ccsLink, "url", "url", ccsText, "", CCGetRequestParam("url", $Method, NULL), $this);
            $this->url->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
            $this->url->Page = "";
        }
    }
//End Class_Initialize Event

//Validate Method @18-367945B8
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @18-DAD6F2F7
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->item_name->Errors->Count());
        $errors = ($errors || $this->address->Errors->Count());
        $errors = ($errors || $this->city->Errors->Count());
        $errors = ($errors || $this->zip->Errors->Count());
        $errors = ($errors || $this->state_name->Errors->Count());
        $errors = ($errors || $this->phone->Errors->Count());
        $errors = ($errors || $this->note->Errors->Count());
        $errors = ($errors || $this->email->Errors->Count());
        $errors = ($errors || $this->url->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @18-82225C24
    function Operation()
    {
        if(!$this->Visible)
            return;

        global $Redirect;
        global $FileName;

        if(!$this->FormSubmitted) {
            return;
        }

        $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm"));
    }
//End Operation Method

//Show Method @18-8344C1AB
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


        $RecordBlock = "Record " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $RecordBlock;
        $this->EditMode = $this->EditMode && $this->ReadAllowed;

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->item_name->Errors->ToString());
            $Error = ComposeStrings($Error, $this->address->Errors->ToString());
            $Error = ComposeStrings($Error, $this->city->Errors->ToString());
            $Error = ComposeStrings($Error, $this->zip->Errors->ToString());
            $Error = ComposeStrings($Error, $this->state_name->Errors->ToString());
            $Error = ComposeStrings($Error, $this->phone->Errors->ToString());
            $Error = ComposeStrings($Error, $this->note->Errors->ToString());
            $Error = ComposeStrings($Error, $this->email->Errors->ToString());
            $Error = ComposeStrings($Error, $this->url->Errors->ToString());
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

        $this->item_name->Show();
        $this->address->Show();
        $this->city->Show();
        $this->zip->Show();
        $this->state_name->Show();
        $this->phone->Show();
        $this->note->Show();
        $this->email->Show();
        $this->url->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End directory_items_states Class @18-FCB6E20C

//Include Page implementation @39-EBA5EA16
include_once(RelativePath . "/footer.php");
//End Include Page implementation

//Initialize Page @1-53B2F3C8
// Variables
$FileName = "";
$Redirect = "";
$Tpl = "";
$TemplateFileName = "";
$BlockToParse = "";
$ComponentName = "";
$Attributes = "";

// Events;
$CCSEvents = "";
$CCSEventResult = "";
$TemplateSource = "";

$FileName = FileName;
$Redirect = "";
$TemplateFileName = "DependentListBox3.html";
$BlockToParse = "main";
$TemplateEncoding = "ISO-8859-1";
$ContentType = "text/html";
$PathToRoot = "./";
//End Initialize Page

//Include events file @1-6FAE23AF
include_once("./DependentListBox3_events.php");
//End Include events file

//BeforeInitialize Binding @1-17AC9191
$CCSEvents["BeforeInitialize"] = "Page_BeforeInitialize";
//End BeforeInitialize Binding

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-6675943D
$DBInternetDB = new clsDBInternetDB();
$MainPage->Connections["InternetDB"] = & $DBInternetDB;
$Attributes = new clsAttributes("page:");
$Attributes->SetValue("pathToRoot", $PathToRoot);
$MainPage->Attributes = & $Attributes;

// Controls
$header = new clsheader("", "header", $MainPage);
$header->Initialize();
$directory_items_statesSearch = new clsRecorddirectory_items_statesSearch("", $MainPage);
$directory_items_states = new clsRecorddirectory_items_states("", $MainPage);
$footer = new clsfooter("", "footer", $MainPage);
$footer->Initialize();
$Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", ccsGet, NULL), $MainPage);
$Link1->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
$Link1->Page = "DependentListBox3_desc.php";
$MainPage->header = & $header;
$MainPage->directory_items_statesSearch = & $directory_items_statesSearch;
$MainPage->directory_items_states = & $directory_items_states;
$MainPage->footer = & $footer;
$MainPage->Link1 = & $Link1;

BindEvents();

$CCSEventResult = CCGetEvent($CCSEvents, "AfterInitialize", $MainPage);

if ($Charset) {
    header("Content-Type: " . $ContentType . "; charset=" . $Charset);
} else {
    header("Content-Type: " . $ContentType);
}
//End Initialize Objects

//Initialize HTML Template @1-C4284C40
$CCSEventResult = CCGetEvent($CCSEvents, "OnInitializeView", $MainPage);
$Tpl = new clsTemplate();
if (strlen($TemplateSource)) {
    $Tpl->LoadTemplateFromStr($TemplateSource, $BlockToParse, "ISO-8859-1");
} else {
    $Tpl->LoadTemplate(PathToCurrentPage . $TemplateFileName, $BlockToParse, "ISO-8859-1");
}
$Tpl->SetVar("CCS_PathToRoot", $PathToRoot);
$Tpl->block_path = "/$BlockToParse";
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeShow", $MainPage);
$Attributes->SetValue("pathToRoot", "");
$Attributes->Show();
//End Initialize HTML Template

//Execute Components @1-4FCB1738
$footer->Operations();
$directory_items_states->Operation();
$directory_items_statesSearch->Operation();
$header->Operations();
//End Execute Components

//Go to destination page @1-C12F95CE
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBInternetDB->close();
    header("Location: " . $Redirect);
    $header->Class_Terminate();
    unset($header);
    unset($directory_items_statesSearch);
    unset($directory_items_states);
    $footer->Class_Terminate();
    unset($footer);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-0C55931E
$header->Show();
$directory_items_statesSearch->Show();
$directory_items_states->Show();
$footer->Show();
$Link1->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
if (!isset($main_block)) $main_block = $Tpl->GetVar($BlockToParse);
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-622898F9
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBInternetDB->close();
$header->Class_Terminate();
unset($header);
unset($directory_items_statesSearch);
unset($directory_items_states);
$footer->Class_Terminate();
unset($footer);
unset($Tpl);
//End Unload Page


?>
