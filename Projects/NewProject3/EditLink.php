<?php
//Include Common Files @1-CA95AE34
define("RelativePath", ".");
define("PathToCurrentPage", "/");
define("FileName", "EditLink.php");
include_once(RelativePath . "/Common.php");
include_once(RelativePath . "/Template.php");
include_once(RelativePath . "/Sorter.php");
include_once(RelativePath . "/Navigator.php");
//End Include Common Files

//Master Page implementation @1-DB06AD2E
include_once(RelativePath . "/Designs/FarmSong/MasterPage.php");
//End Master Page implementation

class clsRecordlinks { //links Class @43-519E6CE1

//Variables @43-9E315808

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

//Class_Initialize Event @43-91AFD60A
    function clsRecordlinks($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record links/Error";
        $this->DataSource = new clslinksDataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        $this->UpdateAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "links";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = explode(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->category_id = new clsControl(ccsListBox, "category_id", "Category", ccsInteger, "", CCGetRequestParam("category_id", $Method, NULL), $this);
            $this->category_id->DSType = dsTable;
            $this->category_id->DataSource = new clsDBinternet();
            $this->category_id->ds = & $this->category_id->DataSource;
            $this->category_id->DataSource->SQL = "SELECT * \n" .
"FROM event_categories {SQL_Where} {SQL_OrderBy}";
            $this->category_id->DataSource->Order = "category_name";
            list($this->category_id->BoundColumn, $this->category_id->TextColumn, $this->category_id->DBFormat) = array("category_id", "category_name", "");
            $this->category_id->DataSource->Order = "category_name";
            $this->category_id->Required = true;
            $this->link_name = new clsControl(ccsTextBox, "link_name", "Link Title", ccsText, "", CCGetRequestParam("link_name", $Method, NULL), $this);
            $this->link_name->Required = true;
            $this->link_url = new clsControl(ccsTextBox, "link_url", "URL", ccsText, "", CCGetRequestParam("link_url", $Method, NULL), $this);
            $this->link_url->Required = true;
            $this->address = new clsControl(ccsTextArea, "address", "Address", ccsMemo, "", CCGetRequestParam("address", $Method, NULL), $this);
            $this->address->Required = true;
            $this->approved = new clsControl(ccsCheckBox, "approved", "approved", ccsInteger, "", CCGetRequestParam("approved", $Method, NULL), $this);
            $this->approved->CheckedValue = $this->approved->GetParsedValue(1);
            $this->approved->UncheckedValue = $this->approved->GetParsedValue(0);
            $this->date_approved = new clsControl(ccsTextBox, "date_approved", "Date Approved", ccsDate, array("mm", "/", "dd", "/", "yyyy"), CCGetRequestParam("date_approved", $Method, NULL), $this);
            $this->link_desc = new clsControl(ccsTextArea, "link_desc", "link_desc", ccsMemo, "", CCGetRequestParam("link_desc", $Method, NULL), $this);
            $this->date_added = new clsControl(ccsHidden, "date_added", "date_added", ccsDate, array("mm", "/", "dd", "/", "yyyy"), CCGetRequestParam("date_added", $Method, NULL), $this);
            $this->portal_Insert = new clsButton("portal_Insert", $Method, $this);
            $this->portal_Update = new clsButton("portal_Update", $Method, $this);
            $this->portal_Delete = new clsButton("portal_Delete", $Method, $this);
            $this->portal_Cancel = new clsButton("portal_Cancel", $Method, $this);
            if(!$this->FormSubmitted) {
                if(!is_array($this->approved->Value) && !strlen($this->approved->Value) && $this->approved->Value !== false)
                    $this->approved->SetValue(false);
                if(!is_array($this->date_approved->Value) && !strlen($this->date_approved->Value) && $this->date_approved->Value !== false)
                    $this->date_approved->SetValue(time());
                if(!is_array($this->date_added->Value) && !strlen($this->date_added->Value) && $this->date_added->Value !== false)
                    $this->date_added->SetValue(time());
            }
        }
    }
//End Class_Initialize Event

//Initialize Method @43-6574FF93
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urllink_id"] = CCGetFromGet("link_id", NULL);
    }
//End Initialize Method

//Validate Method @43-EA4D3588
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->category_id->Validate() && $Validation);
        $Validation = ($this->link_name->Validate() && $Validation);
        $Validation = ($this->link_url->Validate() && $Validation);
        $Validation = ($this->address->Validate() && $Validation);
        $Validation = ($this->approved->Validate() && $Validation);
        $Validation = ($this->date_approved->Validate() && $Validation);
        $Validation = ($this->link_desc->Validate() && $Validation);
        $Validation = ($this->date_added->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->category_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->link_name->Errors->Count() == 0);
        $Validation =  $Validation && ($this->link_url->Errors->Count() == 0);
        $Validation =  $Validation && ($this->address->Errors->Count() == 0);
        $Validation =  $Validation && ($this->approved->Errors->Count() == 0);
        $Validation =  $Validation && ($this->date_approved->Errors->Count() == 0);
        $Validation =  $Validation && ($this->link_desc->Errors->Count() == 0);
        $Validation =  $Validation && ($this->date_added->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @43-E11DBFF1
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->category_id->Errors->Count());
        $errors = ($errors || $this->link_name->Errors->Count());
        $errors = ($errors || $this->link_url->Errors->Count());
        $errors = ($errors || $this->address->Errors->Count());
        $errors = ($errors || $this->approved->Errors->Count());
        $errors = ($errors || $this->date_approved->Errors->Count());
        $errors = ($errors || $this->link_desc->Errors->Count());
        $errors = ($errors || $this->date_added->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @43-67B8D575
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
        $Redirect = "AdminLinks.php";
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

//InsertRow Method @43-4CBCC567
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->category_id->SetValue($this->category_id->GetValue(true));
        $this->DataSource->link_name->SetValue($this->link_name->GetValue(true));
        $this->DataSource->link_url->SetValue($this->link_url->GetValue(true));
        $this->DataSource->address->SetValue($this->address->GetValue(true));
        $this->DataSource->approved->SetValue($this->approved->GetValue(true));
        $this->DataSource->date_approved->SetValue($this->date_approved->GetValue(true));
        $this->DataSource->link_desc->SetValue($this->link_desc->GetValue(true));
        $this->DataSource->date_added->SetValue($this->date_added->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @43-3959CF2E
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->category_id->SetValue($this->category_id->GetValue(true));
        $this->DataSource->link_name->SetValue($this->link_name->GetValue(true));
        $this->DataSource->link_url->SetValue($this->link_url->GetValue(true));
        $this->DataSource->address->SetValue($this->address->GetValue(true));
        $this->DataSource->approved->SetValue($this->approved->GetValue(true));
        $this->DataSource->date_approved->SetValue($this->date_approved->GetValue(true));
        $this->DataSource->link_desc->SetValue($this->link_desc->GetValue(true));
        $this->DataSource->date_added->SetValue($this->date_added->GetValue(true));
        $this->DataSource->Update();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterUpdate", $this);
        return (!$this->CheckErrors());
    }
//End UpdateRow Method

//DeleteRow Method @43-299D98C3
    function DeleteRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeDelete", $this);
        if(!$this->DeleteAllowed) return false;
        $this->DataSource->Delete();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterDelete", $this);
        return (!$this->CheckErrors());
    }
//End DeleteRow Method

//Show Method @43-AB0C5343
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

        $this->category_id->Prepare();

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
                    $this->category_id->SetValue($this->DataSource->category_id->GetValue());
                    $this->link_name->SetValue($this->DataSource->link_name->GetValue());
                    $this->link_url->SetValue($this->DataSource->link_url->GetValue());
                    $this->address->SetValue($this->DataSource->address->GetValue());
                    $this->approved->SetValue($this->DataSource->approved->GetValue());
                    $this->date_approved->SetValue($this->DataSource->date_approved->GetValue());
                    $this->link_desc->SetValue($this->DataSource->link_desc->GetValue());
                    $this->date_added->SetValue($this->DataSource->date_added->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->category_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->link_name->Errors->ToString());
            $Error = ComposeStrings($Error, $this->link_url->Errors->ToString());
            $Error = ComposeStrings($Error, $this->address->Errors->ToString());
            $Error = ComposeStrings($Error, $this->approved->Errors->ToString());
            $Error = ComposeStrings($Error, $this->date_approved->Errors->ToString());
            $Error = ComposeStrings($Error, $this->link_desc->Errors->ToString());
            $Error = ComposeStrings($Error, $this->date_added->Errors->ToString());
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

        $this->category_id->Show();
        $this->link_name->Show();
        $this->link_url->Show();
        $this->address->Show();
        $this->approved->Show();
        $this->date_approved->Show();
        $this->link_desc->Show();
        $this->date_added->Show();
        $this->portal_Insert->Show();
        $this->portal_Update->Show();
        $this->portal_Delete->Show();
        $this->portal_Cancel->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End links Class @43-FCB6E20C

class clslinksDataSource extends clsDBinternet {  //linksDataSource Class @43-4C12F956

//DataSource Variables @43-20AA3A0D
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
    public $category_id;
    public $link_name;
    public $link_url;
    public $address;
    public $approved;
    public $date_approved;
    public $link_desc;
    public $date_added;
//End DataSource Variables

//DataSourceClass_Initialize Event @43-F8D2F381
    function clslinksDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record links/Error";
        $this->Initialize();
        $this->category_id = new clsField("category_id", ccsInteger, "");
        
        $this->link_name = new clsField("link_name", ccsText, "");
        
        $this->link_url = new clsField("link_url", ccsText, "");
        
        $this->address = new clsField("address", ccsMemo, "");
        
        $this->approved = new clsField("approved", ccsInteger, "");
        
        $this->date_approved = new clsField("date_approved", ccsDate, $this->DateFormat);
        
        $this->link_desc = new clsField("link_desc", ccsMemo, "");
        
        $this->date_added = new clsField("date_added", ccsDate, $this->DateFormat);
        

        $this->InsertFields["category_id"] = array("Name" => "category_id", "Value" => "", "DataType" => ccsInteger, "OmitIfEmpty" => 1);
        $this->InsertFields["link_name"] = array("Name" => "link_name", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["link_url"] = array("Name" => "link_url", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["address"] = array("Name" => "address", "Value" => "", "DataType" => ccsMemo, "OmitIfEmpty" => 1);
        $this->InsertFields["is_approve"] = array("Name" => "is_approve", "Value" => "", "DataType" => ccsInteger);
        $this->InsertFields["date_approve"] = array("Name" => "date_approve", "Value" => "", "DataType" => ccsDate, "OmitIfEmpty" => 1);
        $this->InsertFields["link_desc"] = array("Name" => "link_desc", "Value" => "", "DataType" => ccsMemo, "OmitIfEmpty" => 1);
        $this->InsertFields["date_add"] = array("Name" => "date_add", "Value" => "", "DataType" => ccsDate, "OmitIfEmpty" => 1);
        $this->UpdateFields["category_id"] = array("Name" => "category_id", "Value" => "", "DataType" => ccsInteger, "OmitIfEmpty" => 1);
        $this->UpdateFields["link_name"] = array("Name" => "link_name", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["link_url"] = array("Name" => "link_url", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["address"] = array("Name" => "address", "Value" => "", "DataType" => ccsMemo, "OmitIfEmpty" => 1);
        $this->UpdateFields["is_approve"] = array("Name" => "is_approve", "Value" => "", "DataType" => ccsInteger);
        $this->UpdateFields["date_approve"] = array("Name" => "date_approve", "Value" => "", "DataType" => ccsDate, "OmitIfEmpty" => 1);
        $this->UpdateFields["link_desc"] = array("Name" => "link_desc", "Value" => "", "DataType" => ccsMemo, "OmitIfEmpty" => 1);
        $this->UpdateFields["date_add"] = array("Name" => "date_add", "Value" => "", "DataType" => ccsDate, "OmitIfEmpty" => 1);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @43-94F93F42
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urllink_id", ccsInteger, "", "", $this->Parameters["urllink_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "link_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsInteger),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @43-654ADE82
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM links {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, $this->Order));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @43-6D195667
    function SetValues()
    {
        $this->category_id->SetDBValue(trim($this->f("category_id")));
        $this->link_name->SetDBValue($this->f("link_name"));
        $this->link_url->SetDBValue($this->f("link_url"));
        $this->address->SetDBValue($this->f("address"));
        $this->approved->SetDBValue(trim($this->f("is_approve")));
        $this->date_approved->SetDBValue(trim($this->f("date_approve")));
        $this->link_desc->SetDBValue($this->f("link_desc"));
        $this->date_added->SetDBValue(trim($this->f("date_add")));
    }
//End SetValues Method

//Insert Method @43-8B8080EB
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["category_id"]["Value"] = $this->category_id->GetDBValue(true);
        $this->InsertFields["link_name"]["Value"] = $this->link_name->GetDBValue(true);
        $this->InsertFields["link_url"]["Value"] = $this->link_url->GetDBValue(true);
        $this->InsertFields["address"]["Value"] = $this->address->GetDBValue(true);
        $this->InsertFields["is_approve"]["Value"] = $this->approved->GetDBValue(true);
        $this->InsertFields["date_approve"]["Value"] = $this->date_approved->GetDBValue(true);
        $this->InsertFields["link_desc"]["Value"] = $this->link_desc->GetDBValue(true);
        $this->InsertFields["date_add"]["Value"] = $this->date_added->GetDBValue(true);
        $this->SQL = CCBuildInsert("links", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @43-7C242FC9
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $Where = "";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->UpdateFields["category_id"]["Value"] = $this->category_id->GetDBValue(true);
        $this->UpdateFields["link_name"]["Value"] = $this->link_name->GetDBValue(true);
        $this->UpdateFields["link_url"]["Value"] = $this->link_url->GetDBValue(true);
        $this->UpdateFields["address"]["Value"] = $this->address->GetDBValue(true);
        $this->UpdateFields["is_approve"]["Value"] = $this->approved->GetDBValue(true);
        $this->UpdateFields["date_approve"]["Value"] = $this->date_approved->GetDBValue(true);
        $this->UpdateFields["link_desc"]["Value"] = $this->link_desc->GetDBValue(true);
        $this->UpdateFields["date_add"]["Value"] = $this->date_added->GetDBValue(true);
        $this->SQL = CCBuildUpdate("links", $this->UpdateFields, $this);
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

//Delete Method @43-7B562878
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $Where = "";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $this->SQL = "DELETE FROM links";
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

} //End linksDataSource Class @43-FCB6E20C

//Include Page implementation @38-3DD2EFDC
include_once(RelativePath . "/Header.php");
//End Include Page implementation

//Include Page implementation @39-39F846CD
include_once(RelativePath . "/AdminMenu.php");
//End Include Page implementation

//Initialize Page @1-2919EC47
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
$TemplateFileName = "EditLink.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$ContentType = "text/html";
$PathToRoot = "./";
//End Initialize Page

//Authenticate User @1-38B04EC7
CCSecurityRedirect("2", "Login.php");
//End Authenticate User

//Include events file @1-1A7C6BBB
include_once("./EditLink_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-98FC2AD2
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
$links = new clsRecordlinks("", $MainPage);
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
$MainPage->links = & $links;
$MainPage->Menu = & $Menu;
$MainPage->Header = & $Header;
$MainPage->Sidebar1 = & $Sidebar1;
$MainPage->AdminMenu = & $AdminMenu;
$Content->AddComponent("links", $links);
$Menu->AddComponent("Header", $Header);
$Sidebar1->AddComponent("AdminMenu", $AdminMenu);
$links->Initialize();

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

//Execute Components @1-CDE12A08
$MasterPage->Operations();
$AdminMenu->Operations();
$Header->Operations();
$links->Operation();
//End Execute Components

//Go to destination page @1-35C2A3A6
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBinternet->close();
    header("Location: " . $Redirect);
    unset($links);
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

//Unload Page @1-B3577514
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBinternet->close();
unset($MasterPage);
unset($links);
$Header->Class_Terminate();
unset($Header);
$AdminMenu->Class_Terminate();
unset($AdminMenu);
unset($Tpl);
//End Unload Page


?>
