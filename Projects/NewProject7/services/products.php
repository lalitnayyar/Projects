<?php
//Include Common Files @1-C93EAB2C
define("RelativePath", "..");
define("PathToCurrentPage", "/services/");
define("FileName", "products.php");
include_once(RelativePath . "/Common.php");
include_once(RelativePath . "/Template.php");
include_once(RelativePath . "/Sorter.php");
include_once(RelativePath . "/Navigator.php");
//End Include Common Files

class clsGridstore_products1 { //store_products1 class @2-5A51F1DF

//Variables @2-6E51DF5A

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

//Class_Initialize Event @2-B7F13A12
    function clsGridstore_products1($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "store_products1";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid store_products1";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsstore_products1DataSource($this);
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

        $this->product_id = new clsControl(ccsLabel, "product_id", "product_id", ccsInteger, "", CCGetRequestParam("product_id", ccsGet, NULL), $this);
        $this->category_id = new clsControl(ccsLabel, "category_id", "category_id", ccsInteger, "", CCGetRequestParam("category_id", ccsGet, NULL), $this);
        $this->product_name = new clsControl(ccsLabel, "product_name", "product_name", ccsText, "", CCGetRequestParam("product_name", ccsGet, NULL), $this);
        $this->price = new clsControl(ccsLabel, "price", "price", ccsFloat, "", CCGetRequestParam("price", ccsGet, NULL), $this);
        $this->image_url = new clsControl(ccsLabel, "image_url", "image_url", ccsText, "", CCGetRequestParam("image_url", ccsGet, NULL), $this);
        $this->description = new clsControl(ccsLabel, "description", "description", ccsMemo, "", CCGetRequestParam("description", ccsGet, NULL), $this);
        $this->is_recommended = new clsControl(ccsLabel, "is_recommended", "is_recommended", ccsInteger, "", CCGetRequestParam("is_recommended", ccsGet, NULL), $this);
    }
//End Class_Initialize Event

//Initialize Method @2-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @2-B0B924B5
    function Show()
    {
        $Tpl = & CCGetTemplate($this);
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urlkeyword"] = CCGetFromGet("keyword", NULL);

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
            $this->ControlsVisible["product_id"] = $this->product_id->Visible;
            $this->ControlsVisible["category_id"] = $this->category_id->Visible;
            $this->ControlsVisible["product_name"] = $this->product_name->Visible;
            $this->ControlsVisible["price"] = $this->price->Visible;
            $this->ControlsVisible["image_url"] = $this->image_url->Visible;
            $this->ControlsVisible["description"] = $this->description->Visible;
            $this->ControlsVisible["is_recommended"] = $this->is_recommended->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                // Parse Separator
                if($this->RowNumber) {
                    $this->Attributes->Show();
                    $Tpl->parseto("Separator", true, "Row");
                }
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->product_id->SetValue($this->DataSource->product_id->GetValue());
                $this->category_id->SetValue($this->DataSource->category_id->GetValue());
                $this->product_name->SetValue($this->DataSource->product_name->GetValue());
                $this->price->SetValue($this->DataSource->price->GetValue());
                $this->image_url->SetValue($this->DataSource->image_url->GetValue());
                $this->description->SetValue($this->DataSource->description->GetValue());
                $this->is_recommended->SetValue($this->DataSource->is_recommended->GetValue());
                $this->Attributes->SetValue("rowNumber", $this->RowNumber);
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->product_id->Show();
                $this->category_id->Show();
                $this->product_name->Show();
                $this->price->Show();
                $this->image_url->Show();
                $this->description->Show();
                $this->is_recommended->Show();
                $Tpl->block_path = $ParentPath . "/" . $GridBlock;
                $Tpl->parse("Row", true);
            }
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

//GetErrors Method @2-2F2B7FC4
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->product_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->category_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->product_name->Errors->ToString());
        $errors = ComposeStrings($errors, $this->price->Errors->ToString());
        $errors = ComposeStrings($errors, $this->image_url->Errors->ToString());
        $errors = ComposeStrings($errors, $this->description->Errors->ToString());
        $errors = ComposeStrings($errors, $this->is_recommended->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End store_products1 Class @2-FCB6E20C

class clsstore_products1DataSource extends clsDBInternetDB {  //store_products1DataSource Class @2-B6FB6D05

//DataSource Variables @2-52E17EEE
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $product_id;
    public $category_id;
    public $product_name;
    public $price;
    public $image_url;
    public $description;
    public $is_recommended;
//End DataSource Variables

//DataSourceClass_Initialize Event @2-3C135AF3
    function clsstore_products1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid store_products1";
        $this->Initialize();
        $this->product_id = new clsField("product_id", ccsInteger, "");
        
        $this->category_id = new clsField("category_id", ccsInteger, "");
        
        $this->product_name = new clsField("product_name", ccsText, "");
        
        $this->price = new clsField("price", ccsFloat, "");
        
        $this->image_url = new clsField("image_url", ccsText, "");
        
        $this->description = new clsField("description", ccsMemo, "");
        
        $this->is_recommended = new clsField("is_recommended", ccsInteger, "");
        

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @2-9E1383D1
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            "");
    }
//End SetOrder Method

//Prepare Method @2-0E7D6322
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urlkeyword", ccsInteger, "", "", $this->Parameters["urlkeyword"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "product_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsInteger),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @2-3FA74D64
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM store_products";
        $this->SQL = "SELECT TOP {SqlParam_endRecord} * \n\n" .
        "FROM store_products {SQL_Where} {SQL_OrderBy}";
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

//SetValues Method @2-A5A4C29E
    function SetValues()
    {
        $this->product_id->SetDBValue(trim($this->f("product_id")));
        $this->category_id->SetDBValue(trim($this->f("category_id")));
        $this->product_name->SetDBValue($this->f("product_name"));
        $this->price->SetDBValue(trim($this->f("price")));
        $this->image_url->SetDBValue($this->f("image_url"));
        $this->description->SetDBValue($this->f("description"));
        $this->is_recommended->SetDBValue(trim($this->f("is_recommended")));
    }
//End SetValues Method

} //End store_products1DataSource Class @2-FCB6E20C

//Initialize Page @1-96C753D9
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
$TemplateFileName = "products.html";
$BlockToParse = "main";
$TemplateEncoding = "ISO-8859-1";
$ContentType = "text/html";
$PathToRoot = "../";
//End Initialize Page

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-F25C1F30
$DBInternetDB = new clsDBInternetDB();
$MainPage->Connections["InternetDB"] = & $DBInternetDB;
$Attributes = new clsAttributes("page:");
$Attributes->SetValue("pathToRoot", $PathToRoot);
$MainPage->Attributes = & $Attributes;

// Controls
$store_products1 = new clsGridstore_products1("", $MainPage);
$MainPage->store_products1 = & $store_products1;
$store_products1->Initialize();

$CCSEventResult = CCGetEvent($CCSEvents, "AfterInitialize", $MainPage);

if ($Charset) {
    header("Content-Type: " . $ContentType . "; charset=" . $Charset);
} else {
    header("Content-Type: " . $ContentType);
}
//End Initialize Objects

//Initialize HTML Template @1-08A1D0E0
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
$Attributes->SetValue("pathToRoot", "../");
$Attributes->Show();
//End Initialize HTML Template

//Go to destination page @1-C6744025
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBInternetDB->close();
    header("Location: " . $Redirect);
    unset($store_products1);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-27C41558
$store_products1->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
if (!isset($main_block)) $main_block = $Tpl->GetVar($BlockToParse);
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-144697A1
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBInternetDB->close();
unset($store_products1);
unset($Tpl);
//End Unload Page


?>
