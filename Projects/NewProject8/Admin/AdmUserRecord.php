<?php
//Include Common Files @1-32B7FB3D
define("RelativePath", "..");
define("PathToCurrentPage", "/Admin/");
define("FileName", "AdmUserRecord.php");
include_once(RelativePath . "/Common.php");
include_once(RelativePath . "/Template.php");
include_once(RelativePath . "/Sorter.php");
include_once(RelativePath . "/Navigator.php");
//End Include Common Files

//Master Page implementation @1-61A23584
include_once(RelativePath . "/Designs/BookStore/MasterPage.php");
//End Master Page implementation

class clsRecordusers { //users Class @39-9BE1AF6F

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

//Class_Initialize Event @39-F0F03E43
    function clsRecordusers($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record users/Error";
        $this->DataSource = new clsusersDataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        $this->UpdateAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "users";
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
            $this->first_name = new clsControl(ccsTextBox, "first_name", "First Name", ccsText, "", CCGetRequestParam("first_name", $Method, NULL), $this);
            $this->first_name->Required = true;
            $this->last_name = new clsControl(ccsTextBox, "last_name", "Last Name", ccsText, "", CCGetRequestParam("last_name", $Method, NULL), $this);
            $this->last_name->Required = true;
            $this->group_id = new clsControl(ccsListBox, "group_id", "Group Id", ccsInteger, "", CCGetRequestParam("group_id", $Method, NULL), $this);
            $this->group_id->DSType = dsTable;
            $this->group_id->DataSource = new clsDBInternetDB();
            $this->group_id->ds = & $this->group_id->DataSource;
            $this->group_id->DataSource->SQL = "SELECT * \n" .
"FROM user_groups {SQL_Where} {SQL_OrderBy}";
            list($this->group_id->BoundColumn, $this->group_id->TextColumn, $this->group_id->DBFormat) = array("group_id", "group_name", "");
            $this->group_id->Required = true;
            $this->phone_home = new clsControl(ccsTextBox, "phone_home", "Phone Home", ccsText, "", CCGetRequestParam("phone_home", $Method, NULL), $this);
            $this->phone_work = new clsControl(ccsTextBox, "phone_work", "Phone Work", ccsText, "", CCGetRequestParam("phone_work", $Method, NULL), $this);
            $this->email = new clsControl(ccsTextBox, "email", "Email", ccsText, "", CCGetRequestParam("email", $Method, NULL), $this);
            $this->card_number = new clsControl(ccsTextBox, "card_number", "Card Number", ccsText, "", CCGetRequestParam("card_number", $Method, NULL), $this);
            $this->card_expire_date = new clsControl(ccsTextBox, "card_expire_date", "Card Expire Date", ccsText, "", CCGetRequestParam("card_expire_date", $Method, NULL), $this);
            $this->country_id = new clsControl(ccsListBox, "country_id", "Country Id", ccsInteger, "", CCGetRequestParam("country_id", $Method, NULL), $this);
            $this->country_id->DSType = dsTable;
            $this->country_id->DataSource = new clsDBInternetDB();
            $this->country_id->ds = & $this->country_id->DataSource;
            $this->country_id->DataSource->SQL = "SELECT * \n" .
"FROM countries {SQL_Where} {SQL_OrderBy}";
            list($this->country_id->BoundColumn, $this->country_id->TextColumn, $this->country_id->DBFormat) = array("country_id", "country_name", "");
            $this->state_id = new clsControl(ccsListBox, "state_id", "State Id", ccsInteger, "", CCGetRequestParam("state_id", $Method, NULL), $this);
            $this->state_id->DSType = dsTable;
            $this->state_id->DataSource = new clsDBInternetDB();
            $this->state_id->ds = & $this->state_id->DataSource;
            $this->state_id->DataSource->SQL = "SELECT * \n" .
"FROM states {SQL_Where} {SQL_OrderBy}";
            list($this->state_id->BoundColumn, $this->state_id->TextColumn, $this->state_id->DBFormat) = array("state_id", "state_name", "");
            $this->city = new clsControl(ccsTextBox, "city", "City", ccsText, "", CCGetRequestParam("city", $Method, NULL), $this);
            $this->zip = new clsControl(ccsTextBox, "zip", "Zip", ccsText, "", CCGetRequestParam("zip", $Method, NULL), $this);
            $this->address1 = new clsControl(ccsTextBox, "address1", "Address1", ccsText, "", CCGetRequestParam("address1", $Method, NULL), $this);
        }
    }
//End Class_Initialize Event

//Initialize Method @39-53A359F1
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urluser_id"] = CCGetFromGet("user_id", NULL);
    }
//End Initialize Method

//Validate Method @39-DC378F11
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->user_login->Validate() && $Validation);
        $Validation = ($this->user_password->Validate() && $Validation);
        $Validation = ($this->first_name->Validate() && $Validation);
        $Validation = ($this->last_name->Validate() && $Validation);
        $Validation = ($this->group_id->Validate() && $Validation);
        $Validation = ($this->phone_home->Validate() && $Validation);
        $Validation = ($this->phone_work->Validate() && $Validation);
        $Validation = ($this->email->Validate() && $Validation);
        $Validation = ($this->card_number->Validate() && $Validation);
        $Validation = ($this->card_expire_date->Validate() && $Validation);
        $Validation = ($this->country_id->Validate() && $Validation);
        $Validation = ($this->state_id->Validate() && $Validation);
        $Validation = ($this->city->Validate() && $Validation);
        $Validation = ($this->zip->Validate() && $Validation);
        $Validation = ($this->address1->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->user_login->Errors->Count() == 0);
        $Validation =  $Validation && ($this->user_password->Errors->Count() == 0);
        $Validation =  $Validation && ($this->first_name->Errors->Count() == 0);
        $Validation =  $Validation && ($this->last_name->Errors->Count() == 0);
        $Validation =  $Validation && ($this->group_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->phone_home->Errors->Count() == 0);
        $Validation =  $Validation && ($this->phone_work->Errors->Count() == 0);
        $Validation =  $Validation && ($this->email->Errors->Count() == 0);
        $Validation =  $Validation && ($this->card_number->Errors->Count() == 0);
        $Validation =  $Validation && ($this->card_expire_date->Errors->Count() == 0);
        $Validation =  $Validation && ($this->country_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->state_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->city->Errors->Count() == 0);
        $Validation =  $Validation && ($this->zip->Errors->Count() == 0);
        $Validation =  $Validation && ($this->address1->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @39-1C8AD19F
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->user_login->Errors->Count());
        $errors = ($errors || $this->user_password->Errors->Count());
        $errors = ($errors || $this->first_name->Errors->Count());
        $errors = ($errors || $this->last_name->Errors->Count());
        $errors = ($errors || $this->group_id->Errors->Count());
        $errors = ($errors || $this->phone_home->Errors->Count());
        $errors = ($errors || $this->phone_work->Errors->Count());
        $errors = ($errors || $this->email->Errors->Count());
        $errors = ($errors || $this->card_number->Errors->Count());
        $errors = ($errors || $this->card_expire_date->Errors->Count());
        $errors = ($errors || $this->country_id->Errors->Count());
        $errors = ($errors || $this->state_id->Errors->Count());
        $errors = ($errors || $this->city->Errors->Count());
        $errors = ($errors || $this->zip->Errors->Count());
        $errors = ($errors || $this->address1->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @39-54974991
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
        $Redirect = "AdmUsers.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "user_id"));
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

//InsertRow Method @39-BF6DF515
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->user_login->SetValue($this->user_login->GetValue(true));
        $this->DataSource->user_password->SetValue($this->user_password->GetValue(true));
        $this->DataSource->first_name->SetValue($this->first_name->GetValue(true));
        $this->DataSource->last_name->SetValue($this->last_name->GetValue(true));
        $this->DataSource->group_id->SetValue($this->group_id->GetValue(true));
        $this->DataSource->phone_home->SetValue($this->phone_home->GetValue(true));
        $this->DataSource->phone_work->SetValue($this->phone_work->GetValue(true));
        $this->DataSource->email->SetValue($this->email->GetValue(true));
        $this->DataSource->card_number->SetValue($this->card_number->GetValue(true));
        $this->DataSource->card_expire_date->SetValue($this->card_expire_date->GetValue(true));
        $this->DataSource->country_id->SetValue($this->country_id->GetValue(true));
        $this->DataSource->state_id->SetValue($this->state_id->GetValue(true));
        $this->DataSource->city->SetValue($this->city->GetValue(true));
        $this->DataSource->zip->SetValue($this->zip->GetValue(true));
        $this->DataSource->address1->SetValue($this->address1->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @39-85A44428
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->user_login->SetValue($this->user_login->GetValue(true));
        $this->DataSource->user_password->SetValue($this->user_password->GetValue(true));
        $this->DataSource->first_name->SetValue($this->first_name->GetValue(true));
        $this->DataSource->last_name->SetValue($this->last_name->GetValue(true));
        $this->DataSource->group_id->SetValue($this->group_id->GetValue(true));
        $this->DataSource->phone_home->SetValue($this->phone_home->GetValue(true));
        $this->DataSource->phone_work->SetValue($this->phone_work->GetValue(true));
        $this->DataSource->email->SetValue($this->email->GetValue(true));
        $this->DataSource->card_number->SetValue($this->card_number->GetValue(true));
        $this->DataSource->card_expire_date->SetValue($this->card_expire_date->GetValue(true));
        $this->DataSource->country_id->SetValue($this->country_id->GetValue(true));
        $this->DataSource->state_id->SetValue($this->state_id->GetValue(true));
        $this->DataSource->city->SetValue($this->city->GetValue(true));
        $this->DataSource->zip->SetValue($this->zip->GetValue(true));
        $this->DataSource->address1->SetValue($this->address1->GetValue(true));
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

//Show Method @39-0005FB6E
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
        $this->country_id->Prepare();
        $this->state_id->Prepare();

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
                    $this->first_name->SetValue($this->DataSource->first_name->GetValue());
                    $this->last_name->SetValue($this->DataSource->last_name->GetValue());
                    $this->group_id->SetValue($this->DataSource->group_id->GetValue());
                    $this->phone_home->SetValue($this->DataSource->phone_home->GetValue());
                    $this->phone_work->SetValue($this->DataSource->phone_work->GetValue());
                    $this->email->SetValue($this->DataSource->email->GetValue());
                    $this->card_number->SetValue($this->DataSource->card_number->GetValue());
                    $this->card_expire_date->SetValue($this->DataSource->card_expire_date->GetValue());
                    $this->country_id->SetValue($this->DataSource->country_id->GetValue());
                    $this->state_id->SetValue($this->DataSource->state_id->GetValue());
                    $this->city->SetValue($this->DataSource->city->GetValue());
                    $this->zip->SetValue($this->DataSource->zip->GetValue());
                    $this->address1->SetValue($this->DataSource->address1->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->user_login->Errors->ToString());
            $Error = ComposeStrings($Error, $this->user_password->Errors->ToString());
            $Error = ComposeStrings($Error, $this->first_name->Errors->ToString());
            $Error = ComposeStrings($Error, $this->last_name->Errors->ToString());
            $Error = ComposeStrings($Error, $this->group_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->phone_home->Errors->ToString());
            $Error = ComposeStrings($Error, $this->phone_work->Errors->ToString());
            $Error = ComposeStrings($Error, $this->email->Errors->ToString());
            $Error = ComposeStrings($Error, $this->card_number->Errors->ToString());
            $Error = ComposeStrings($Error, $this->card_expire_date->Errors->ToString());
            $Error = ComposeStrings($Error, $this->country_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->state_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->city->Errors->ToString());
            $Error = ComposeStrings($Error, $this->zip->Errors->ToString());
            $Error = ComposeStrings($Error, $this->address1->Errors->ToString());
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
        $this->first_name->Show();
        $this->last_name->Show();
        $this->group_id->Show();
        $this->phone_home->Show();
        $this->phone_work->Show();
        $this->email->Show();
        $this->card_number->Show();
        $this->card_expire_date->Show();
        $this->country_id->Show();
        $this->state_id->Show();
        $this->city->Show();
        $this->zip->Show();
        $this->address1->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End users Class @39-FCB6E20C

class clsusersDataSource extends clsDBInternetDB {  //usersDataSource Class @39-705B533D

//DataSource Variables @39-DE49DE28
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
    public $first_name;
    public $last_name;
    public $group_id;
    public $phone_home;
    public $phone_work;
    public $email;
    public $card_number;
    public $card_expire_date;
    public $country_id;
    public $state_id;
    public $city;
    public $zip;
    public $address1;
//End DataSource Variables

//DataSourceClass_Initialize Event @39-42D74766
    function clsusersDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record users/Error";
        $this->Initialize();
        $this->user_login = new clsField("user_login", ccsText, "");
        
        $this->user_password = new clsField("user_password", ccsText, "");
        
        $this->first_name = new clsField("first_name", ccsText, "");
        
        $this->last_name = new clsField("last_name", ccsText, "");
        
        $this->group_id = new clsField("group_id", ccsInteger, "");
        
        $this->phone_home = new clsField("phone_home", ccsText, "");
        
        $this->phone_work = new clsField("phone_work", ccsText, "");
        
        $this->email = new clsField("email", ccsText, "");
        
        $this->card_number = new clsField("card_number", ccsText, "");
        
        $this->card_expire_date = new clsField("card_expire_date", ccsText, "");
        
        $this->country_id = new clsField("country_id", ccsInteger, "");
        
        $this->state_id = new clsField("state_id", ccsInteger, "");
        
        $this->city = new clsField("city", ccsText, "");
        
        $this->zip = new clsField("zip", ccsText, "");
        
        $this->address1 = new clsField("address1", ccsText, "");
        

        $this->InsertFields["user_login"] = array("Name" => "user_login", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["user_password"] = array("Name" => "user_password", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["first_name"] = array("Name" => "first_name", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["last_name"] = array("Name" => "last_name", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["group_id"] = array("Name" => "group_id", "Value" => "", "DataType" => ccsInteger, "OmitIfEmpty" => 1);
        $this->InsertFields["phone_home"] = array("Name" => "phone_home", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["phone_work"] = array("Name" => "phone_work", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["email"] = array("Name" => "email", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["card_number"] = array("Name" => "card_number", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["card_expire_date"] = array("Name" => "card_expire_date", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["country_id"] = array("Name" => "country_id", "Value" => "", "DataType" => ccsInteger, "OmitIfEmpty" => 1);
        $this->InsertFields["state_id"] = array("Name" => "state_id", "Value" => "", "DataType" => ccsInteger, "OmitIfEmpty" => 1);
        $this->InsertFields["city"] = array("Name" => "city", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["zip"] = array("Name" => "zip", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["address1"] = array("Name" => "address1", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["user_login"] = array("Name" => "user_login", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["user_password"] = array("Name" => "user_password", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["first_name"] = array("Name" => "first_name", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["last_name"] = array("Name" => "last_name", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["group_id"] = array("Name" => "group_id", "Value" => "", "DataType" => ccsInteger, "OmitIfEmpty" => 1);
        $this->UpdateFields["phone_home"] = array("Name" => "phone_home", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["phone_work"] = array("Name" => "phone_work", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["email"] = array("Name" => "email", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["card_number"] = array("Name" => "card_number", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["card_expire_date"] = array("Name" => "card_expire_date", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["country_id"] = array("Name" => "country_id", "Value" => "", "DataType" => ccsInteger, "OmitIfEmpty" => 1);
        $this->UpdateFields["state_id"] = array("Name" => "state_id", "Value" => "", "DataType" => ccsInteger, "OmitIfEmpty" => 1);
        $this->UpdateFields["city"] = array("Name" => "city", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["zip"] = array("Name" => "zip", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["address1"] = array("Name" => "address1", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @39-B49E291C
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urluser_id", ccsInteger, "", "", $this->Parameters["urluser_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "user_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsInteger),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @39-B071412E
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

//SetValues Method @39-0FD5668D
    function SetValues()
    {
        $this->user_login->SetDBValue($this->f("user_login"));
        $this->user_password->SetDBValue($this->f("user_password"));
        $this->first_name->SetDBValue($this->f("first_name"));
        $this->last_name->SetDBValue($this->f("last_name"));
        $this->group_id->SetDBValue(trim($this->f("group_id")));
        $this->phone_home->SetDBValue($this->f("phone_home"));
        $this->phone_work->SetDBValue($this->f("phone_work"));
        $this->email->SetDBValue($this->f("email"));
        $this->card_number->SetDBValue($this->f("card_number"));
        $this->card_expire_date->SetDBValue($this->f("card_expire_date"));
        $this->country_id->SetDBValue(trim($this->f("country_id")));
        $this->state_id->SetDBValue(trim($this->f("state_id")));
        $this->city->SetDBValue($this->f("city"));
        $this->zip->SetDBValue($this->f("zip"));
        $this->address1->SetDBValue($this->f("address1"));
    }
//End SetValues Method

//Insert Method @39-4A921ED4
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["user_login"]["Value"] = $this->user_login->GetDBValue(true);
        $this->InsertFields["user_password"]["Value"] = $this->user_password->GetDBValue(true);
        $this->InsertFields["first_name"]["Value"] = $this->first_name->GetDBValue(true);
        $this->InsertFields["last_name"]["Value"] = $this->last_name->GetDBValue(true);
        $this->InsertFields["group_id"]["Value"] = $this->group_id->GetDBValue(true);
        $this->InsertFields["phone_home"]["Value"] = $this->phone_home->GetDBValue(true);
        $this->InsertFields["phone_work"]["Value"] = $this->phone_work->GetDBValue(true);
        $this->InsertFields["email"]["Value"] = $this->email->GetDBValue(true);
        $this->InsertFields["card_number"]["Value"] = $this->card_number->GetDBValue(true);
        $this->InsertFields["card_expire_date"]["Value"] = $this->card_expire_date->GetDBValue(true);
        $this->InsertFields["country_id"]["Value"] = $this->country_id->GetDBValue(true);
        $this->InsertFields["state_id"]["Value"] = $this->state_id->GetDBValue(true);
        $this->InsertFields["city"]["Value"] = $this->city->GetDBValue(true);
        $this->InsertFields["zip"]["Value"] = $this->zip->GetDBValue(true);
        $this->InsertFields["address1"]["Value"] = $this->address1->GetDBValue(true);
        $this->SQL = CCBuildInsert("users", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @39-2637D57B
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $Where = "";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->UpdateFields["user_login"]["Value"] = $this->user_login->GetDBValue(true);
        $this->UpdateFields["user_password"]["Value"] = $this->user_password->GetDBValue(true);
        $this->UpdateFields["first_name"]["Value"] = $this->first_name->GetDBValue(true);
        $this->UpdateFields["last_name"]["Value"] = $this->last_name->GetDBValue(true);
        $this->UpdateFields["group_id"]["Value"] = $this->group_id->GetDBValue(true);
        $this->UpdateFields["phone_home"]["Value"] = $this->phone_home->GetDBValue(true);
        $this->UpdateFields["phone_work"]["Value"] = $this->phone_work->GetDBValue(true);
        $this->UpdateFields["email"]["Value"] = $this->email->GetDBValue(true);
        $this->UpdateFields["card_number"]["Value"] = $this->card_number->GetDBValue(true);
        $this->UpdateFields["card_expire_date"]["Value"] = $this->card_expire_date->GetDBValue(true);
        $this->UpdateFields["country_id"]["Value"] = $this->country_id->GetDBValue(true);
        $this->UpdateFields["state_id"]["Value"] = $this->state_id->GetDBValue(true);
        $this->UpdateFields["city"]["Value"] = $this->city->GetDBValue(true);
        $this->UpdateFields["zip"]["Value"] = $this->zip->GetDBValue(true);
        $this->UpdateFields["address1"]["Value"] = $this->address1->GetDBValue(true);
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

//Delete Method @39-4AB027F1
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

} //End usersDataSource Class @39-FCB6E20C

//Include Page implementation @37-1A7B89D7
include_once(RelativePath . "/Admin/AdmHeader.php");
//End Include Page implementation

//Include Page implementation @38-594D0A6B
include_once(RelativePath . "/Admin/AdmMenu.php");
//End Include Page implementation

//Initialize Page @1-5ADA5C0C
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
$TemplateFileName = "AdmUserRecord.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$ContentType = "text/html";
$PathToRoot = "../";
//End Initialize Page

//Authenticate User @1-872FD3D7
CCSecurityRedirect("", "");
//End Authenticate User

//Include events file @1-F189DE29
include_once("./AdmUserRecord_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-CC3AA232
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
$users = new clsRecordusers("", $MainPage);
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
$MainPage->users = & $users;
$MainPage->Menu = & $Menu;
$MainPage->AdmHeader = & $AdmHeader;
$MainPage->Sidebar = & $Sidebar;
$MainPage->AdmMenu = & $AdmMenu;
$Content->AddComponent("users", $users);
$Menu->AddComponent("AdmHeader", $AdmHeader);
$Sidebar->AddComponent("AdmMenu", $AdmMenu);
$users->Initialize();

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

//Execute Components @1-D3F3F166
$MasterPage->Operations();
$AdmMenu->Operations();
$AdmHeader->Operations();
$users->Operation();
//End Execute Components

//Go to destination page @1-A29DAEF0
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBInternetDB->close();
    header("Location: " . $Redirect);
    unset($users);
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

//Unload Page @1-CA982058
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBInternetDB->close();
unset($MasterPage);
unset($users);
$AdmHeader->Class_Terminate();
unset($AdmHeader);
$AdmMenu->Class_Terminate();
unset($AdmMenu);
unset($Tpl);
//End Unload Page


?>
