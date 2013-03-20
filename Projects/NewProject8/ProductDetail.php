<?php
//Include Common Files @1-C80E1AA4
define("RelativePath", ".");
define("PathToCurrentPage", "/");
define("FileName", "ProductDetail.php");
include_once(RelativePath . "/Common.php");
include_once(RelativePath . "/Template.php");
include_once(RelativePath . "/Sorter.php");
include_once(RelativePath . "/Navigator.php");
//End Include Common Files

//Master Page implementation @1-61A23584
include_once(RelativePath . "/Designs/BookStore/MasterPage.php");
//End Master Page implementation

class clsRecordstore_products { //store_products Class @66-C18400C9

//Variables @66-9E315808

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

//Class_Initialize Event @66-22B04F27
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
            $this->image_url = new clsControl(ccsImage, "image_url", "image_url", ccsText, "", CCGetRequestParam("image_url", $Method, NULL), $this);
            $this->price = new clsControl(ccsLabel, "price", "price", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), CCGetRequestParam("price", $Method, NULL), $this);
            $this->description1 = new clsControl(ccsLabel, "description1", "description1", ccsMemo, "", CCGetRequestParam("description1", $Method, NULL), $this);
            $this->product_name = new clsControl(ccsLabel, "product_name", "product_name", ccsText, "", CCGetRequestParam("product_name", $Method, NULL), $this);
            $this->Category = new clsControl(ccsLabel, "Category", "Category", ccsText, "", CCGetRequestParam("Category", $Method, NULL), $this);
        }
    }
//End Class_Initialize Event

//Initialize Method @66-1E2CBA43
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urlproduct_id"] = CCGetFromGet("product_id", NULL);
    }
//End Initialize Method

//Validate Method @66-367945B8
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @66-9F64AE95
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->image_url->Errors->Count());
        $errors = ($errors || $this->price->Errors->Count());
        $errors = ($errors || $this->description1->Errors->Count());
        $errors = ($errors || $this->product_name->Errors->Count());
        $errors = ($errors || $this->Category->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @66-17DC9883
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

        $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if ($Redirect)
            $this->DataSource->close();
    }
//End Operation Method

//Show Method @66-4AFC2F03
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
                $this->image_url->SetValue($this->DataSource->image_url->GetValue());
                $this->price->SetValue($this->DataSource->price->GetValue());
                $this->description1->SetValue($this->DataSource->description1->GetValue());
                $this->product_name->SetValue($this->DataSource->product_name->GetValue());
                $this->Category->SetValue($this->DataSource->Category->GetValue());
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->image_url->Errors->ToString());
            $Error = ComposeStrings($Error, $this->price->Errors->ToString());
            $Error = ComposeStrings($Error, $this->description1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->product_name->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Category->Errors->ToString());
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

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        $this->Attributes->Show();
        if(!$this->Visible) {
            $Tpl->block_path = $ParentPath;
            return;
        }

        $this->image_url->Show();
        $this->price->Show();
        $this->description1->Show();
        $this->product_name->Show();
        $this->Category->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End store_products Class @66-FCB6E20C

class clsstore_productsDataSource extends clsDBInternetDB {  //store_productsDataSource Class @66-B5C31F8A

//DataSource Variables @66-B4C36EFA
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $wp;
    public $AllParametersSet;


    // Datasource fields
    public $image_url;
    public $price;
    public $description1;
    public $product_name;
    public $Category;
//End DataSource Variables

//DataSourceClass_Initialize Event @66-DCBD9280
    function clsstore_productsDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record store_products/Error";
        $this->Initialize();
        $this->image_url = new clsField("image_url", ccsText, "");
        
        $this->price = new clsField("price", ccsFloat, "");
        
        $this->description1 = new clsField("description1", ccsMemo, "");
        
        $this->product_name = new clsField("product_name", ccsText, "");
        
        $this->Category = new clsField("Category", ccsText, "");
        

    }
//End DataSourceClass_Initialize Event

//Prepare Method @66-A5673706
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

//Open Method @66-8FBC84C1
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT store_products.*, category_name \n\n" .
        "FROM store_products LEFT JOIN store_categories ON\n\n" .
        "store_products.category_id = store_categories.category_id {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, $this->Order));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @66-6B9A4FFD
    function SetValues()
    {
        $this->image_url->SetDBValue($this->f("image_url"));
        $this->price->SetDBValue(trim($this->f("price")));
        $this->description1->SetDBValue($this->f("description"));
        $this->product_name->SetDBValue($this->f("product_name"));
        $this->Category->SetDBValue($this->f("category_name"));
    }
//End SetValues Method

} //End store_productsDataSource Class @66-FCB6E20C

class clsRecordadd_to_cart { //add_to_cart Class @50-D3485243

//Variables @50-9E315808

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

//Class_Initialize Event @50-64C39A64
    function clsRecordadd_to_cart($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record add_to_cart/Error";
        $this->DataSource = new clsadd_to_cartDataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "add_to_cart";
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
            $this->quantity = new clsControl(ccsTextBox, "quantity", "Quantity", ccsInteger, "", CCGetRequestParam("quantity", $Method, NULL), $this);
            $this->quantity->Required = true;
            $this->product_id = new clsControl(ccsHidden, "product_id", "Product Id", ccsInteger, "", CCGetRequestParam("product_id", $Method, NULL), $this);
            $this->shopping_cart_id = new clsControl(ccsHidden, "shopping_cart_id", "Shopping Cart Id", ccsInteger, "", CCGetRequestParam("shopping_cart_id", $Method, NULL), $this);
            if(!$this->FormSubmitted) {
                if(!is_array($this->quantity->Value) && !strlen($this->quantity->Value) && $this->quantity->Value !== false)
                    $this->quantity->SetText(1);
            }
        }
    }
//End Class_Initialize Event

//Initialize Method @50-0054198A
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urlshopping_cart_item_id"] = CCGetFromGet("shopping_cart_item_id", NULL);
    }
//End Initialize Method

//Validate Method @50-1FBD014A
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->quantity->Validate() && $Validation);
        $Validation = ($this->product_id->Validate() && $Validation);
        $Validation = ($this->shopping_cart_id->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->quantity->Errors->Count() == 0);
        $Validation =  $Validation && ($this->product_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->shopping_cart_id->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @50-AF9833EA
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->quantity->Errors->Count());
        $errors = ($errors || $this->product_id->Errors->Count());
        $errors = ($errors || $this->shopping_cart_id->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @50-1409CA9C
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
        $Redirect = "ShoppingCart.php";
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

//InsertRow Method @50-F97A8233
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->quantity->SetValue($this->quantity->GetValue(true));
        $this->DataSource->product_id->SetValue($this->product_id->GetValue(true));
        $this->DataSource->shopping_cart_id->SetValue($this->shopping_cart_id->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//Show Method @50-B786018D
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
                    $this->quantity->SetValue($this->DataSource->quantity->GetValue());
                    $this->product_id->SetValue($this->DataSource->product_id->GetValue());
                    $this->shopping_cart_id->SetValue($this->DataSource->shopping_cart_id->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->quantity->Errors->ToString());
            $Error = ComposeStrings($Error, $this->product_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->shopping_cart_id->Errors->ToString());
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
        $this->quantity->Show();
        $this->product_id->Show();
        $this->shopping_cart_id->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End add_to_cart Class @50-FCB6E20C

class clsadd_to_cartDataSource extends clsDBInternetDB {  //add_to_cartDataSource Class @50-CBD57820

//DataSource Variables @50-FE486D92
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
    public $quantity;
    public $product_id;
    public $shopping_cart_id;
//End DataSource Variables

//DataSourceClass_Initialize Event @50-669A4270
    function clsadd_to_cartDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record add_to_cart/Error";
        $this->Initialize();
        $this->quantity = new clsField("quantity", ccsInteger, "");
        
        $this->product_id = new clsField("product_id", ccsInteger, "");
        
        $this->shopping_cart_id = new clsField("shopping_cart_id", ccsInteger, "");
        

        $this->InsertFields["quantity"] = array("Name" => "quantity", "Value" => "", "DataType" => ccsInteger, "OmitIfEmpty" => 1);
        $this->InsertFields["product_id"] = array("Name" => "product_id", "Value" => "", "DataType" => ccsInteger, "OmitIfEmpty" => 1);
        $this->InsertFields["shopping_cart_id"] = array("Name" => "shopping_cart_id", "Value" => "", "DataType" => ccsInteger, "OmitIfEmpty" => 1);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @50-DE19AA9A
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urlshopping_cart_item_id", ccsInteger, "", "", $this->Parameters["urlshopping_cart_item_id"], -1, false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "shopping_cart_item_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsInteger),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @50-A87917C0
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM store_shopping_cart_items {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, $this->Order));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @50-FDD7A04E
    function SetValues()
    {
        $this->quantity->SetDBValue(trim($this->f("quantity")));
        $this->product_id->SetDBValue(trim($this->f("product_id")));
        $this->shopping_cart_id->SetDBValue(trim($this->f("shopping_cart_id")));
    }
//End SetValues Method

//Insert Method @50-DB4CA76F
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["quantity"]["Value"] = $this->quantity->GetDBValue(true);
        $this->InsertFields["product_id"]["Value"] = $this->product_id->GetDBValue(true);
        $this->InsertFields["shopping_cart_id"]["Value"] = $this->shopping_cart_id->GetDBValue(true);
        $this->SQL = CCBuildInsert("store_shopping_cart_items", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

} //End add_to_cartDataSource Class @50-FCB6E20C

//Include Page implementation @40-3DD2EFDC
include_once(RelativePath . "/Header.php");
//End Include Page implementation

//Include Page implementation @46-9D52A3A2
include_once(RelativePath . "/Categories.php");
//End Include Page implementation

//Include Page implementation @45-DACD5363
include_once(RelativePath . "/Search.php");
//End Include Page implementation

//Include Page implementation @93-27AB8681
include_once(RelativePath . "/Recommended.php");
//End Include Page implementation

//Initialize Page @1-1CB0AC0D
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
$TemplateFileName = "ProductDetail.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$ContentType = "text/html";
$PathToRoot = "./";
//End Initialize Page

//Include events file @1-343C464B
include_once("./ProductDetail_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-7CF42DC5
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
$add_to_cart = new clsRecordadd_to_cart("", $MainPage);
$Menu = new clsPanel("Menu", $MainPage);
$Menu->PlaceholderName = "Menu";
$Header = new clsHeader("", "Header", $MainPage);
$Header->Initialize();
$Sidebar = new clsPanel("Sidebar", $MainPage);
$Sidebar->PlaceholderName = "Sidebar1";
$Categories = new clsCategories("", "Categories", $MainPage);
$Categories->Initialize();
$Search = new clsSearch("", "Search", $MainPage);
$Search->Initialize();
$Recommended = new clsRecommended("", "Recommended", $MainPage);
$Recommended->Initialize();
$MainPage->Head = & $Head;
$MainPage->Content = & $Content;
$MainPage->store_products = & $store_products;
$MainPage->add_to_cart = & $add_to_cart;
$MainPage->Menu = & $Menu;
$MainPage->Header = & $Header;
$MainPage->Sidebar = & $Sidebar;
$MainPage->Categories = & $Categories;
$MainPage->Search = & $Search;
$MainPage->Recommended = & $Recommended;
$Content->AddComponent("store_products", $store_products);
$Content->AddComponent("add_to_cart", $add_to_cart);
$Menu->AddComponent("Header", $Header);
$Sidebar->AddComponent("Categories", $Categories);
$Sidebar->AddComponent("Search", $Search);
$Sidebar->AddComponent("Recommended", $Recommended);
$store_products->Initialize();
$add_to_cart->Initialize();

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

//Execute Components @1-2A64E345
$MasterPage->Operations();
$Recommended->Operations();
$Search->Operations();
$Categories->Operations();
$Header->Operations();
$add_to_cart->Operation();
$store_products->Operation();
//End Execute Components

//Go to destination page @1-8BC7B7F7
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBInternetDB->close();
    header("Location: " . $Redirect);
    unset($store_products);
    unset($add_to_cart);
    $Header->Class_Terminate();
    unset($Header);
    $Categories->Class_Terminate();
    unset($Categories);
    $Search->Class_Terminate();
    unset($Search);
    $Recommended->Class_Terminate();
    unset($Recommended);
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

//Unload Page @1-6F797F0C
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBInternetDB->close();
unset($MasterPage);
unset($store_products);
unset($add_to_cart);
$Header->Class_Terminate();
unset($Header);
$Categories->Class_Terminate();
unset($Categories);
$Search->Class_Terminate();
unset($Search);
$Recommended->Class_Terminate();
unset($Recommended);
unset($Tpl);
//End Unload Page


?>
