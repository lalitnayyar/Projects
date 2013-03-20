<?php
//Include Common Files @1-EE34556E
define("RelativePath", ".");
define("PathToCurrentPage", "/");
define("FileName", "EditMembers.php");
include_once(RelativePath . "/Common.php");
include_once(RelativePath . "/Template.php");
include_once(RelativePath . "/Sorter.php");
include_once(RelativePath . "/Navigator.php");
//End Include Common Files

//Master Page implementation @1-DB06AD2E
include_once(RelativePath . "/Designs/FarmSong/MasterPage.php");
//End Master Page implementation

class clsRecordmembers { //members Class @88-7B5067C7

//Variables @88-9E315808

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

//Class_Initialize Event @88-E425ABEF
    function clsRecordmembers($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record members/Error";
        $this->DataSource = new clsmembersDataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        $this->UpdateAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "members";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = explode(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->Button_Insert = new clsButton("Button_Insert", $Method, $this);
            $this->Button_Update = new clsButton("Button_Update", $Method, $this);
            $this->Button_Delete = new clsButton("Button_Delete", $Method, $this);
            $this->Button_Cancel = new clsButton("Button_Cancel", $Method, $this);
            $this->user_login = new clsControl(ccsTextBox, "user_login", "Login", ccsText, "", CCGetRequestParam("user_login", $Method, NULL), $this);
            $this->user_login->Required = true;
            $this->user_password = new clsControl(ccsTextBox, "user_password", "Password", ccsText, "", CCGetRequestParam("user_password", $Method, NULL), $this);
            $this->user_password->Required = true;
            $this->group_id = new clsControl(ccsListBox, "group_id", "Group Id", ccsInteger, "", CCGetRequestParam("group_id", $Method, NULL), $this);
            $this->group_id->DSType = dsTable;
            $this->group_id->DataSource = new clsDBinternet();
            $this->group_id->ds = & $this->group_id->DataSource;
            $this->group_id->DataSource->SQL = "SELECT * \n" .
"FROM user_groups {SQL_Where} {SQL_OrderBy}";
            list($this->group_id->BoundColumn, $this->group_id->TextColumn, $this->group_id->DBFormat) = array("group_id", "group_name", "");
            $this->group_id->Required = true;
            $this->first_name = new clsControl(ccsTextBox, "first_name", "First Name", ccsText, "", CCGetRequestParam("first_name", $Method, NULL), $this);
            $this->first_name->Required = true;
            $this->last_name = new clsControl(ccsTextBox, "last_name", "Last Name", ccsText, "", CCGetRequestParam("last_name", $Method, NULL), $this);
            $this->last_name->Required = true;
            $this->address1 = new clsControl(ccsTextBox, "address1", "Address1", ccsText, "", CCGetRequestParam("address1", $Method, NULL), $this);
            $this->address2 = new clsControl(ccsTextBox, "address2", "Address2", ccsText, "", CCGetRequestParam("address2", $Method, NULL), $this);
            $this->address3 = new clsControl(ccsTextBox, "address3", "Address3", ccsText, "", CCGetRequestParam("address3", $Method, NULL), $this);
            $this->city = new clsControl(ccsTextBox, "city", "City", ccsText, "", CCGetRequestParam("city", $Method, NULL), $this);
            $this->state_id = new clsControl(ccsListBox, "state_id", "State Id", ccsInteger, "", CCGetRequestParam("state_id", $Method, NULL), $this);
            $this->state_id->DSType = dsTable;
            $this->state_id->DataSource = new clsDBinternet();
            $this->state_id->ds = & $this->state_id->DataSource;
            $this->state_id->DataSource->SQL = "SELECT * \n" .
"FROM states {SQL_Where} {SQL_OrderBy}";
            $this->state_id->DataSource->Order = "state_name";
            list($this->state_id->BoundColumn, $this->state_id->TextColumn, $this->state_id->DBFormat) = array("state_id", "state_name", "");
            $this->state_id->DataSource->Order = "state_name";
            $this->zip = new clsControl(ccsTextBox, "zip", "Zip", ccsText, "", CCGetRequestParam("zip", $Method, NULL), $this);
            $this->country_id = new clsControl(ccsListBox, "country_id", "Country Id", ccsInteger, "", CCGetRequestParam("country_id", $Method, NULL), $this);
            $this->country_id->DSType = dsTable;
            $this->country_id->DataSource = new clsDBinternet();
            $this->country_id->ds = & $this->country_id->DataSource;
            $this->country_id->DataSource->SQL = "SELECT * \n" .
"FROM countries {SQL_Where} {SQL_OrderBy}";
            list($this->country_id->BoundColumn, $this->country_id->TextColumn, $this->country_id->DBFormat) = array("country_id", "country_name", "");
            $this->phone_day = new clsControl(ccsTextBox, "phone_day", "Phone Day", ccsText, "", CCGetRequestParam("phone_day", $Method, NULL), $this);
            $this->phone_evening = new clsControl(ccsTextBox, "phone_evening", "Phone Evening", ccsText, "", CCGetRequestParam("phone_evening", $Method, NULL), $this);
            $this->fax = new clsControl(ccsTextBox, "fax", "Fax", ccsText, "", CCGetRequestParam("fax", $Method, NULL), $this);
            $this->email = new clsControl(ccsTextBox, "email", "Email", ccsText, "", CCGetRequestParam("email", $Method, NULL), $this);
            $this->ip_add = new clsControl(ccsHidden, "ip_add", "Ip Add", ccsText, "", CCGetRequestParam("ip_add", $Method, NULL), $this);
            $this->ip_update = new clsControl(ccsHidden, "ip_update", "Ip Update", ccsText, "", CCGetRequestParam("ip_update", $Method, NULL), $this);
            $this->date_add = new clsControl(ccsHidden, "date_add", "Date Add", ccsDate, array("mm", "/", "dd", "/", "yyyy"), CCGetRequestParam("date_add", $Method, NULL), $this);
            $this->date_last_login = new clsControl(ccsHidden, "date_last_login", "Date Last Login", ccsDate, array("mm", "/", "dd", "/", "yyyy"), CCGetRequestParam("date_last_login", $Method, NULL), $this);
        }
    }
//End Class_Initialize Event

//Initialize Method @88-53A359F1
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urluser_id"] = CCGetFromGet("user_id", NULL);
    }
//End Initialize Method

//Validate Method @88-0CCCB762
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->user_login->Validate() && $Validation);
        $Validation = ($this->user_password->Validate() && $Validation);
        $Validation = ($this->group_id->Validate() && $Validation);
        $Validation = ($this->first_name->Validate() && $Validation);
        $Validation = ($this->last_name->Validate() && $Validation);
        $Validation = ($this->address1->Validate() && $Validation);
        $Validation = ($this->address2->Validate() && $Validation);
        $Validation = ($this->address3->Validate() && $Validation);
        $Validation = ($this->city->Validate() && $Validation);
        $Validation = ($this->state_id->Validate() && $Validation);
        $Validation = ($this->zip->Validate() && $Validation);
        $Validation = ($this->country_id->Validate() && $Validation);
        $Validation = ($this->phone_day->Validate() && $Validation);
        $Validation = ($this->phone_evening->Validate() && $Validation);
        $Validation = ($this->fax->Validate() && $Validation);
        $Validation = ($this->email->Validate() && $Validation);
        $Validation = ($this->ip_add->Validate() && $Validation);
        $Validation = ($this->ip_update->Validate() && $Validation);
        $Validation = ($this->date_add->Validate() && $Validation);
        $Validation = ($this->date_last_login->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->user_login->Errors->Count() == 0);
        $Validation =  $Validation && ($this->user_password->Errors->Count() == 0);
        $Validation =  $Validation && ($this->group_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->first_name->Errors->Count() == 0);
        $Validation =  $Validation && ($this->last_name->Errors->Count() == 0);
        $Validation =  $Validation && ($this->address1->Errors->Count() == 0);
        $Validation =  $Validation && ($this->address2->Errors->Count() == 0);
        $Validation =  $Validation && ($this->address3->Errors->Count() == 0);
        $Validation =  $Validation && ($this->city->Errors->Count() == 0);
        $Validation =  $Validation && ($this->state_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->zip->Errors->Count() == 0);
        $Validation =  $Validation && ($this->country_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->phone_day->Errors->Count() == 0);
        $Validation =  $Validation && ($this->phone_evening->Errors->Count() == 0);
        $Validation =  $Validation && ($this->fax->Errors->Count() == 0);
        $Validation =  $Validation && ($this->email->Errors->Count() == 0);
        $Validation =  $Validation && ($this->ip_add->Errors->Count() == 0);
        $Validation =  $Validation && ($this->ip_update->Errors->Count() == 0);
        $Validation =  $Validation && ($this->date_add->Errors->Count() == 0);
        $Validation =  $Validation && ($this->date_last_login->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @88-601C5EB9
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->user_login->Errors->Count());
        $errors = ($errors || $this->user_password->Errors->Count());
        $errors = ($errors || $this->group_id->Errors->Count());
        $errors = ($errors || $this->first_name->Errors->Count());
        $errors = ($errors || $this->last_name->Errors->Count());
        $errors = ($errors || $this->address1->Errors->Count());
        $errors = ($errors || $this->address2->Errors->Count());
        $errors = ($errors || $this->address3->Errors->Count());
        $errors = ($errors || $this->city->Errors->Count());
        $errors = ($errors || $this->state_id->Errors->Count());
        $errors = ($errors || $this->zip->Errors->Count());
        $errors = ($errors || $this->country_id->Errors->Count());
        $errors = ($errors || $this->phone_day->Errors->Count());
        $errors = ($errors || $this->phone_evening->Errors->Count());
        $errors = ($errors || $this->fax->Errors->Count());
        $errors = ($errors || $this->email->Errors->Count());
        $errors = ($errors || $this->ip_add->Errors->Count());
        $errors = ($errors || $this->ip_update->Errors->Count());
        $errors = ($errors || $this->date_add->Errors->Count());
        $errors = ($errors || $this->date_last_login->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @88-A4F58B4A
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
            $this->PressedButton = $this->EditMode ? "Button_Update" : "Button_Insert";
            if($this->Button_Insert->Pressed) {
                $this->PressedButton = "Button_Insert";
            } else if($this->Button_Update->Pressed) {
                $this->PressedButton = "Button_Update";
            } else if($this->Button_Delete->Pressed) {
                $this->PressedButton = "Button_Delete";
            } else if($this->Button_Cancel->Pressed) {
                $this->PressedButton = "Button_Cancel";
            }
        }
        $Redirect = "AdminMembers.php";
        if($this->PressedButton == "Button_Delete") {
            if(!CCGetEvent($this->Button_Delete->CCSEvents, "OnClick", $this->Button_Delete) || !$this->DeleteRow()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Button_Cancel") {
            if(!CCGetEvent($this->Button_Cancel->CCSEvents, "OnClick", $this->Button_Cancel)) {
                $Redirect = "";
            }
        } else if($this->Validate()) {
            if($this->PressedButton == "Button_Insert") {
                if(!CCGetEvent($this->Button_Insert->CCSEvents, "OnClick", $this->Button_Insert) || !$this->InsertRow()) {
                    $Redirect = "";
                }
            } else if($this->PressedButton == "Button_Update") {
                if(!CCGetEvent($this->Button_Update->CCSEvents, "OnClick", $this->Button_Update) || !$this->UpdateRow()) {
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

//InsertRow Method @88-B971B415
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->user_login->SetValue($this->user_login->GetValue(true));
        $this->DataSource->user_password->SetValue($this->user_password->GetValue(true));
        $this->DataSource->group_id->SetValue($this->group_id->GetValue(true));
        $this->DataSource->first_name->SetValue($this->first_name->GetValue(true));
        $this->DataSource->last_name->SetValue($this->last_name->GetValue(true));
        $this->DataSource->address1->SetValue($this->address1->GetValue(true));
        $this->DataSource->address2->SetValue($this->address2->GetValue(true));
        $this->DataSource->address3->SetValue($this->address3->GetValue(true));
        $this->DataSource->city->SetValue($this->city->GetValue(true));
        $this->DataSource->state_id->SetValue($this->state_id->GetValue(true));
        $this->DataSource->zip->SetValue($this->zip->GetValue(true));
        $this->DataSource->country_id->SetValue($this->country_id->GetValue(true));
        $this->DataSource->phone_day->SetValue($this->phone_day->GetValue(true));
        $this->DataSource->phone_evening->SetValue($this->phone_evening->GetValue(true));
        $this->DataSource->fax->SetValue($this->fax->GetValue(true));
        $this->DataSource->email->SetValue($this->email->GetValue(true));
        $this->DataSource->ip_add->SetValue($this->ip_add->GetValue(true));
        $this->DataSource->ip_update->SetValue($this->ip_update->GetValue(true));
        $this->DataSource->date_add->SetValue($this->date_add->GetValue(true));
        $this->DataSource->date_last_login->SetValue($this->date_last_login->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @88-33C66149
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->user_login->SetValue($this->user_login->GetValue(true));
        $this->DataSource->user_password->SetValue($this->user_password->GetValue(true));
        $this->DataSource->group_id->SetValue($this->group_id->GetValue(true));
        $this->DataSource->first_name->SetValue($this->first_name->GetValue(true));
        $this->DataSource->last_name->SetValue($this->last_name->GetValue(true));
        $this->DataSource->address1->SetValue($this->address1->GetValue(true));
        $this->DataSource->address2->SetValue($this->address2->GetValue(true));
        $this->DataSource->address3->SetValue($this->address3->GetValue(true));
        $this->DataSource->city->SetValue($this->city->GetValue(true));
        $this->DataSource->state_id->SetValue($this->state_id->GetValue(true));
        $this->DataSource->zip->SetValue($this->zip->GetValue(true));
        $this->DataSource->country_id->SetValue($this->country_id->GetValue(true));
        $this->DataSource->phone_day->SetValue($this->phone_day->GetValue(true));
        $this->DataSource->phone_evening->SetValue($this->phone_evening->GetValue(true));
        $this->DataSource->fax->SetValue($this->fax->GetValue(true));
        $this->DataSource->email->SetValue($this->email->GetValue(true));
        $this->DataSource->ip_add->SetValue($this->ip_add->GetValue(true));
        $this->DataSource->ip_update->SetValue($this->ip_update->GetValue(true));
        $this->DataSource->date_add->SetValue($this->date_add->GetValue(true));
        $this->DataSource->date_last_login->SetValue($this->date_last_login->GetValue(true));
        $this->DataSource->Update();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterUpdate", $this);
        return (!$this->CheckErrors());
    }
//End UpdateRow Method

//DeleteRow Method @88-299D98C3
    function DeleteRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeDelete", $this);
        if(!$this->DeleteAllowed) return false;
        $this->DataSource->Delete();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterDelete", $this);
        return (!$this->CheckErrors());
    }
//End DeleteRow Method

//Show Method @88-D8B4B78B
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

        $this->group_id->Prepare();
        $this->state_id->Prepare();
        $this->country_id->Prepare();

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
                    $this->user_login->SetValue($this->DataSource->user_login->GetValue());
                    $this->user_password->SetValue($this->DataSource->user_password->GetValue());
                    $this->group_id->SetValue($this->DataSource->group_id->GetValue());
                    $this->first_name->SetValue($this->DataSource->first_name->GetValue());
                    $this->last_name->SetValue($this->DataSource->last_name->GetValue());
                    $this->address1->SetValue($this->DataSource->address1->GetValue());
                    $this->address2->SetValue($this->DataSource->address2->GetValue());
                    $this->address3->SetValue($this->DataSource->address3->GetValue());
                    $this->city->SetValue($this->DataSource->city->GetValue());
                    $this->state_id->SetValue($this->DataSource->state_id->GetValue());
                    $this->zip->SetValue($this->DataSource->zip->GetValue());
                    $this->country_id->SetValue($this->DataSource->country_id->GetValue());
                    $this->phone_day->SetValue($this->DataSource->phone_day->GetValue());
                    $this->phone_evening->SetValue($this->DataSource->phone_evening->GetValue());
                    $this->fax->SetValue($this->DataSource->fax->GetValue());
                    $this->email->SetValue($this->DataSource->email->GetValue());
                    $this->ip_add->SetValue($this->DataSource->ip_add->GetValue());
                    $this->ip_update->SetValue($this->DataSource->ip_update->GetValue());
                    $this->date_add->SetValue($this->DataSource->date_add->GetValue());
                    $this->date_last_login->SetValue($this->DataSource->date_last_login->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->user_login->Errors->ToString());
            $Error = ComposeStrings($Error, $this->user_password->Errors->ToString());
            $Error = ComposeStrings($Error, $this->group_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->first_name->Errors->ToString());
            $Error = ComposeStrings($Error, $this->last_name->Errors->ToString());
            $Error = ComposeStrings($Error, $this->address1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->address2->Errors->ToString());
            $Error = ComposeStrings($Error, $this->address3->Errors->ToString());
            $Error = ComposeStrings($Error, $this->city->Errors->ToString());
            $Error = ComposeStrings($Error, $this->state_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->zip->Errors->ToString());
            $Error = ComposeStrings($Error, $this->country_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->phone_day->Errors->ToString());
            $Error = ComposeStrings($Error, $this->phone_evening->Errors->ToString());
            $Error = ComposeStrings($Error, $this->fax->Errors->ToString());
            $Error = ComposeStrings($Error, $this->email->Errors->ToString());
            $Error = ComposeStrings($Error, $this->ip_add->Errors->ToString());
            $Error = ComposeStrings($Error, $this->ip_update->Errors->ToString());
            $Error = ComposeStrings($Error, $this->date_add->Errors->ToString());
            $Error = ComposeStrings($Error, $this->date_last_login->Errors->ToString());
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
        $this->Button_Insert->Visible = !$this->EditMode && $this->InsertAllowed;
        $this->Button_Update->Visible = $this->EditMode && $this->UpdateAllowed;
        $this->Button_Delete->Visible = $this->EditMode && $this->DeleteAllowed;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        $this->Attributes->Show();
        if(!$this->Visible) {
            $Tpl->block_path = $ParentPath;
            return;
        }

        $this->Button_Insert->Show();
        $this->Button_Update->Show();
        $this->Button_Delete->Show();
        $this->Button_Cancel->Show();
        $this->user_login->Show();
        $this->user_password->Show();
        $this->group_id->Show();
        $this->first_name->Show();
        $this->last_name->Show();
        $this->address1->Show();
        $this->address2->Show();
        $this->address3->Show();
        $this->city->Show();
        $this->state_id->Show();
        $this->zip->Show();
        $this->country_id->Show();
        $this->phone_day->Show();
        $this->phone_evening->Show();
        $this->fax->Show();
        $this->email->Show();
        $this->ip_add->Show();
        $this->ip_update->Show();
        $this->date_add->Show();
        $this->date_last_login->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End members Class @88-FCB6E20C

class clsmembersDataSource extends clsDBinternet {  //membersDataSource Class @88-5A86CD19

//DataSource Variables @88-345DD75A
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
    public $user_login;
    public $user_password;
    public $group_id;
    public $first_name;
    public $last_name;
    public $address1;
    public $address2;
    public $address3;
    public $city;
    public $state_id;
    public $zip;
    public $country_id;
    public $phone_day;
    public $phone_evening;
    public $fax;
    public $email;
    public $ip_add;
    public $ip_update;
    public $date_add;
    public $date_last_login;
//End DataSource Variables

//DataSourceClass_Initialize Event @88-C3916261
    function clsmembersDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record members/Error";
        $this->Initialize();
        $this->user_login = new clsField("user_login", ccsText, "");
        
        $this->user_password = new clsField("user_password", ccsText, "");
        
        $this->group_id = new clsField("group_id", ccsInteger, "");
        
        $this->first_name = new clsField("first_name", ccsText, "");
        
        $this->last_name = new clsField("last_name", ccsText, "");
        
        $this->address1 = new clsField("address1", ccsText, "");
        
        $this->address2 = new clsField("address2", ccsText, "");
        
        $this->address3 = new clsField("address3", ccsText, "");
        
        $this->city = new clsField("city", ccsText, "");
        
        $this->state_id = new clsField("state_id", ccsInteger, "");
        
        $this->zip = new clsField("zip", ccsText, "");
        
        $this->country_id = new clsField("country_id", ccsInteger, "");
        
        $this->phone_day = new clsField("phone_day", ccsText, "");
        
        $this->phone_evening = new clsField("phone_evening", ccsText, "");
        
        $this->fax = new clsField("fax", ccsText, "");
        
        $this->email = new clsField("email", ccsText, "");
        
        $this->ip_add = new clsField("ip_add", ccsText, "");
        
        $this->ip_update = new clsField("ip_update", ccsText, "");
        
        $this->date_add = new clsField("date_add", ccsDate, $this->DateFormat);
        
        $this->date_last_login = new clsField("date_last_login", ccsDate, $this->DateFormat);
        

        $this->InsertFields["user_login"] = array("Name" => "user_login", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["user_password"] = array("Name" => "user_password", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["group_id"] = array("Name" => "group_id", "Value" => "", "DataType" => ccsInteger, "OmitIfEmpty" => 1);
        $this->InsertFields["first_name"] = array("Name" => "first_name", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["last_name"] = array("Name" => "last_name", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["address1"] = array("Name" => "address1", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["address2"] = array("Name" => "address2", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["address3"] = array("Name" => "address3", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["city"] = array("Name" => "city", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["state_id"] = array("Name" => "state_id", "Value" => "", "DataType" => ccsInteger, "OmitIfEmpty" => 1);
        $this->InsertFields["zip"] = array("Name" => "zip", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["country_id"] = array("Name" => "country_id", "Value" => "", "DataType" => ccsInteger, "OmitIfEmpty" => 1);
        $this->InsertFields["phone_day"] = array("Name" => "phone_day", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["phone_evening"] = array("Name" => "phone_evening", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["fax"] = array("Name" => "fax", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["email"] = array("Name" => "email", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["ip_add"] = array("Name" => "ip_add", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["ip_update"] = array("Name" => "ip_update", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["date_add"] = array("Name" => "date_add", "Value" => "", "DataType" => ccsDate, "OmitIfEmpty" => 1);
        $this->InsertFields["date_last_login"] = array("Name" => "date_last_login", "Value" => "", "DataType" => ccsDate, "OmitIfEmpty" => 1);
        $this->UpdateFields["user_login"] = array("Name" => "user_login", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["user_password"] = array("Name" => "user_password", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["group_id"] = array("Name" => "group_id", "Value" => "", "DataType" => ccsInteger, "OmitIfEmpty" => 1);
        $this->UpdateFields["first_name"] = array("Name" => "first_name", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["last_name"] = array("Name" => "last_name", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["address1"] = array("Name" => "address1", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["address2"] = array("Name" => "address2", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["address3"] = array("Name" => "address3", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["city"] = array("Name" => "city", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["state_id"] = array("Name" => "state_id", "Value" => "", "DataType" => ccsInteger, "OmitIfEmpty" => 1);
        $this->UpdateFields["zip"] = array("Name" => "zip", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["country_id"] = array("Name" => "country_id", "Value" => "", "DataType" => ccsInteger, "OmitIfEmpty" => 1);
        $this->UpdateFields["phone_day"] = array("Name" => "phone_day", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["phone_evening"] = array("Name" => "phone_evening", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["fax"] = array("Name" => "fax", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["email"] = array("Name" => "email", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["ip_add"] = array("Name" => "ip_add", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["ip_update"] = array("Name" => "ip_update", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["date_add"] = array("Name" => "date_add", "Value" => "", "DataType" => ccsDate, "OmitIfEmpty" => 1);
        $this->UpdateFields["date_last_login"] = array("Name" => "date_last_login", "Value" => "", "DataType" => ccsDate, "OmitIfEmpty" => 1);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @88-10B743D5
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urluser_id", ccsInteger, "", "", $this->Parameters["urluser_id"], "", false);
        $this->wp->AddParameter("2", "urluser_id", ccsInteger, "", "", $this->Parameters["urluser_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "user_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsInteger),false);
        $this->wp->Criterion[2] = $this->wp->Operation(opEqual, "user_id", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsInteger),false);
        $this->Where = $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]);
    }
//End Prepare Method

//Open Method @88-B071412E
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM users {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, $this->Order));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @88-A0D71502
    function SetValues()
    {
        $this->user_login->SetDBValue($this->f("user_login"));
        $this->user_password->SetDBValue($this->f("user_password"));
        $this->group_id->SetDBValue(trim($this->f("group_id")));
        $this->first_name->SetDBValue($this->f("first_name"));
        $this->last_name->SetDBValue($this->f("last_name"));
        $this->address1->SetDBValue($this->f("address1"));
        $this->address2->SetDBValue($this->f("address2"));
        $this->address3->SetDBValue($this->f("address3"));
        $this->city->SetDBValue($this->f("city"));
        $this->state_id->SetDBValue(trim($this->f("state_id")));
        $this->zip->SetDBValue($this->f("zip"));
        $this->country_id->SetDBValue(trim($this->f("country_id")));
        $this->phone_day->SetDBValue($this->f("phone_day"));
        $this->phone_evening->SetDBValue($this->f("phone_evening"));
        $this->fax->SetDBValue($this->f("fax"));
        $this->email->SetDBValue($this->f("email"));
        $this->ip_add->SetDBValue($this->f("ip_add"));
        $this->ip_update->SetDBValue($this->f("ip_update"));
        $this->date_add->SetDBValue(trim($this->f("date_add")));
        $this->date_last_login->SetDBValue(trim($this->f("date_last_login")));
    }
//End SetValues Method

//Insert Method @88-E4BFB1F3
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["user_login"]["Value"] = $this->user_login->GetDBValue(true);
        $this->InsertFields["user_password"]["Value"] = $this->user_password->GetDBValue(true);
        $this->InsertFields["group_id"]["Value"] = $this->group_id->GetDBValue(true);
        $this->InsertFields["first_name"]["Value"] = $this->first_name->GetDBValue(true);
        $this->InsertFields["last_name"]["Value"] = $this->last_name->GetDBValue(true);
        $this->InsertFields["address1"]["Value"] = $this->address1->GetDBValue(true);
        $this->InsertFields["address2"]["Value"] = $this->address2->GetDBValue(true);
        $this->InsertFields["address3"]["Value"] = $this->address3->GetDBValue(true);
        $this->InsertFields["city"]["Value"] = $this->city->GetDBValue(true);
        $this->InsertFields["state_id"]["Value"] = $this->state_id->GetDBValue(true);
        $this->InsertFields["zip"]["Value"] = $this->zip->GetDBValue(true);
        $this->InsertFields["country_id"]["Value"] = $this->country_id->GetDBValue(true);
        $this->InsertFields["phone_day"]["Value"] = $this->phone_day->GetDBValue(true);
        $this->InsertFields["phone_evening"]["Value"] = $this->phone_evening->GetDBValue(true);
        $this->InsertFields["fax"]["Value"] = $this->fax->GetDBValue(true);
        $this->InsertFields["email"]["Value"] = $this->email->GetDBValue(true);
        $this->InsertFields["ip_add"]["Value"] = $this->ip_add->GetDBValue(true);
        $this->InsertFields["ip_update"]["Value"] = $this->ip_update->GetDBValue(true);
        $this->InsertFields["date_add"]["Value"] = $this->date_add->GetDBValue(true);
        $this->InsertFields["date_last_login"]["Value"] = $this->date_last_login->GetDBValue(true);
        $this->SQL = CCBuildInsert("users", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @88-FC08E4AA
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $Where = "";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->UpdateFields["user_login"]["Value"] = $this->user_login->GetDBValue(true);
        $this->UpdateFields["user_password"]["Value"] = $this->user_password->GetDBValue(true);
        $this->UpdateFields["group_id"]["Value"] = $this->group_id->GetDBValue(true);
        $this->UpdateFields["first_name"]["Value"] = $this->first_name->GetDBValue(true);
        $this->UpdateFields["last_name"]["Value"] = $this->last_name->GetDBValue(true);
        $this->UpdateFields["address1"]["Value"] = $this->address1->GetDBValue(true);
        $this->UpdateFields["address2"]["Value"] = $this->address2->GetDBValue(true);
        $this->UpdateFields["address3"]["Value"] = $this->address3->GetDBValue(true);
        $this->UpdateFields["city"]["Value"] = $this->city->GetDBValue(true);
        $this->UpdateFields["state_id"]["Value"] = $this->state_id->GetDBValue(true);
        $this->UpdateFields["zip"]["Value"] = $this->zip->GetDBValue(true);
        $this->UpdateFields["country_id"]["Value"] = $this->country_id->GetDBValue(true);
        $this->UpdateFields["phone_day"]["Value"] = $this->phone_day->GetDBValue(true);
        $this->UpdateFields["phone_evening"]["Value"] = $this->phone_evening->GetDBValue(true);
        $this->UpdateFields["fax"]["Value"] = $this->fax->GetDBValue(true);
        $this->UpdateFields["email"]["Value"] = $this->email->GetDBValue(true);
        $this->UpdateFields["ip_add"]["Value"] = $this->ip_add->GetDBValue(true);
        $this->UpdateFields["ip_update"]["Value"] = $this->ip_update->GetDBValue(true);
        $this->UpdateFields["date_add"]["Value"] = $this->date_add->GetDBValue(true);
        $this->UpdateFields["date_last_login"]["Value"] = $this->date_last_login->GetDBValue(true);
        $this->SQL = CCBuildUpdate("users", $this->UpdateFields, $this);
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

//Delete Method @88-4AB027F1
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $Where = "";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $this->SQL = "DELETE FROM users";
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

} //End membersDataSource Class @88-FCB6E20C

//Include Page implementation @52-3DD2EFDC
include_once(RelativePath . "/Header.php");
//End Include Page implementation

//Include Page implementation @53-39F846CD
include_once(RelativePath . "/AdminMenu.php");
//End Include Page implementation

//Initialize Page @1-2487B912
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
$TemplateFileName = "EditMembers.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$ContentType = "text/html";
$PathToRoot = "./";
//End Initialize Page

//Authenticate User @1-38B04EC7
CCSecurityRedirect("2", "Login.php");
//End Authenticate User

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-B1E66014
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
$members = new clsRecordmembers("", $MainPage);
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
$MainPage->members = & $members;
$MainPage->Menu = & $Menu;
$MainPage->Header = & $Header;
$MainPage->Sidebar1 = & $Sidebar1;
$MainPage->AdminMenu = & $AdminMenu;
$Content->AddComponent("members", $members);
$Menu->AddComponent("Header", $Header);
$Sidebar1->AddComponent("AdminMenu", $AdminMenu);
$members->Initialize();

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

//Execute Components @1-D366DD9E
$MasterPage->Operations();
$AdminMenu->Operations();
$Header->Operations();
$members->Operation();
//End Execute Components

//Go to destination page @1-71257CD5
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBinternet->close();
    header("Location: " . $Redirect);
    unset($members);
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

//Unload Page @1-F508D3FC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBinternet->close();
unset($MasterPage);
unset($members);
$Header->Class_Terminate();
unset($Header);
$AdminMenu->Class_Terminate();
unset($AdminMenu);
unset($Tpl);
//End Unload Page


?>
