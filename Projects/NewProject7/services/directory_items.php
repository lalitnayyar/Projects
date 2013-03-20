<?php
//Include Common Files @1-5143FC77
define("RelativePath", "..");
define("PathToCurrentPage", "/services/");
define("FileName", "directory_items.php");
include_once(RelativePath . "/Common.php");
include_once(RelativePath . "/Template.php");
include_once(RelativePath . "/Sorter.php");
include_once(RelativePath . "/Navigator.php");
//End Include Common Files

class clsGriddirectory_items { //directory_items class @2-F7CC92A5

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

//Class_Initialize Event @2-A9DC57AC
    function clsGriddirectory_items($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "directory_items";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid directory_items";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsdirectory_itemsDataSource($this);
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

        $this->item_id = new clsControl(ccsLabel, "item_id", "item_id", ccsInteger, "", CCGetRequestParam("item_id", ccsGet, NULL), $this);
        $this->category_id = new clsControl(ccsLabel, "category_id", "category_id", ccsInteger, "", CCGetRequestParam("category_id", ccsGet, NULL), $this);
        $this->item_name = new clsControl(ccsLabel, "item_name", "item_name", ccsText, "", CCGetRequestParam("item_name", ccsGet, NULL), $this);
        $this->address = new clsControl(ccsLabel, "address", "address", ccsText, "", CCGetRequestParam("address", ccsGet, NULL), $this);
        $this->city = new clsControl(ccsLabel, "city", "city", ccsText, "", CCGetRequestParam("city", ccsGet, NULL), $this);
        $this->zip = new clsControl(ccsLabel, "zip", "zip", ccsText, "", CCGetRequestParam("zip", ccsGet, NULL), $this);
        $this->state_name = new clsControl(ccsLabel, "state_name", "state_name", ccsText, "", CCGetRequestParam("state_name", ccsGet, NULL), $this);
        $this->phone = new clsControl(ccsLabel, "phone", "phone", ccsText, "", CCGetRequestParam("phone", ccsGet, NULL), $this);
        $this->note = new clsControl(ccsLabel, "note", "note", ccsMemo, "", CCGetRequestParam("note", ccsGet, NULL), $this);
        $this->email = new clsControl(ccsLabel, "email", "email", ccsText, "", CCGetRequestParam("email", ccsGet, NULL), $this);
        $this->url = new clsControl(ccsLabel, "url", "url", ccsText, "", CCGetRequestParam("url", ccsGet, NULL), $this);
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

//Show Method @2-E78344ED
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
            $this->ControlsVisible["item_id"] = $this->item_id->Visible;
            $this->ControlsVisible["category_id"] = $this->category_id->Visible;
            $this->ControlsVisible["item_name"] = $this->item_name->Visible;
            $this->ControlsVisible["address"] = $this->address->Visible;
            $this->ControlsVisible["city"] = $this->city->Visible;
            $this->ControlsVisible["zip"] = $this->zip->Visible;
            $this->ControlsVisible["state_name"] = $this->state_name->Visible;
            $this->ControlsVisible["phone"] = $this->phone->Visible;
            $this->ControlsVisible["note"] = $this->note->Visible;
            $this->ControlsVisible["email"] = $this->email->Visible;
            $this->ControlsVisible["url"] = $this->url->Visible;
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
                $this->item_id->SetValue($this->DataSource->item_id->GetValue());
                $this->category_id->SetValue($this->DataSource->category_id->GetValue());
                $this->item_name->SetValue($this->DataSource->item_name->GetValue());
                $this->address->SetValue($this->DataSource->address->GetValue());
                $this->city->SetValue($this->DataSource->city->GetValue());
                $this->zip->SetValue($this->DataSource->zip->GetValue());
                $this->state_name->SetValue($this->DataSource->state_name->GetValue());
                $this->phone->SetValue($this->DataSource->phone->GetValue());
                $this->note->SetValue($this->DataSource->note->GetValue());
                $this->email->SetValue($this->DataSource->email->GetValue());
                $this->url->SetValue($this->DataSource->url->GetValue());
                $this->Attributes->SetValue("rowNumber", $this->RowNumber);
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->item_id->Show();
                $this->category_id->Show();
                $this->item_name->Show();
                $this->address->Show();
                $this->city->Show();
                $this->zip->Show();
                $this->state_name->Show();
                $this->phone->Show();
                $this->note->Show();
                $this->email->Show();
                $this->url->Show();
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

//GetErrors Method @2-2091038D
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->item_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->category_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->item_name->Errors->ToString());
        $errors = ComposeStrings($errors, $this->address->Errors->ToString());
        $errors = ComposeStrings($errors, $this->city->Errors->ToString());
        $errors = ComposeStrings($errors, $this->zip->Errors->ToString());
        $errors = ComposeStrings($errors, $this->state_name->Errors->ToString());
        $errors = ComposeStrings($errors, $this->phone->Errors->ToString());
        $errors = ComposeStrings($errors, $this->note->Errors->ToString());
        $errors = ComposeStrings($errors, $this->email->Errors->ToString());
        $errors = ComposeStrings($errors, $this->url->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End directory_items Class @2-FCB6E20C

class clsdirectory_itemsDataSource extends clsDBInternetDB {  //directory_itemsDataSource Class @2-31D5FF00

//DataSource Variables @2-697E7470
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $item_id;
    public $category_id;
    public $item_name;
    public $address;
    public $city;
    public $zip;
    public $state_name;
    public $phone;
    public $note;
    public $email;
    public $url;
//End DataSource Variables

//DataSourceClass_Initialize Event @2-BCA10EFB
    function clsdirectory_itemsDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid directory_items";
        $this->Initialize();
        $this->item_id = new clsField("item_id", ccsInteger, "");
        
        $this->category_id = new clsField("category_id", ccsInteger, "");
        
        $this->item_name = new clsField("item_name", ccsText, "");
        
        $this->address = new clsField("address", ccsText, "");
        
        $this->city = new clsField("city", ccsText, "");
        
        $this->zip = new clsField("zip", ccsText, "");
        
        $this->state_name = new clsField("state_name", ccsText, "");
        
        $this->phone = new clsField("phone", ccsText, "");
        
        $this->note = new clsField("note", ccsMemo, "");
        
        $this->email = new clsField("email", ccsText, "");
        
        $this->url = new clsField("url", ccsText, "");
        

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

//Prepare Method @2-F1F1F4E6
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urlkeyword", ccsInteger, "", "", $this->Parameters["urlkeyword"], -1, false);
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "directory_items.item_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsInteger),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @2-65DEB562
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM states INNER JOIN directory_items ON\n\n" .
        "states.state_id = directory_items.state_id";
        $this->SQL = "SELECT TOP {SqlParam_endRecord} * \n\n" .
        "FROM states INNER JOIN directory_items ON\n\n" .
        "states.state_id = directory_items.state_id {SQL_Where} {SQL_OrderBy}";
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

//SetValues Method @2-9059E400
    function SetValues()
    {
        $this->item_id->SetDBValue(trim($this->f("item_id")));
        $this->category_id->SetDBValue(trim($this->f("category_id")));
        $this->item_name->SetDBValue($this->f("item_name"));
        $this->address->SetDBValue($this->f("address"));
        $this->city->SetDBValue($this->f("city"));
        $this->zip->SetDBValue($this->f("zip"));
        $this->state_name->SetDBValue($this->f("state_name"));
        $this->phone->SetDBValue($this->f("phone"));
        $this->note->SetDBValue($this->f("note"));
        $this->email->SetDBValue($this->f("email"));
        $this->url->SetDBValue($this->f("url"));
    }
//End SetValues Method

} //End directory_itemsDataSource Class @2-FCB6E20C

//Initialize Page @1-158647AC
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
$TemplateFileName = "directory_items.html";
$BlockToParse = "main";
$TemplateEncoding = "ISO-8859-1";
$ContentType = "text/html";
$PathToRoot = "../";
//End Initialize Page

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-0C7D7BAB
$DBInternetDB = new clsDBInternetDB();
$MainPage->Connections["InternetDB"] = & $DBInternetDB;
$Attributes = new clsAttributes("page:");
$Attributes->SetValue("pathToRoot", $PathToRoot);
$MainPage->Attributes = & $Attributes;

// Controls
$directory_items = new clsGriddirectory_items("", $MainPage);
$MainPage->directory_items = & $directory_items;
$directory_items->Initialize();

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

//Go to destination page @1-3309CA02
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBInternetDB->close();
    header("Location: " . $Redirect);
    unset($directory_items);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-877B43FE
$directory_items->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
if (!isset($main_block)) $main_block = $Tpl->GetVar($BlockToParse);
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-85040EC9
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBInternetDB->close();
unset($directory_items);
unset($Tpl);
//End Unload Page


?>
