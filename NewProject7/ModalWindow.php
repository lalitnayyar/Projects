<?php
//Include Common Files @1-8059A5B7
define("RelativePath", ".");
define("PathToCurrentPage", "/");
define("FileName", "ModalWindow.php");
include_once(RelativePath . "/Common.php");
include_once(RelativePath . "/Template.php");
include_once(RelativePath . "/Sorter.php");
include_once(RelativePath . "/Navigator.php");
//End Include Common Files

class clsGridwishes { //wishes class @4-A9AE6B79

//Variables @4-A8346DA2

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
    public $Sorter_wish_email;
    public $Sorter_wish_date;
//End Variables

//Class_Initialize Event @4-34BAAF34
    function clsGridwishes($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "wishes";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid wishes";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clswishesDataSource($this);
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
        $this->SorterName = CCGetParam("wishesOrder", "");
        $this->SorterDirection = CCGetParam("wishesDir", "");

        $this->wish_name = new clsControl(ccsLabel, "wish_name", "wish_name", ccsText, "", CCGetRequestParam("wish_name", ccsGet, NULL), $this);
        $this->wish_desc = new clsControl(ccsLabel, "wish_desc", "wish_desc", ccsMemo, "", CCGetRequestParam("wish_desc", ccsGet, NULL), $this);
        $this->wish_date = new clsControl(ccsLabel, "wish_date", "wish_date", ccsDate, array("mm", "/", "dd", "/", "yyyy", " ", "H", ":", "nn"), CCGetRequestParam("wish_date", ccsGet, NULL), $this);
        $this->Sorter_wish_email = new clsSorter($this->ComponentName, "Sorter_wish_email", $FileName, $this);
        $this->Sorter_wish_date = new clsSorter($this->ComponentName, "Sorter_wish_date", $FileName, $this);
        $this->Navigator = new clsNavigator($this->ComponentName, "Navigator", $FileName, 10, tpCentered, $this);
        $this->Navigator->PageSizes = array("1", "5", "10", "25", "50");
        $this->Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", ccsGet, NULL), $this);
        $this->Link1->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
        $this->Link1->Page = "";
    }
//End Class_Initialize Event

//Initialize Method @4-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @4-3B8B3FD5
    function Show()
    {
        $Tpl = & CCGetTemplate($this);
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;


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
            $this->ControlsVisible["wish_name"] = $this->wish_name->Visible;
            $this->ControlsVisible["wish_desc"] = $this->wish_desc->Visible;
            $this->ControlsVisible["wish_date"] = $this->wish_date->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->wish_name->SetValue($this->DataSource->wish_name->GetValue());
                $this->wish_desc->SetValue($this->DataSource->wish_desc->GetValue());
                $this->wish_date->SetValue($this->DataSource->wish_date->GetValue());
                $this->Attributes->SetValue("rowNumber", $this->RowNumber);
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->wish_name->Show();
                $this->wish_desc->Show();
                $this->wish_date->Show();
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
        $this->Sorter_wish_email->Show();
        $this->Sorter_wish_date->Show();
        $this->Navigator->Show();
        $this->Link1->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @4-F06FF9BF
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->wish_name->Errors->ToString());
        $errors = ComposeStrings($errors, $this->wish_desc->Errors->ToString());
        $errors = ComposeStrings($errors, $this->wish_date->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End wishes Class @4-FCB6E20C

class clswishesDataSource extends clsDBInternetDB {  //wishesDataSource Class @4-56E494F6

//DataSource Variables @4-96E0CCDF
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $wish_name;
    public $wish_desc;
    public $wish_date;
//End DataSource Variables

//DataSourceClass_Initialize Event @4-4146F106
    function clswishesDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid wishes";
        $this->Initialize();
        $this->wish_name = new clsField("wish_name", ccsText, "");
        
        $this->wish_desc = new clsField("wish_desc", ccsMemo, "");
        
        $this->wish_date = new clsField("wish_date", ccsDate, $this->DateFormat);
        

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @4-C5B6B341
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "wish_date";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_wish_email" => array("wish_name", ""), 
            "Sorter_wish_date" => array("wish_date", "")));
    }
//End SetOrder Method

//Prepare Method @4-14D6CD9D
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
    }
//End Prepare Method

//Open Method @4-3EE5A5C8
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM wishes";
        $this->SQL = "SELECT TOP {SqlParam_endRecord} * \n\n" .
        "FROM wishes {SQL_Where} {SQL_OrderBy}";
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

//SetValues Method @4-FF45CC06
    function SetValues()
    {
        $this->wish_name->SetDBValue($this->f("wish_name"));
        $this->wish_desc->SetDBValue($this->f("wish_desc"));
        $this->wish_date->SetDBValue(trim($this->f("wish_date")));
    }
//End SetValues Method

} //End wishesDataSource Class @4-FCB6E20C

class clsRecordwishes1 { //wishes1 Class @20-E16A1CAA

//Variables @20-9E315808

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

//Class_Initialize Event @20-D7F4092E
    function clsRecordwishes1($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record wishes1/Error";
        $this->DataSource = new clswishes1DataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "wishes1";
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
            $this->wish_date = new clsControl(ccsHidden, "wish_date", "Wish Date", ccsDate, array("mm", "/", "dd", "/", "yyyy", " ", "h", ":", "nn", " ", "AM/PM"), CCGetRequestParam("wish_date", $Method, NULL), $this);
            $this->wish_desc = new clsControl(ccsTextArea, "wish_desc", "Description", ccsMemo, "", CCGetRequestParam("wish_desc", $Method, NULL), $this);
            $this->wish_email = new clsControl(ccsTextBox, "wish_email", "E-mail", ccsText, "", CCGetRequestParam("wish_email", $Method, NULL), $this);
            $this->wish_name = new clsControl(ccsTextBox, "wish_name", "wish_name", ccsText, "", CCGetRequestParam("wish_name", $Method, NULL), $this);
            if(!$this->FormSubmitted) {
                if(!is_array($this->wish_date->Value) && !strlen($this->wish_date->Value) && $this->wish_date->Value !== false)
                    $this->wish_date->SetValue(time());
            }
        }
    }
//End Class_Initialize Event

//Initialize Method @20-9FA8CEF2
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urlwish_id"] = CCGetFromGet("wish_id", NULL);
    }
//End Initialize Method

//Validate Method @20-9364A964
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->wish_date->Validate() && $Validation);
        $Validation = ($this->wish_desc->Validate() && $Validation);
        $Validation = ($this->wish_email->Validate() && $Validation);
        $Validation = ($this->wish_name->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->wish_date->Errors->Count() == 0);
        $Validation =  $Validation && ($this->wish_desc->Errors->Count() == 0);
        $Validation =  $Validation && ($this->wish_email->Errors->Count() == 0);
        $Validation =  $Validation && ($this->wish_name->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @20-1971CFB3
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->wish_date->Errors->Count());
        $errors = ($errors || $this->wish_desc->Errors->Count());
        $errors = ($errors || $this->wish_email->Errors->Count());
        $errors = ($errors || $this->wish_name->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @20-EFC50250
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
            $this->PressedButton = "Button_Insert";
            if($this->Button_Insert->Pressed) {
                $this->PressedButton = "Button_Insert";
            }
        }
        $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->Validate()) {
            if($this->PressedButton == "Button_Insert") {
                if(!CCGetEvent($this->Button_Insert->CCSEvents, "OnClick", $this->Button_Insert) || !$this->InsertRow()) {
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

//InsertRow Method @20-13DFD1B9
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->wish_date->SetValue($this->wish_date->GetValue(true));
        $this->DataSource->wish_desc->SetValue($this->wish_desc->GetValue(true));
        $this->DataSource->wish_email->SetValue($this->wish_email->GetValue(true));
        $this->DataSource->wish_name->SetValue($this->wish_name->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//Show Method @20-C1659C07
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
                    $this->wish_date->SetValue($this->DataSource->wish_date->GetValue());
                    $this->wish_desc->SetValue($this->DataSource->wish_desc->GetValue());
                    $this->wish_email->SetValue($this->DataSource->wish_email->GetValue());
                    $this->wish_name->SetValue($this->DataSource->wish_name->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->wish_date->Errors->ToString());
            $Error = ComposeStrings($Error, $this->wish_desc->Errors->ToString());
            $Error = ComposeStrings($Error, $this->wish_email->Errors->ToString());
            $Error = ComposeStrings($Error, $this->wish_name->Errors->ToString());
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

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        $this->Attributes->Show();
        if(!$this->Visible) {
            $Tpl->block_path = $ParentPath;
            return;
        }

        $this->Button_Insert->Show();
        $this->wish_date->Show();
        $this->wish_desc->Show();
        $this->wish_email->Show();
        $this->wish_name->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End wishes1 Class @20-FCB6E20C

class clswishes1DataSource extends clsDBInternetDB {  //wishes1DataSource Class @20-EFAB7799

//DataSource Variables @20-B1101C93
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $InsertParameters;
    public $wp;
    public $AllParametersSet;

    public $InsertFields = array();

    // Datasource fields
    public $wish_date;
    public $wish_desc;
    public $wish_email;
    public $wish_name;
//End DataSource Variables

//DataSourceClass_Initialize Event @20-1A8AC4E2
    function clswishes1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record wishes1/Error";
        $this->Initialize();
        $this->wish_date = new clsField("wish_date", ccsDate, $this->DateFormat);
        
        $this->wish_desc = new clsField("wish_desc", ccsMemo, "");
        
        $this->wish_email = new clsField("wish_email", ccsText, "");
        
        $this->wish_name = new clsField("wish_name", ccsText, "");
        

        $this->InsertFields["wish_date"] = array("Name" => "wish_date", "Value" => "", "DataType" => ccsDate);
        $this->InsertFields["wish_desc"] = array("Name" => "wish_desc", "Value" => "", "DataType" => ccsMemo);
        $this->InsertFields["wish_email"] = array("Name" => "wish_email", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["wish_name"] = array("Name" => "wish_name", "Value" => "", "DataType" => ccsText);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @20-63843A2A
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urlwish_id", ccsInteger, "", "", $this->Parameters["urlwish_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "wish_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsInteger),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @20-73E3806F
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM wishes {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, $this->Order));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @20-88EFEDC1
    function SetValues()
    {
        $this->wish_date->SetDBValue(trim($this->f("wish_date")));
        $this->wish_desc->SetDBValue($this->f("wish_desc"));
        $this->wish_email->SetDBValue($this->f("wish_email"));
        $this->wish_name->SetDBValue($this->f("wish_name"));
    }
//End SetValues Method

//Insert Method @20-1BA30A6D
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["wish_date"]["Value"] = $this->wish_date->GetDBValue(true);
        $this->InsertFields["wish_desc"]["Value"] = $this->wish_desc->GetDBValue(true);
        $this->InsertFields["wish_email"]["Value"] = $this->wish_email->GetDBValue(true);
        $this->InsertFields["wish_name"]["Value"] = $this->wish_name->GetDBValue(true);
        $this->SQL = CCBuildInsert("wishes", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

} //End wishes1DataSource Class @20-FCB6E20C

//Include Page implementation @53-8EACA429
include_once(RelativePath . "/header.php");
//End Include Page implementation

//Include Page implementation @55-EBA5EA16
include_once(RelativePath . "/footer.php");
//End Include Page implementation

//Initialize Page @1-E2A214BE
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
$TemplateFileName = "ModalWindow.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$ContentType = "text/html";
$PathToRoot = "./";
$Charset = $Charset ? $Charset : "windows-1252";
//End Initialize Page

//Include events file @1-2E87EEFF
include_once("./ModalWindow_events.php");
//End Include events file

//BeforeInitialize Binding @1-17AC9191
$CCSEvents["BeforeInitialize"] = "Page_BeforeInitialize";
//End BeforeInitialize Binding

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-E03245D5
$DBInternetDB = new clsDBInternetDB();
$MainPage->Connections["InternetDB"] = & $DBInternetDB;
$Attributes = new clsAttributes("page:");
$Attributes->SetValue("pathToRoot", $PathToRoot);
$MainPage->Attributes = & $Attributes;

// Controls
$Panel1 = new clsPanel("Panel1", $MainPage);
$wishes = new clsGridwishes("", $MainPage);
$Panel2 = new clsPanel("Panel2", $MainPage);
$Panel3 = new clsPanel("Panel3", $MainPage);
$wishes1 = new clsRecordwishes1("", $MainPage);
$header = new clsheader("", "header", $MainPage);
$header->Initialize();
$Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", ccsGet, NULL), $MainPage);
$Link1->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
$Link1->Page = "ModalWindow_desc.php";
$footer = new clsfooter("", "footer", $MainPage);
$footer->Initialize();
$MainPage->Panel1 = & $Panel1;
$MainPage->wishes = & $wishes;
$MainPage->Panel2 = & $Panel2;
$MainPage->Panel3 = & $Panel3;
$MainPage->wishes1 = & $wishes1;
$MainPage->header = & $header;
$MainPage->Link1 = & $Link1;
$MainPage->footer = & $footer;
$Panel1->AddComponent("wishes", $wishes);
$Panel2->AddComponent("Panel3", $Panel3);
$Panel3->AddComponent("wishes1", $wishes1);
$wishes->Initialize();
$wishes1->Initialize();

BindEvents();

$CCSEventResult = CCGetEvent($CCSEvents, "AfterInitialize", $MainPage);

if ($Charset) {
    header("Content-Type: " . $ContentType . "; charset=" . $Charset);
} else {
    header("Content-Type: " . $ContentType);
}
//End Initialize Objects

//Initialize HTML Template @1-293C0939
$CCSEventResult = CCGetEvent($CCSEvents, "OnInitializeView", $MainPage);
$Tpl = new clsTemplate();
if (strlen($TemplateSource)) {
    $Tpl->LoadTemplateFromStr($TemplateSource, $BlockToParse, "CP1252");
} else {
    $Tpl->LoadTemplate(PathToCurrentPage . $TemplateFileName, $BlockToParse, "CP1252");
}
$Tpl->SetVar("CCS_PathToRoot", $PathToRoot);
$Tpl->block_path = "/$BlockToParse";
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeShow", $MainPage);
$Attributes->SetValue("pathToRoot", "");
$Attributes->Show();
//End Initialize HTML Template

//Execute Components @1-17C1D9CC
$footer->Operations();
$header->Operations();
$wishes1->Operation();
//End Execute Components

//Go to destination page @1-E04B8AEC
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBInternetDB->close();
    header("Location: " . $Redirect);
    unset($wishes);
    unset($wishes1);
    $header->Class_Terminate();
    unset($header);
    $footer->Class_Terminate();
    unset($footer);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-C4CBB484
$header->Show();
$footer->Show();
$Panel1->Show();
$Panel2->Show();
$Link1->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
if (!isset($main_block)) $main_block = $Tpl->GetVar($BlockToParse);
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-071C6B35
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBInternetDB->close();
unset($wishes);
unset($wishes1);
$header->Class_Terminate();
unset($header);
$footer->Class_Terminate();
unset($footer);
unset($Tpl);
//End Unload Page


?>
