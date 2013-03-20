<?php
//Include Common Files @1-E5AE88D3
define("RelativePath", ".");
define("PathToCurrentPage", "/");
define("FileName", "Registration.php");
include_once(RelativePath . "/Common.php");
include_once(RelativePath . "/Template.php");
include_once(RelativePath . "/Sorter.php");
include_once(RelativePath . "/Navigator.php");
//End Include Common Files

//Master Page implementation @1-DB06AD2E
include_once(RelativePath . "/Designs/FarmSong/MasterPage.php");
//End Master Page implementation

class clsRecordmembers { //members Class @59-7B5067C7

//Variables @59-9E315808

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

//Class_Initialize Event @59-44381380
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
            $this->member_login = new clsControl(ccsTextBox, "member_login", "Login", ccsText, "", CCGetRequestParam("member_login", $Method, NULL), $this);
            $this->member_login->Required = true;
            $this->member_password = new clsControl(ccsTextBox, "member_password", "Password", ccsText, "", CCGetRequestParam("member_password", $Method, NULL), $this);
            $this->member_password->Required = true;
            $this->first_name = new clsControl(ccsTextBox, "first_name", "First Name", ccsText, "", CCGetRequestParam("first_name", $Method, NULL), $this);
            $this->first_name->Required = true;
            $this->last_name = new clsControl(ccsTextBox, "last_name", "Last Name", ccsText, "", CCGetRequestParam("last_name", $Method, NULL), $this);
            $this->last_name->Required = true;
            $this->email = new clsControl(ccsTextBox, "email", "Email", ccsText, "", CCGetRequestParam("email", $Method, NULL), $this);
            $this->email->Required = true;
            $this->address1 = new clsControl(ccsTextBox, "address1", "address1", ccsText, "", CCGetRequestParam("address1", $Method, NULL), $this);
            $this->address2 = new clsControl(ccsTextBox, "address2", "address2", ccsText, "", CCGetRequestParam("address2", $Method, NULL), $this);
            $this->address3 = new clsControl(ccsTextBox, "address3", "address3", ccsText, "", CCGetRequestParam("address3", $Method, NULL), $this);
            $this->city = new clsControl(ccsTextBox, "city", "city", ccsText, "", CCGetRequestParam("city", $Method, NULL), $this);
            $this->state_id = new clsControl(ccsListBox, "state_id", "state_id", ccsText, "", CCGetRequestParam("state_id", $Method, NULL), $this);
            $this->state_id->DSType = dsTable;
            $this->state_id->DataSource = new clsDBinternet();
            $this->state_id->ds = & $this->state_id->DataSource;
            $this->state_id->DataSource->SQL = "SELECT * \n" .
"FROM states {SQL_Where} {SQL_OrderBy}";
            list($this->state_id->BoundColumn, $this->state_id->TextColumn, $this->state_id->DBFormat) = array("state_id", "state_name", "");
            $this->zip = new clsControl(ccsTextBox, "zip", "zip", ccsText, "", CCGetRequestParam("zip", $Method, NULL), $this);
            $this->country_id = new clsControl(ccsListBox, "country_id", "country_id", ccsInteger, "", CCGetRequestParam("country_id", $Method, NULL), $this);
            $this->country_id->DSType = dsTable;
            $this->country_id->DataSource = new clsDBinternet();
            $this->country_id->ds = & $this->country_id->DataSource;
            $this->country_id->DataSource->SQL = "SELECT * \n" .
"FROM countries {SQL_Where} {SQL_OrderBy}";
            list($this->country_id->BoundColumn, $this->country_id->TextColumn, $this->country_id->DBFormat) = array("country_id", "country_name", "");
            $this->phone_day = new clsControl(ccsTextBox, "phone_day", "phone_day", ccsText, "", CCGetRequestParam("phone_day", $Method, NULL), $this);
            $this->phone_evn = new clsControl(ccsTextBox, "phone_evn", "phone_evn", ccsText, "", CCGetRequestParam("phone_evn", $Method, NULL), $this);
            $this->fax = new clsControl(ccsTextBox, "fax", "fax", ccsText, "", CCGetRequestParam("fax", $Method, NULL), $this);
            $this->group_id = new clsControl(ccsHidden, "group_id", "group_id", ccsInteger, "", CCGetRequestParam("group_id", $Method, NULL), $this);
            $this->portal_Insert = new clsButton("portal_Insert", $Method, $this);
            $this->portal_Update = new clsButton("portal_Update", $Method, $this);
            $this->portal_Delete = new clsButton("portal_Delete", $Method, $this);
            $this->portal_Cancel = new clsButton("portal_Cancel", $Method, $this);
            if(!$this->FormSubmitted) {
                if(!is_array($this->group_id->Value) && !strlen($this->group_id->Value) && $this->group_id->Value !== false)
                    $this->group_id->SetText(1);
            }
        }
    }
//End Class_Initialize Event

//Initialize Method @59-48D0AC5A
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["sesPortalUserID"] = CCGetSession("PortalUserID", NULL);
    }
//End Initialize Method

//Validate Method @59-BAD38825
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        if($this->EditMode && strlen($this->DataSource->Where))
            $Where = " AND NOT (" . $this->DataSource->Where . ")";
        $this->DataSource->member_login->SetValue($this->member_login->GetValue());
        if(CCDLookUp("COUNT(*)", "users", "user_login=" . $this->DataSource->ToSQL($this->DataSource->member_login->GetDBValue(), $this->DataSource->member_login->DataType) . $Where, $this->DataSource) > 0)
            $this->member_login->Errors->addError($CCSLocales->GetText("CCS_UniqueValue", "Login"));
        $Validation = ($this->member_login->Validate() && $Validation);
        $Validation = ($this->member_password->Validate() && $Validation);
        $Validation = ($this->first_name->Validate() && $Validation);
        $Validation = ($this->last_name->Validate() && $Validation);
        $Validation = ($this->email->Validate() && $Validation);
        $Validation = ($this->address1->Validate() && $Validation);
        $Validation = ($this->address2->Validate() && $Validation);
        $Validation = ($this->address3->Validate() && $Validation);
        $Validation = ($this->city->Validate() && $Validation);
        $Validation = ($this->state_id->Validate() && $Validation);
        $Validation = ($this->zip->Validate() && $Validation);
        $Validation = ($this->country_id->Validate() && $Validation);
        $Validation = ($this->phone_day->Validate() && $Validation);
        $Validation = ($this->phone_evn->Validate() && $Validation);
        $Validation = ($this->fax->Validate() && $Validation);
        $Validation = ($this->group_id->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->member_login->Errors->Count() == 0);
        $Validation =  $Validation && ($this->member_password->Errors->Count() == 0);
        $Validation =  $Validation && ($this->first_name->Errors->Count() == 0);
        $Validation =  $Validation && ($this->last_name->Errors->Count() == 0);
        $Validation =  $Validation && ($this->email->Errors->Count() == 0);
        $Validation =  $Validation && ($this->address1->Errors->Count() == 0);
        $Validation =  $Validation && ($this->address2->Errors->Count() == 0);
        $Validation =  $Validation && ($this->address3->Errors->Count() == 0);
        $Validation =  $Validation && ($this->city->Errors->Count() == 0);
        $Validation =  $Validation && ($this->state_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->zip->Errors->Count() == 0);
        $Validation =  $Validation && ($this->country_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->phone_day->Errors->Count() == 0);
        $Validation =  $Validation && ($this->phone_evn->Errors->Count() == 0);
        $Validation =  $Validation && ($this->fax->Errors->Count() == 0);
        $Validation =  $Validation && ($this->group_id->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @59-D29B1C92
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->member_login->Errors->Count());
        $errors = ($errors || $this->member_password->Errors->Count());
        $errors = ($errors || $this->first_name->Errors->Count());
        $errors = ($errors || $this->last_name->Errors->Count());
        $errors = ($errors || $this->email->Errors->Count());
        $errors = ($errors || $this->address1->Errors->Count());
        $errors = ($errors || $this->address2->Errors->Count());
        $errors = ($errors || $this->address3->Errors->Count());
        $errors = ($errors || $this->city->Errors->Count());
        $errors = ($errors || $this->state_id->Errors->Count());
        $errors = ($errors || $this->zip->Errors->Count());
        $errors = ($errors || $this->country_id->Errors->Count());
        $errors = ($errors || $this->phone_day->Errors->Count());
        $errors = ($errors || $this->phone_evn->Errors->Count());
        $errors = ($errors || $this->fax->Errors->Count());
        $errors = ($errors || $this->group_id->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @59-38BE09FD
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
        $Redirect = "Default.php";
        if($this->PressedButton == "portal_Delete") {
            if(!CCGetEvent($this->portal_Delete->CCSEvents, "OnClick", $this->portal_Delete)) {
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

//InsertRow Method @59-E315CDA7
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->member_login->SetValue($this->member_login->GetValue(true));
        $this->DataSource->member_password->SetValue($this->member_password->GetValue(true));
        $this->DataSource->first_name->SetValue($this->first_name->GetValue(true));
        $this->DataSource->last_name->SetValue($this->last_name->GetValue(true));
        $this->DataSource->email->SetValue($this->email->GetValue(true));
        $this->DataSource->address1->SetValue($this->address1->GetValue(true));
        $this->DataSource->address2->SetValue($this->address2->GetValue(true));
        $this->DataSource->address3->SetValue($this->address3->GetValue(true));
        $this->DataSource->city->SetValue($this->city->GetValue(true));
        $this->DataSource->state_id->SetValue($this->state_id->GetValue(true));
        $this->DataSource->zip->SetValue($this->zip->GetValue(true));
        $this->DataSource->country_id->SetValue($this->country_id->GetValue(true));
        $this->DataSource->phone_day->SetValue($this->phone_day->GetValue(true));
        $this->DataSource->phone_evn->SetValue($this->phone_evn->GetValue(true));
        $this->DataSource->fax->SetValue($this->fax->GetValue(true));
        $this->DataSource->group_id->SetValue($this->group_id->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @59-78C16267
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->member_login->SetValue($this->member_login->GetValue(true));
        $this->DataSource->member_password->SetValue($this->member_password->GetValue(true));
        $this->DataSource->first_name->SetValue($this->first_name->GetValue(true));
        $this->DataSource->last_name->SetValue($this->last_name->GetValue(true));
        $this->DataSource->email->SetValue($this->email->GetValue(true));
        $this->DataSource->address1->SetValue($this->address1->GetValue(true));
        $this->DataSource->address2->SetValue($this->address2->GetValue(true));
        $this->DataSource->address3->SetValue($this->address3->GetValue(true));
        $this->DataSource->city->SetValue($this->city->GetValue(true));
        $this->DataSource->state_id->SetValue($this->state_id->GetValue(true));
        $this->DataSource->zip->SetValue($this->zip->GetValue(true));
        $this->DataSource->country_id->SetValue($this->country_id->GetValue(true));
        $this->DataSource->phone_day->SetValue($this->phone_day->GetValue(true));
        $this->DataSource->phone_evn->SetValue($this->phone_evn->GetValue(true));
        $this->DataSource->fax->SetValue($this->fax->GetValue(true));
        $this->DataSource->group_id->SetValue($this->group_id->GetValue(true));
        $this->DataSource->Update();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterUpdate", $this);
        return (!$this->CheckErrors());
    }
//End UpdateRow Method

//Show Method @59-61A44A62
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
                    $this->member_login->SetValue($this->DataSource->member_login->GetValue());
                    $this->member_password->SetValue($this->DataSource->member_password->GetValue());
                    $this->first_name->SetValue($this->DataSource->first_name->GetValue());
                    $this->last_name->SetValue($this->DataSource->last_name->GetValue());
                    $this->email->SetValue($this->DataSource->email->GetValue());
                    $this->address1->SetValue($this->DataSource->address1->GetValue());
                    $this->address2->SetValue($this->DataSource->address2->GetValue());
                    $this->address3->SetValue($this->DataSource->address3->GetValue());
                    $this->city->SetValue($this->DataSource->city->GetValue());
                    $this->state_id->SetValue($this->DataSource->state_id->GetValue());
                    $this->zip->SetValue($this->DataSource->zip->GetValue());
                    $this->country_id->SetValue($this->DataSource->country_id->GetValue());
                    $this->phone_day->SetValue($this->DataSource->phone_day->GetValue());
                    $this->phone_evn->SetValue($this->DataSource->phone_evn->GetValue());
                    $this->fax->SetValue($this->DataSource->fax->GetValue());
                    $this->group_id->SetValue($this->DataSource->group_id->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->member_login->Errors->ToString());
            $Error = ComposeStrings($Error, $this->member_password->Errors->ToString());
            $Error = ComposeStrings($Error, $this->first_name->Errors->ToString());
            $Error = ComposeStrings($Error, $this->last_name->Errors->ToString());
            $Error = ComposeStrings($Error, $this->email->Errors->ToString());
            $Error = ComposeStrings($Error, $this->address1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->address2->Errors->ToString());
            $Error = ComposeStrings($Error, $this->address3->Errors->ToString());
            $Error = ComposeStrings($Error, $this->city->Errors->ToString());
            $Error = ComposeStrings($Error, $this->state_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->zip->Errors->ToString());
            $Error = ComposeStrings($Error, $this->country_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->phone_day->Errors->ToString());
            $Error = ComposeStrings($Error, $this->phone_evn->Errors->ToString());
            $Error = ComposeStrings($Error, $this->fax->Errors->ToString());
            $Error = ComposeStrings($Error, $this->group_id->Errors->ToString());
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

        $this->member_login->Show();
        $this->member_password->Show();
        $this->first_name->Show();
        $this->last_name->Show();
        $this->email->Show();
        $this->address1->Show();
        $this->address2->Show();
        $this->address3->Show();
        $this->city->Show();
        $this->state_id->Show();
        $this->zip->Show();
        $this->country_id->Show();
        $this->phone_day->Show();
        $this->phone_evn->Show();
        $this->fax->Show();
        $this->group_id->Show();
        $this->portal_Insert->Show();
        $this->portal_Update->Show();
        $this->portal_Delete->Show();
        $this->portal_Cancel->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End members Class @59-FCB6E20C

class clsmembersDataSource extends clsDBinternet {  //membersDataSource Class @59-5A86CD19

//DataSource Variables @59-24424898
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $InsertParameters;
    public $UpdateParameters;
    public $wp;
    public $AllParametersSet;

    public $InsertFields = array();
    public $UpdateFields = array();

    // Datasource fields
    public $member_login;
    public $member_password;
    public $first_name;
    public $last_name;
    public $email;
    public $address1;
    public $address2;
    public $address3;
    public $city;
    public $state_id;
    public $zip;
    public $country_id;
    public $phone_day;
    public $phone_evn;
    public $fax;
    public $group_id;
//End DataSource Variables

//DataSourceClass_Initialize Event @59-06868388
    function clsmembersDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record members/Error";
        $this->Initialize();
        $this->member_login = new clsField("member_login", ccsText, "");
        
        $this->member_password = new clsField("member_password", ccsText, "");
        
        $this->first_name = new clsField("first_name", ccsText, "");
        
        $this->last_name = new clsField("last_name", ccsText, "");
        
        $this->email = new clsField("email", ccsText, "");
        
        $this->address1 = new clsField("address1", ccsText, "");
        
        $this->address2 = new clsField("address2", ccsText, "");
        
        $this->address3 = new clsField("address3", ccsText, "");
        
        $this->city = new clsField("city", ccsText, "");
        
        $this->state_id = new clsField("state_id", ccsText, "");
        
        $this->zip = new clsField("zip", ccsText, "");
        
        $this->country_id = new clsField("country_id", ccsInteger, "");
        
        $this->phone_day = new clsField("phone_day", ccsText, "");
        
        $this->phone_evn = new clsField("phone_evn", ccsText, "");
        
        $this->fax = new clsField("fax", ccsText, "");
        
        $this->group_id = new clsField("group_id", ccsInteger, "");
        

        $this->InsertFields["user_login"] = array("Name" => "user_login", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["user_password"] = array("Name" => "user_password", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["first_name"] = array("Name" => "first_name", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["last_name"] = array("Name" => "last_name", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["email"] = array("Name" => "email", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["address1"] = array("Name" => "address1", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["address2"] = array("Name" => "address2", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["address3"] = array("Name" => "address3", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["city"] = array("Name" => "city", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["state_id"] = array("Name" => "state_id", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["zip"] = array("Name" => "zip", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["country_id"] = array("Name" => "country_id", "Value" => "", "DataType" => ccsInteger, "OmitIfEmpty" => 1);
        $this->InsertFields["phone_day"] = array("Name" => "phone_day", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["phone_evening"] = array("Name" => "phone_evening", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["fax"] = array("Name" => "fax", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["group_id"] = array("Name" => "group_id", "Value" => "", "DataType" => ccsInteger, "OmitIfEmpty" => 1);
        $this->UpdateFields["user_login"] = array("Name" => "user_login", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["user_password"] = array("Name" => "user_password", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["first_name"] = array("Name" => "first_name", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["last_name"] = array("Name" => "last_name", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["email"] = array("Name" => "email", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["address1"] = array("Name" => "address1", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["address2"] = array("Name" => "address2", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["address3"] = array("Name" => "address3", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["city"] = array("Name" => "city", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["state_id"] = array("Name" => "state_id", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["zip"] = array("Name" => "zip", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["country_id"] = array("Name" => "country_id", "Value" => "", "DataType" => ccsInteger, "OmitIfEmpty" => 1);
        $this->UpdateFields["phone_day"] = array("Name" => "phone_day", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["phone_evening"] = array("Name" => "phone_evening", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["fax"] = array("Name" => "fax", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["group_id"] = array("Name" => "group_id", "Value" => "", "DataType" => ccsInteger, "OmitIfEmpty" => 1);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @59-B846865C
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "sesPortalUserID", ccsInteger, "", "", $this->Parameters["sesPortalUserID"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "user_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsInteger),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @59-B071412E
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

//SetValues Method @59-655DAE71
    function SetValues()
    {
        $this->member_login->SetDBValue($this->f("user_login"));
        $this->member_password->SetDBValue($this->f("user_password"));
        $this->first_name->SetDBValue($this->f("first_name"));
        $this->last_name->SetDBValue($this->f("last_name"));
        $this->email->SetDBValue($this->f("email"));
        $this->address1->SetDBValue($this->f("address1"));
        $this->address2->SetDBValue($this->f("address2"));
        $this->address3->SetDBValue($this->f("address3"));
        $this->city->SetDBValue($this->f("city"));
        $this->state_id->SetDBValue($this->f("state_id"));
        $this->zip->SetDBValue($this->f("zip"));
        $this->country_id->SetDBValue(trim($this->f("country_id")));
        $this->phone_day->SetDBValue($this->f("phone_day"));
        $this->phone_evn->SetDBValue($this->f("phone_evening"));
        $this->fax->SetDBValue($this->f("fax"));
        $this->group_id->SetDBValue(trim($this->f("group_id")));
    }
//End SetValues Method

//Insert Method @59-5798037F
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["user_login"]["Value"] = $this->member_login->GetDBValue(true);
        $this->InsertFields["user_password"]["Value"] = $this->member_password->GetDBValue(true);
        $this->InsertFields["first_name"]["Value"] = $this->first_name->GetDBValue(true);
        $this->InsertFields["last_name"]["Value"] = $this->last_name->GetDBValue(true);
        $this->InsertFields["email"]["Value"] = $this->email->GetDBValue(true);
        $this->InsertFields["address1"]["Value"] = $this->address1->GetDBValue(true);
        $this->InsertFields["address2"]["Value"] = $this->address2->GetDBValue(true);
        $this->InsertFields["address3"]["Value"] = $this->address3->GetDBValue(true);
        $this->InsertFields["city"]["Value"] = $this->city->GetDBValue(true);
        $this->InsertFields["state_id"]["Value"] = $this->state_id->GetDBValue(true);
        $this->InsertFields["zip"]["Value"] = $this->zip->GetDBValue(true);
        $this->InsertFields["country_id"]["Value"] = $this->country_id->GetDBValue(true);
        $this->InsertFields["phone_day"]["Value"] = $this->phone_day->GetDBValue(true);
        $this->InsertFields["phone_evening"]["Value"] = $this->phone_evn->GetDBValue(true);
        $this->InsertFields["fax"]["Value"] = $this->fax->GetDBValue(true);
        $this->InsertFields["group_id"]["Value"] = $this->group_id->GetDBValue(true);
        $this->SQL = CCBuildInsert("users", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @59-002F8B56
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $Where = "";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->UpdateFields["user_login"]["Value"] = $this->member_login->GetDBValue(true);
        $this->UpdateFields["user_password"]["Value"] = $this->member_password->GetDBValue(true);
        $this->UpdateFields["first_name"]["Value"] = $this->first_name->GetDBValue(true);
        $this->UpdateFields["last_name"]["Value"] = $this->last_name->GetDBValue(true);
        $this->UpdateFields["email"]["Value"] = $this->email->GetDBValue(true);
        $this->UpdateFields["address1"]["Value"] = $this->address1->GetDBValue(true);
        $this->UpdateFields["address2"]["Value"] = $this->address2->GetDBValue(true);
        $this->UpdateFields["address3"]["Value"] = $this->address3->GetDBValue(true);
        $this->UpdateFields["city"]["Value"] = $this->city->GetDBValue(true);
        $this->UpdateFields["state_id"]["Value"] = $this->state_id->GetDBValue(true);
        $this->UpdateFields["zip"]["Value"] = $this->zip->GetDBValue(true);
        $this->UpdateFields["country_id"]["Value"] = $this->country_id->GetDBValue(true);
        $this->UpdateFields["phone_day"]["Value"] = $this->phone_day->GetDBValue(true);
        $this->UpdateFields["phone_evening"]["Value"] = $this->phone_evn->GetDBValue(true);
        $this->UpdateFields["fax"]["Value"] = $this->fax->GetDBValue(true);
        $this->UpdateFields["group_id"]["Value"] = $this->group_id->GetDBValue(true);
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

} //End membersDataSource Class @59-FCB6E20C

//Include Page implementation @55-3DD2EFDC
include_once(RelativePath . "/Header.php");
//End Include Page implementation

//Initialize Page @1-EFCD9305
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
$TemplateFileName = "Registration.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$ContentType = "text/html";
$PathToRoot = "./";
//End Initialize Page

//Include events file @1-8727BF55
include_once("./Registration_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-C1F62193
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
$MainPage->Head = & $Head;
$MainPage->Content = & $Content;
$MainPage->members = & $members;
$MainPage->Menu = & $Menu;
$MainPage->Header = & $Header;
$MainPage->Sidebar1 = & $Sidebar1;
$Content->AddComponent("members", $members);
$Menu->AddComponent("Header", $Header);
$members->Initialize();

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

//Execute Components @1-8F6D51DE
$MasterPage->Operations();
$Header->Operations();
$members->Operation();
//End Execute Components

//Go to destination page @1-9253F0E9
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBinternet->close();
    header("Location: " . $Redirect);
    unset($members);
    $Header->Class_Terminate();
    unset($Header);
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

//Unload Page @1-CAF1D8A8
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBinternet->close();
unset($MasterPage);
unset($members);
$Header->Class_Terminate();
unset($Header);
unset($Tpl);
//End Unload Page


?>
