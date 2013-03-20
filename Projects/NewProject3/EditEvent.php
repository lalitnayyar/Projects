<?php
//Include Common Files @1-5754FD91
define("RelativePath", ".");
define("PathToCurrentPage", "/");
define("FileName", "EditEvent.php");
include_once(RelativePath . "/Common.php");
include_once(RelativePath . "/Template.php");
include_once(RelativePath . "/Sorter.php");
include_once(RelativePath . "/Navigator.php");
//End Include Common Files

//Master Page implementation @1-DB06AD2E
include_once(RelativePath . "/Designs/FarmSong/MasterPage.php");
//End Master Page implementation

class clsRecordevents { //events Class @39-2809A388

//Variables @39-9E315808

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

//Class_Initialize Event @39-3ACD84B9
    function clsRecordevents($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record events/Error";
        $this->DataSource = new clseventsDataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        $this->UpdateAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "events";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = explode(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->date_start = new clsControl(ccsTextBox, "date_start", "Date", ccsDate, array("mm", "/", "dd", "/", "yyyy"), CCGetRequestParam("date_start", $Method, NULL), $this);
            $this->event_name = new clsControl(ccsTextArea, "event_name", "Title", ccsMemo, "", CCGetRequestParam("event_name", $Method, NULL), $this);
            $this->event_name->Required = true;
            $this->event_desc = new clsControl(ccsTextArea, "event_desc", "Description", ccsMemo, "", CCGetRequestParam("event_desc", $Method, NULL), $this);
            $this->location = new clsControl(ccsTextArea, "location", "Location", ccsMemo, "", CCGetRequestParam("location", $Method, NULL), $this);
            $this->location->Required = true;
            $this->presenter = new clsControl(ccsTextBox, "presenter", "Presenter", ccsText, "", CCGetRequestParam("presenter", $Method, NULL), $this);
            $this->presenter->Required = true;
            $this->user_added = new clsControl(ccsHidden, "user_added", "user_added", ccsInteger, "", CCGetRequestParam("user_added", $Method, NULL), $this);
            $this->portal_Insert = new clsButton("portal_Insert", $Method, $this);
            $this->portal_Update = new clsButton("portal_Update", $Method, $this);
            $this->portal_Delete = new clsButton("portal_Delete", $Method, $this);
            $this->portal_Cancel = new clsButton("portal_Cancel", $Method, $this);
        }
    }
//End Class_Initialize Event

//Initialize Method @39-DBAE778D
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urlevent_id"] = CCGetFromGet("event_id", NULL);
    }
//End Initialize Method

//Validate Method @39-6E7DC514
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->date_start->Validate() && $Validation);
        $Validation = ($this->event_name->Validate() && $Validation);
        $Validation = ($this->event_desc->Validate() && $Validation);
        $Validation = ($this->location->Validate() && $Validation);
        $Validation = ($this->presenter->Validate() && $Validation);
        $Validation = ($this->user_added->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->date_start->Errors->Count() == 0);
        $Validation =  $Validation && ($this->event_name->Errors->Count() == 0);
        $Validation =  $Validation && ($this->event_desc->Errors->Count() == 0);
        $Validation =  $Validation && ($this->location->Errors->Count() == 0);
        $Validation =  $Validation && ($this->presenter->Errors->Count() == 0);
        $Validation =  $Validation && ($this->user_added->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @39-BB7640A9
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->date_start->Errors->Count());
        $errors = ($errors || $this->event_name->Errors->Count());
        $errors = ($errors || $this->event_desc->Errors->Count());
        $errors = ($errors || $this->location->Errors->Count());
        $errors = ($errors || $this->presenter->Errors->Count());
        $errors = ($errors || $this->user_added->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @39-22925495
    function Operation()
    {
        if(!$this->Visible)
            return;

        global $Redirect;
        global $FileName;

        $this->DataSource->Prepare();
        if(!$this->FormSubmitted) {
            $this->EditMode = $this->DataSource->AllParametersSet;
            return;
        }

        if($this->FormSubmitted) {
            $this->PressedButton = $this->EditMode ? "portal_Update" : "portal_Insert";
            if($this->portal_Insert->Pressed) {
                $this->PressedButton = "portal_Insert";
            } else if($this->portal_Update->Pressed) {
                $this->PressedButton = "portal_Update";
            } else if($this->portal_Delete->Pressed) {
                $this->PressedButton = "portal_Delete";
            } else if($this->portal_Cancel->Pressed) {
                $this->PressedButton = "portal_Cancel";
            }
        }
        $Redirect = "AdminEvents.php";
        if($this->PressedButton == "portal_Delete") {
            if(!CCGetEvent($this->portal_Delete->CCSEvents, "OnClick", $this->portal_Delete) || !$this->DeleteRow()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "portal_Cancel") {
            if(!CCGetEvent($this->portal_Cancel->CCSEvents, "OnClick", $this->portal_Cancel)) {
                $Redirect = "";
            }
        } else if($this->Validate()) {
            if($this->PressedButton == "portal_Insert") {
                if(!CCGetEvent($this->portal_Insert->CCSEvents, "OnClick", $this->portal_Insert) || !$this->InsertRow()) {
                    $Redirect = "";
                }
            } else if($this->PressedButton == "portal_Update") {
                if(!CCGetEvent($this->portal_Update->CCSEvents, "OnClick", $this->portal_Update) || !$this->UpdateRow()) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
        if ($Redirect)
            $this->DataSource->close();
    }
//End Operation Method

//InsertRow Method @39-10143176
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->date_start->SetValue($this->date_start->GetValue(true));
        $this->DataSource->event_name->SetValue($this->event_name->GetValue(true));
        $this->DataSource->event_desc->SetValue($this->event_desc->GetValue(true));
        $this->DataSource->location->SetValue($this->location->GetValue(true));
        $this->DataSource->presenter->SetValue($this->presenter->GetValue(true));
        $this->DataSource->user_added->SetValue($this->user_added->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @39-A8BCB008
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->date_start->SetValue($this->date_start->GetValue(true));
        $this->DataSource->event_name->SetValue($this->event_name->GetValue(true));
        $this->DataSource->event_desc->SetValue($this->event_desc->GetValue(true));
        $this->DataSource->location->SetValue($this->location->GetValue(true));
        $this->DataSource->presenter->SetValue($this->presenter->GetValue(true));
        $this->DataSource->user_added->SetValue($this->user_added->GetValue(true));
        $this->DataSource->Update();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterUpdate", $this);
        return (!$this->CheckErrors());
    }
//End UpdateRow Method

//DeleteRow Method @39-299D98C3
    function DeleteRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeDelete", $this);
        if(!$this->DeleteAllowed) return false;
        $this->DataSource->Delete();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterDelete", $this);
        return (!$this->CheckErrors());
    }
//End DeleteRow Method

//Show Method @39-2BC890E0
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
        if($this->EditMode) {
            if($this->DataSource->Errors->Count()){
                $this->Errors->AddErrors($this->DataSource->Errors);
                $this->DataSource->Errors->clear();
            }
            $this->DataSource->Open();
            if($this->DataSource->Errors->Count() == 0 && $this->DataSource->next_record()) {
                $this->DataSource->SetValues();
                if(!$this->FormSubmitted){
                    $this->date_start->SetValue($this->DataSource->date_start->GetValue());
                    $this->event_name->SetValue($this->DataSource->event_name->GetValue());
                    $this->event_desc->SetValue($this->DataSource->event_desc->GetValue());
                    $this->location->SetValue($this->DataSource->location->GetValue());
                    $this->presenter->SetValue($this->DataSource->presenter->GetValue());
                    $this->user_added->SetValue($this->DataSource->user_added->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->date_start->Errors->ToString());
            $Error = ComposeStrings($Error, $this->event_name->Errors->ToString());
            $Error = ComposeStrings($Error, $this->event_desc->Errors->ToString());
            $Error = ComposeStrings($Error, $this->location->Errors->ToString());
            $Error = ComposeStrings($Error, $this->presenter->Errors->ToString());
            $Error = ComposeStrings($Error, $this->user_added->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Errors->ToString());
            $Error = ComposeStrings($Error, $this->DataSource->Errors->ToString());
            $Tpl->SetVar("Error", $Error);
            $Tpl->Parse("Error", false);
        }
        $CCSForm = $this->EditMode ? $this->ComponentName . ":" . "Edit" : $this->ComponentName;
        $this->HTMLFormAction = $FileName . "?" . CCAddParam(CCGetQueryString("QueryString", ""), "ccsForm", $CCSForm);
        $Tpl->SetVar("Action", !$CCSUseAmp ? $this->HTMLFormAction : str_replace("&", "&amp;", $this->HTMLFormAction));
        $Tpl->SetVar("HTMLFormName", $this->ComponentName);
        $Tpl->SetVar("HTMLFormEnctype", $this->FormEnctype);
        $this->portal_Insert->Visible = !$this->EditMode && $this->InsertAllowed;
        $this->portal_Update->Visible = $this->EditMode && $this->UpdateAllowed;
        $this->portal_Delete->Visible = $this->EditMode && $this->DeleteAllowed;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        $this->Attributes->Show();
        if(!$this->Visible) {
            $Tpl->block_path = $ParentPath;
            return;
        }

        $this->date_start->Show();
        $this->event_name->Show();
        $this->event_desc->Show();
        $this->location->Show();
        $this->presenter->Show();
        $this->user_added->Show();
        $this->portal_Insert->Show();
        $this->portal_Update->Show();
        $this->portal_Delete->Show();
        $this->portal_Cancel->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End events Class @39-FCB6E20C

class clseventsDataSource extends clsDBinternet {  //eventsDataSource Class @39-ABF169D3

//DataSource Variables @39-EF636C5F
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $InsertParameters;
    public $UpdateParameters;
    public $DeleteParameters;
    public $wp;
    public $AllParametersSet;

    public $InsertFields = array();
    public $UpdateFields = array();

    // Datasource fields
    public $date_start;
    public $event_name;
    public $event_desc;
    public $location;
    public $presenter;
    public $user_added;
//End DataSource Variables

//DataSourceClass_Initialize Event @39-162FAFC8
    function clseventsDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record events/Error";
        $this->Initialize();
        $this->date_start = new clsField("date_start", ccsDate, $this->DateFormat);
        
        $this->event_name = new clsField("event_name", ccsMemo, "");
        
        $this->event_desc = new clsField("event_desc", ccsMemo, "");
        
        $this->location = new clsField("location", ccsMemo, "");
        
        $this->presenter = new clsField("presenter", ccsText, "");
        
        $this->user_added = new clsField("user_added", ccsInteger, "");
        

        $this->InsertFields["date_start"] = array("Name" => "date_start", "Value" => "", "DataType" => ccsDate, "OmitIfEmpty" => 1);
        $this->InsertFields["event_name"] = array("Name" => "event_name", "Value" => "", "DataType" => ccsMemo, "OmitIfEmpty" => 1);
        $this->InsertFields["event_desc"] = array("Name" => "event_desc", "Value" => "", "DataType" => ccsMemo, "OmitIfEmpty" => 1);
        $this->InsertFields["location"] = array("Name" => "location", "Value" => "", "DataType" => ccsMemo, "OmitIfEmpty" => 1);
        $this->InsertFields["presenter"] = array("Name" => "presenter", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["user_id_add"] = array("Name" => "user_id_add", "Value" => "", "DataType" => ccsInteger, "OmitIfEmpty" => 1);
        $this->UpdateFields["date_start"] = array("Name" => "date_start", "Value" => "", "DataType" => ccsDate, "OmitIfEmpty" => 1);
        $this->UpdateFields["event_name"] = array("Name" => "event_name", "Value" => "", "DataType" => ccsMemo, "OmitIfEmpty" => 1);
        $this->UpdateFields["event_desc"] = array("Name" => "event_desc", "Value" => "", "DataType" => ccsMemo, "OmitIfEmpty" => 1);
        $this->UpdateFields["location"] = array("Name" => "location", "Value" => "", "DataType" => ccsMemo, "OmitIfEmpty" => 1);
        $this->UpdateFields["presenter"] = array("Name" => "presenter", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["user_id_add"] = array("Name" => "user_id_add", "Value" => "", "DataType" => ccsInteger, "OmitIfEmpty" => 1);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @39-FD6E473D
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urlevent_id", ccsInteger, "", "", $this->Parameters["urlevent_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "event_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsInteger),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @39-C5714E2F
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM events {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, $this->Order));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @39-32B5E32F
    function SetValues()
    {
        $this->date_start->SetDBValue(trim($this->f("date_start")));
        $this->event_name->SetDBValue($this->f("event_name"));
        $this->event_desc->SetDBValue($this->f("event_desc"));
        $this->location->SetDBValue($this->f("location"));
        $this->presenter->SetDBValue($this->f("presenter"));
        $this->user_added->SetDBValue(trim($this->f("user_id_add")));
    }
//End SetValues Method

//Insert Method @39-4DF43CC4
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["date_start"]["Value"] = $this->date_start->GetDBValue(true);
        $this->InsertFields["event_name"]["Value"] = $this->event_name->GetDBValue(true);
        $this->InsertFields["event_desc"]["Value"] = $this->event_desc->GetDBValue(true);
        $this->InsertFields["location"]["Value"] = $this->location->GetDBValue(true);
        $this->InsertFields["presenter"]["Value"] = $this->presenter->GetDBValue(true);
        $this->InsertFields["user_id_add"]["Value"] = $this->user_added->GetDBValue(true);
        $this->SQL = CCBuildInsert("events", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @39-0E19B314
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $Where = "";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->UpdateFields["date_start"]["Value"] = $this->date_start->GetDBValue(true);
        $this->UpdateFields["event_name"]["Value"] = $this->event_name->GetDBValue(true);
        $this->UpdateFields["event_desc"]["Value"] = $this->event_desc->GetDBValue(true);
        $this->UpdateFields["location"]["Value"] = $this->location->GetDBValue(true);
        $this->UpdateFields["presenter"]["Value"] = $this->presenter->GetDBValue(true);
        $this->UpdateFields["user_id_add"]["Value"] = $this->user_added->GetDBValue(true);
        $this->SQL = CCBuildUpdate("events", $this->UpdateFields, $this);
        $this->SQL .= strlen($this->Where) ? " WHERE " . $this->Where : $this->Where;
        if (!strlen($this->Where) && $this->Errors->Count() == 0) 
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteUpdate", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteUpdate", $this->Parent);
        }
    }
//End Update Method

//Delete Method @39-E9AF29A9
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $Where = "";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $this->SQL = "DELETE FROM events";
        $this->SQL = CCBuildSQL($this->SQL, $this->Where, "");
        if (!strlen($this->Where) && $this->Errors->Count() == 0) 
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteDelete", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteDelete", $this->Parent);
        }
    }
//End Delete Method

} //End eventsDataSource Class @39-FCB6E20C

//Include Page implementation @34-3DD2EFDC
include_once(RelativePath . "/Header.php");
//End Include Page implementation

//Include Page implementation @35-39F846CD
include_once(RelativePath . "/AdminMenu.php");
//End Include Page implementation

//Initialize Page @1-067A5D68
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
$TemplateFileName = "EditEvent.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$ContentType = "text/html";
$PathToRoot = "./";
//End Initialize Page

//Authenticate User @1-38B04EC7
CCSecurityRedirect("2", "Login.php");
//End Authenticate User

//Include events file @1-CBC2C4CF
include_once("./EditEvent_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-B97AF393
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
$events = new clsRecordevents("", $MainPage);
$Menu = new clsPanel("Menu", $MainPage);
$Menu->PlaceholderName = "Menu";
$Header = new clsHeader("", "Header", $MainPage);
$Header->Initialize();
$Sidebar1 = new clsPanel("Sidebar1", $MainPage);
$Sidebar1->PlaceholderName = "Sidebar1";
$AdminMenu = new clsAdminMenu("", "AdminMenu", $MainPage);
$AdminMenu->Initialize();
$MainPage->Head = & $Head;
$MainPage->Content = & $Content;
$MainPage->events = & $events;
$MainPage->Menu = & $Menu;
$MainPage->Header = & $Header;
$MainPage->Sidebar1 = & $Sidebar1;
$MainPage->AdminMenu = & $AdminMenu;
$Content->AddComponent("events", $events);
$Menu->AddComponent("Header", $Header);
$Sidebar1->AddComponent("AdminMenu", $AdminMenu);
$events->Initialize();

BindEvents();

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

//Execute Components @1-D8A438D7
$MasterPage->Operations();
$AdminMenu->Operations();
$Header->Operations();
$events->Operation();
//End Execute Components

//Go to destination page @1-FBAD30B6
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBinternet->close();
    header("Location: " . $Redirect);
    unset($events);
    $Header->Class_Terminate();
    unset($Header);
    $AdminMenu->Class_Terminate();
    unset($AdminMenu);
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

//Unload Page @1-C702901F
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBinternet->close();
unset($MasterPage);
unset($events);
$Header->Class_Terminate();
unset($Header);
$AdminMenu->Class_Terminate();
unset($AdminMenu);
unset($Tpl);
//End Unload Page


?>
