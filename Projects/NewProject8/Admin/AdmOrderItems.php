<?php
//Include Common Files @1-851B481F
define("RelativePath", "..");
define("PathToCurrentPage", "/Admin/");
define("FileName", "AdmOrderItems.php");
include_once(RelativePath . "/Common.php");
include_once(RelativePath . "/Template.php");
include_once(RelativePath . "/Sorter.php");
include_once(RelativePath . "/Navigator.php");
//End Include Common Files

//Master Page implementation @1-61A23584
include_once(RelativePath . "/Designs/BookStore/MasterPage.php");
//End Master Page implementation

class clsGridorder_items { //order_items class @57-720784A6

//Variables @57-6E51DF5A

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
//End Variables

//Class_Initialize Event @57-DFDA7ED2
    function clsGridorder_items($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "order_items";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid order_items";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsorder_itemsDataSource($this);
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

        $this->product_name = new clsControl(ccsLabel, "product_name", "product_name", ccsText, "", CCGetRequestParam("product_name", ccsGet, NULL), $this);
        $this->quantity = new clsControl(ccsLabel, "quantity", "quantity", ccsInteger, "", CCGetRequestParam("quantity", ccsGet, NULL), $this);
        $this->price = new clsControl(ccsLabel, "price", "price", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), CCGetRequestParam("price", ccsGet, NULL), $this);
    }
//End Class_Initialize Event

//Initialize Method @57-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @57-AE386756
    function Show()
    {
        $Tpl = & CCGetTemplate($this);
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urlorder_id"] = CCGetFromGet("order_id", NULL);

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
            $this->ControlsVisible["quantity"] = $this->quantity->Visible;
            $this->ControlsVisible["price"] = $this->price->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->product_name->SetValue($this->DataSource->product_name->GetValue());
                $this->quantity->SetValue($this->DataSource->quantity->GetValue());
                $this->price->SetValue($this->DataSource->price->GetValue());
                $this->Attributes->SetValue("rowNumber", $this->RowNumber);
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->product_name->Show();
                $this->quantity->Show();
                $this->price->Show();
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
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @57-BB9E6F45
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->product_name->Errors->ToString());
        $errors = ComposeStrings($errors, $this->quantity->Errors->ToString());
        $errors = ComposeStrings($errors, $this->price->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End order_items Class @57-FCB6E20C

class clsorder_itemsDataSource extends clsDBInternetDB {  //order_itemsDataSource Class @57-1FD344E7

//DataSource Variables @57-F9773F02
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $product_name;
    public $quantity;
    public $price;
//End DataSource Variables

//DataSourceClass_Initialize Event @57-036BBE0A
    function clsorder_itemsDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid order_items";
        $this->Initialize();
        $this->product_name = new clsField("product_name", ccsText, "");
        
        $this->quantity = new clsField("quantity", ccsInteger, "");
        
        $this->price = new clsField("price", ccsFloat, "");
        

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @57-573E771D
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "store_order_items.price";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            "");
    }
//End SetOrder Method

//Prepare Method @57-10BD8074
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urlorder_id", ccsInteger, "", "", $this->Parameters["urlorder_id"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "store_order_items.order_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsInteger),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @57-B401700E
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM store_order_items LEFT JOIN store_products ON\n\n" .
        "store_order_items.product_id = store_products.product_id";
        $this->SQL = "SELECT TOP {SqlParam_endRecord} store_order_items.*, product_name \n\n" .
        "FROM store_order_items LEFT JOIN store_products ON\n\n" .
        "store_order_items.product_id = store_products.product_id {SQL_Where} {SQL_OrderBy}";
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

//SetValues Method @57-614518D1
    function SetValues()
    {
        $this->product_name->SetDBValue($this->f("product_name"));
        $this->quantity->SetDBValue(trim($this->f("quantity")));
        $this->price->SetDBValue(trim($this->f("price")));
    }
//End SetValues Method

} //End order_itemsDataSource Class @57-FCB6E20C

class clsRecordOrder_Record { //Order_Record Class @48-7F8204CD

//Variables @48-9E315808

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

//Class_Initialize Event @48-9E85A12A
    function clsRecordOrder_Record($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record Order_Record/Error";
        $this->DataSource = new clsOrder_RecordDataSource($this);
        $this->ds = & $this->DataSource;
        $this->UpdateAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "Order_Record";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = explode(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->Button_Update = new clsButton("Button_Update", $Method, $this);
            $this->order_date = new clsControl(ccsLabel, "order_date", "order_date", ccsDate, $DefaultDateFormat, CCGetRequestParam("order_date", $Method, NULL), $this);
            $this->order_status_id = new clsControl(ccsListBox, "order_status_id", "Order Status Id", ccsText, "", CCGetRequestParam("order_status_id", $Method, NULL), $this);
            $this->order_status_id->DSType = dsTable;
            $this->order_status_id->DataSource = new clsDBInternetDB();
            $this->order_status_id->ds = & $this->order_status_id->DataSource;
            $this->order_status_id->DataSource->SQL = "SELECT * \n" .
"FROM store_statuses {SQL_Where} {SQL_OrderBy}";
            list($this->order_status_id->BoundColumn, $this->order_status_id->TextColumn, $this->order_status_id->DBFormat) = array("status_id", "status_name", "");
            $this->order_status_id->Required = true;
            $this->total = new clsControl(ccsLabel, "total", "total", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), CCGetRequestParam("total", $Method, NULL), $this);
            $this->order_id = new clsControl(ccsLabel, "order_id", "order_id", ccsText, "", CCGetRequestParam("order_id", $Method, NULL), $this);
        }
    }
//End Class_Initialize Event

//Initialize Method @48-1364775E
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urlorder_id"] = CCGetFromGet("order_id", NULL);
    }
//End Initialize Method

//Validate Method @48-6D168AB0
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->order_status_id->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->order_status_id->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @48-F5E7AB6C
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->order_date->Errors->Count());
        $errors = ($errors || $this->order_status_id->Errors->Count());
        $errors = ($errors || $this->total->Errors->Count());
        $errors = ($errors || $this->order_id->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @48-5622C17E
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
            $this->PressedButton = $this->EditMode ? "Button_Update" : "";
            if($this->Button_Update->Pressed) {
                $this->PressedButton = "Button_Update";
            }
        }
        $Redirect = "AdmOrders.php" . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->Validate()) {
            if($this->PressedButton == "Button_Update") {
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

//UpdateRow Method @48-FC095B03
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->order_date->SetValue($this->order_date->GetValue(true));
        $this->DataSource->order_status_id->SetValue($this->order_status_id->GetValue(true));
        $this->DataSource->total->SetValue($this->total->GetValue(true));
        $this->DataSource->order_id->SetValue($this->order_id->GetValue(true));
        $this->DataSource->Update();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterUpdate", $this);
        return (!$this->CheckErrors());
    }
//End UpdateRow Method

//Show Method @48-B5C8F072
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

        $this->order_status_id->Prepare();

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
                $this->order_date->SetValue($this->DataSource->order_date->GetValue());
                $this->total->SetValue($this->DataSource->total->GetValue());
                $this->order_id->SetValue($this->DataSource->order_id->GetValue());
                if(!$this->FormSubmitted){
                    $this->order_status_id->SetValue($this->DataSource->order_status_id->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->order_date->Errors->ToString());
            $Error = ComposeStrings($Error, $this->order_status_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->total->Errors->ToString());
            $Error = ComposeStrings($Error, $this->order_id->Errors->ToString());
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
        $this->Button_Update->Visible = $this->EditMode && $this->UpdateAllowed;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        $this->Attributes->Show();
        if(!$this->Visible) {
            $Tpl->block_path = $ParentPath;
            return;
        }

        $this->Button_Update->Show();
        $this->order_date->Show();
        $this->order_status_id->Show();
        $this->total->Show();
        $this->order_id->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End Order_Record Class @48-FCB6E20C

class clsOrder_RecordDataSource extends clsDBInternetDB {  //Order_RecordDataSource Class @48-DF433E40

//DataSource Variables @48-C18AD711
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $UpdateParameters;
    public $wp;
    public $AllParametersSet;

    public $UpdateFields = array();

    // Datasource fields
    public $order_date;
    public $order_status_id;
    public $total;
    public $order_id;
//End DataSource Variables

//DataSourceClass_Initialize Event @48-E373EA1A
    function clsOrder_RecordDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record Order_Record/Error";
        $this->Initialize();
        $this->order_date = new clsField("order_date", ccsDate, $this->DateFormat);
        
        $this->order_status_id = new clsField("order_status_id", ccsText, "");
        
        $this->total = new clsField("total", ccsFloat, "");
        
        $this->order_id = new clsField("order_id", ccsText, "");
        

        $this->UpdateFields["order_status_id"] = array("Name" => "order_status_id", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @48-201E8A5E
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urlorder_id", ccsInteger, "", "", $this->Parameters["urlorder_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "order_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsInteger),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @48-7C289E44
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM store_orders {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, $this->Order));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @48-1F47E207
    function SetValues()
    {
        $this->order_date->SetDBValue(trim($this->f("order_date")));
        $this->order_status_id->SetDBValue($this->f("order_status_id"));
        $this->total->SetDBValue(trim($this->f("total")));
        $this->order_id->SetDBValue($this->f("order_id"));
    }
//End SetValues Method

//Update Method @48-308BCFC6
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $Where = "";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->UpdateFields["order_status_id"]["Value"] = $this->order_status_id->GetDBValue(true);
        $this->SQL = CCBuildUpdate("store_orders", $this->UpdateFields, $this);
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

} //End Order_RecordDataSource Class @48-FCB6E20C

//Include Page implementation @40-1A7B89D7
include_once(RelativePath . "/Admin/AdmHeader.php");
//End Include Page implementation

//Include Page implementation @47-594D0A6B
include_once(RelativePath . "/Admin/AdmMenu.php");
//End Include Page implementation

//Initialize Page @1-52628227
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
$TemplateFileName = "AdmOrderItems.html";
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

//Initialize Objects @1-C04ED020
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
$order_items = new clsGridorder_items("", $MainPage);
$Order_Record = new clsRecordOrder_Record("", $MainPage);
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
$MainPage->order_items = & $order_items;
$MainPage->Order_Record = & $Order_Record;
$MainPage->Menu = & $Menu;
$MainPage->AdmHeader = & $AdmHeader;
$MainPage->Sidebar = & $Sidebar;
$MainPage->AdmMenu = & $AdmMenu;
$Content->AddComponent("order_items", $order_items);
$Content->AddComponent("Order_Record", $Order_Record);
$Menu->AddComponent("AdmHeader", $AdmHeader);
$Sidebar->AddComponent("AdmMenu", $AdmMenu);
$order_items->Initialize();
$Order_Record->Initialize();

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

//Execute Components @1-6DD84F95
$MasterPage->Operations();
$AdmMenu->Operations();
$AdmHeader->Operations();
$Order_Record->Operation();
//End Execute Components

//Go to destination page @1-ADB72D40
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBInternetDB->close();
    header("Location: " . $Redirect);
    unset($order_items);
    unset($Order_Record);
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

//Unload Page @1-9A3D8227
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBInternetDB->close();
unset($MasterPage);
unset($order_items);
unset($Order_Record);
$AdmHeader->Class_Terminate();
unset($AdmHeader);
$AdmMenu->Class_Terminate();
unset($AdmMenu);
unset($Tpl);
//End Unload Page


?>
