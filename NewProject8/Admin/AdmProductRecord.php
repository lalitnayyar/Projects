<?php
//Include Common Files @1-0D50C7EE
define("RelativePath", "..");
define("PathToCurrentPage", "/Admin/");
define("FileName", "AdmProductRecord.php");
include_once(RelativePath . "/Common.php");
include_once(RelativePath . "/Template.php");
include_once(RelativePath . "/Sorter.php");
include_once(RelativePath . "/Navigator.php");
//End Include Common Files

//Master Page implementation @1-61A23584
include_once(RelativePath . "/Designs/BookStore/MasterPage.php");
//End Master Page implementation

class clsRecordstore_products { //store_products Class @30-C18400C9

//Variables @30-9E315808

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

//Class_Initialize Event @30-7E59DD24
    function clsRecordstore_products($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record store_products/Error";
        $this->DataSource = new clsstore_productsDataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        $this->UpdateAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "store_products";
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
            $this->category_id = new clsControl(ccsListBox, "category_id", "Category Id", ccsInteger, "", CCGetRequestParam("category_id", $Method, NULL), $this);
            $this->category_id->DSType = dsTable;
            $this->category_id->DataSource = new clsDBInternetDB();
            $this->category_id->ds = & $this->category_id->DataSource;
            $this->category_id->DataSource->SQL = "SELECT * \n" .
"FROM store_categories {SQL_Where} {SQL_OrderBy}";
            list($this->category_id->BoundColumn, $this->category_id->TextColumn, $this->category_id->DBFormat) = array("category_id", "category_name", "");
            $this->category_id->Required = true;
            $this->product_name = new clsControl(ccsTextBox, "product_name", "Product Name", ccsText, "", CCGetRequestParam("product_name", $Method, NULL), $this);
            $this->product_name->Required = true;
            $this->price = new clsControl(ccsTextBox, "price", "Price", ccsFloat, "", CCGetRequestParam("price", $Method, NULL), $this);
            $this->price->Required = true;
            $this->image_url = new clsControl(ccsTextBox, "image_url", "Image Url", ccsText, "", CCGetRequestParam("image_url", $Method, NULL), $this);
            $this->description1 = new clsControl(ccsTextArea, "description1", "Description", ccsMemo, "", CCGetRequestParam("description1", $Method, NULL), $this);
            $this->is_recommended = new clsControl(ccsCheckBox, "is_recommended", "is_recommended", ccsInteger, "", CCGetRequestParam("is_recommended", $Method, NULL), $this);
            $this->is_recommended->CheckedValue = $this->is_recommended->GetParsedValue(1);
            $this->is_recommended->UncheckedValue = $this->is_recommended->GetParsedValue(0);
            if(!$this->FormSubmitted) {
                if(!is_array($this->is_recommended->Value) && !strlen($this->is_recommended->Value) && $this->is_recommended->Value !== false)
                    $this->is_recommended->SetValue(false);
            }
        }
    }
//End Class_Initialize Event

//Initialize Method @30-1E2CBA43
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urlproduct_id"] = CCGetFromGet("product_id", NULL);
    }
//End Initialize Method

//Validate Method @30-00248DAA
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->category_id->Validate() && $Validation);
        $Validation = ($this->product_name->Validate() && $Validation);
        $Validation = ($this->price->Validate() && $Validation);
        $Validation = ($this->image_url->Validate() && $Validation);
        $Validation = ($this->description1->Validate() && $Validation);
        $Validation = ($this->is_recommended->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->category_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->product_name->Errors->Count() == 0);
        $Validation =  $Validation && ($this->price->Errors->Count() == 0);
        $Validation =  $Validation && ($this->image_url->Errors->Count() == 0);
        $Validation =  $Validation && ($this->description1->Errors->Count() == 0);
        $Validation =  $Validation && ($this->is_recommended->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @30-68D7BF78
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->category_id->Errors->Count());
        $errors = ($errors || $this->product_name->Errors->Count());
        $errors = ($errors || $this->price->Errors->Count());
        $errors = ($errors || $this->image_url->Errors->Count());
        $errors = ($errors || $this->description1->Errors->Count());
        $errors = ($errors || $this->is_recommended->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @30-4E98F7B7
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
        $Redirect = "AdmProducts.php";
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

//InsertRow Method @30-58849FC1
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->category_id->SetValue($this->category_id->GetValue(true));
        $this->DataSource->product_name->SetValue($this->product_name->GetValue(true));
        $this->DataSource->price->SetValue($this->price->GetValue(true));
        $this->DataSource->image_url->SetValue($this->image_url->GetValue(true));
        $this->DataSource->description1->SetValue($this->description1->GetValue(true));
        $this->DataSource->is_recommended->SetValue($this->is_recommended->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @30-16080597
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->category_id->SetValue($this->category_id->GetValue(true));
        $this->DataSource->product_name->SetValue($this->product_name->GetValue(true));
        $this->DataSource->price->SetValue($this->price->GetValue(true));
        $this->DataSource->image_url->SetValue($this->image_url->GetValue(true));
        $this->DataSource->description1->SetValue($this->description1->GetValue(true));
        $this->DataSource->is_recommended->SetValue($this->is_recommended->GetValue(true));
        $this->DataSource->Update();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterUpdate", $this);
        return (!$this->CheckErrors());
    }
//End UpdateRow Method

//DeleteRow Method @30-299D98C3
    function DeleteRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeDelete", $this);
        if(!$this->DeleteAllowed) return false;
        $this->DataSource->Delete();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterDelete", $this);
        return (!$this->CheckErrors());
    }
//End DeleteRow Method

//Show Method @30-AE01ABC1
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
                    $this->product_name->SetValue($this->DataSource->product_name->GetValue());
                    $this->price->SetValue($this->DataSource->price->GetValue());
                    $this->image_url->SetValue($this->DataSource->image_url->GetValue());
                    $this->description1->SetValue($this->DataSource->description1->GetValue());
                    $this->is_recommended->SetValue($this->DataSource->is_recommended->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->category_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->product_name->Errors->ToString());
            $Error = ComposeStrings($Error, $this->price->Errors->ToString());
            $Error = ComposeStrings($Error, $this->image_url->Errors->ToString());
            $Error = ComposeStrings($Error, $this->description1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->is_recommended->Errors->ToString());
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
        $this->category_id->Show();
        $this->product_name->Show();
        $this->price->Show();
        $this->image_url->Show();
        $this->description1->Show();
        $this->is_recommended->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End store_products Class @30-FCB6E20C

class clsstore_productsDataSource extends clsDBInternetDB {  //store_productsDataSource Class @30-B5C31F8A

//DataSource Variables @30-77D97088
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
    public $product_name;
    public $price;
    public $image_url;
    public $description1;
    public $is_recommended;
//End DataSource Variables

//DataSourceClass_Initialize Event @30-6F0BC259
    function clsstore_productsDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record store_products/Error";
        $this->Initialize();
        $this->category_id = new clsField("category_id", ccsInteger, "");
        
        $this->product_name = new clsField("product_name", ccsText, "");
        
        $this->price = new clsField("price", ccsFloat, "");
        
        $this->image_url = new clsField("image_url", ccsText, "");
        
        $this->description1 = new clsField("description1", ccsMemo, "");
        
        $this->is_recommended = new clsField("is_recommended", ccsInteger, "");
        

        $this->InsertFields["category_id"] = array("Name" => "category_id", "Value" => "", "DataType" => ccsInteger, "OmitIfEmpty" => 1);
        $this->InsertFields["product_name"] = array("Name" => "product_name", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["price"] = array("Name" => "price", "Value" => "", "DataType" => ccsFloat, "OmitIfEmpty" => 1);
        $this->InsertFields["image_url"] = array("Name" => "image_url", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["description"] = array("Name" => "description", "Value" => "", "DataType" => ccsMemo, "OmitIfEmpty" => 1);
        $this->InsertFields["is_recommended"] = array("Name" => "is_recommended", "Value" => "", "DataType" => ccsInteger);
        $this->UpdateFields["category_id"] = array("Name" => "category_id", "Value" => "", "DataType" => ccsInteger, "OmitIfEmpty" => 1);
        $this->UpdateFields["product_name"] = array("Name" => "product_name", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["price"] = array("Name" => "price", "Value" => "", "DataType" => ccsFloat, "OmitIfEmpty" => 1);
        $this->UpdateFields["image_url"] = array("Name" => "image_url", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["description"] = array("Name" => "description", "Value" => "", "DataType" => ccsMemo, "OmitIfEmpty" => 1);
        $this->UpdateFields["is_recommended"] = array("Name" => "is_recommended", "Value" => "", "DataType" => ccsInteger);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @30-A5673706
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urlproduct_id", ccsInteger, "", "", $this->Parameters["urlproduct_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "product_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsInteger),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @30-83318E8C
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT *, product_id \n\n" .
        "FROM store_products {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, $this->Order));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @30-2456F318
    function SetValues()
    {
        $this->category_id->SetDBValue(trim($this->f("category_id")));
        $this->product_name->SetDBValue($this->f("product_name"));
        $this->price->SetDBValue(trim($this->f("price")));
        $this->image_url->SetDBValue($this->f("image_url"));
        $this->description1->SetDBValue($this->f("description"));
        $this->is_recommended->SetDBValue(trim($this->f("is_recommended")));
    }
//End SetValues Method

//Insert Method @30-B49CA496
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["category_id"]["Value"] = $this->category_id->GetDBValue(true);
        $this->InsertFields["product_name"]["Value"] = $this->product_name->GetDBValue(true);
        $this->InsertFields["price"]["Value"] = $this->price->GetDBValue(true);
        $this->InsertFields["image_url"]["Value"] = $this->image_url->GetDBValue(true);
        $this->InsertFields["description"]["Value"] = $this->description1->GetDBValue(true);
        $this->InsertFields["is_recommended"]["Value"] = $this->is_recommended->GetDBValue(true);
        $this->SQL = CCBuildInsert("store_products", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @30-61F879DC
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $Where = "";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->UpdateFields["category_id"]["Value"] = $this->category_id->GetDBValue(true);
        $this->UpdateFields["product_name"]["Value"] = $this->product_name->GetDBValue(true);
        $this->UpdateFields["price"]["Value"] = $this->price->GetDBValue(true);
        $this->UpdateFields["image_url"]["Value"] = $this->image_url->GetDBValue(true);
        $this->UpdateFields["description"]["Value"] = $this->description1->GetDBValue(true);
        $this->UpdateFields["is_recommended"]["Value"] = $this->is_recommended->GetDBValue(true);
        $this->SQL = CCBuildUpdate("store_products", $this->UpdateFields, $this);
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

//Delete Method @30-2036DDAC
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $Where = "";
        $this->cp["product_id"] = new clsSQLParameter("urlproduct_id", ccsText, "", "", CCGetFromGet("product_id", NULL), "", false, $this->ErrorBlock);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        if (!is_null($this->cp["product_id"]->GetValue()) and !strlen($this->cp["product_id"]->GetText()) and !is_bool($this->cp["product_id"]->GetValue())) 
            $this->cp["product_id"]->SetText(CCGetFromGet("product_id", NULL));
        $this->SQL = "UPDATE store_products\n" .
        "SET is_active=0\n" .
        "WHERE product_id=" . $this->SQLValue($this->cp["product_id"]->GetDBValue(), ccsText) . "";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteDelete", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteDelete", $this->Parent);
        }
    }
//End Delete Method

} //End store_productsDataSource Class @30-FCB6E20C

//Include Page implementation @28-1A7B89D7
include_once(RelativePath . "/Admin/AdmHeader.php");
//End Include Page implementation

//Include Page implementation @29-594D0A6B
include_once(RelativePath . "/Admin/AdmMenu.php");
//End Include Page implementation

//Initialize Page @1-B857317E
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
$TemplateFileName = "AdmProductRecord.html";
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

//Initialize Objects @1-5546A22B
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
$store_products = new clsRecordstore_products("", $MainPage);
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
$MainPage->store_products = & $store_products;
$MainPage->Menu = & $Menu;
$MainPage->AdmHeader = & $AdmHeader;
$MainPage->Sidebar = & $Sidebar;
$MainPage->AdmMenu = & $AdmMenu;
$Content->AddComponent("store_products", $store_products);
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

//Execute Components @1-0726047B
$MasterPage->Operations();
$AdmMenu->Operations();
$AdmHeader->Operations();
$store_products->Operation();
//End Execute Components

//Go to destination page @1-0219B20E
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBInternetDB->close();
    header("Location: " . $Redirect);
    unset($store_products);
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

//Unload Page @1-EB0B0FEC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBInternetDB->close();
unset($MasterPage);
unset($store_products);
$AdmHeader->Class_Terminate();
unset($AdmHeader);
$AdmMenu->Class_Terminate();
unset($AdmMenu);
unset($Tpl);
//End Unload Page


?>
