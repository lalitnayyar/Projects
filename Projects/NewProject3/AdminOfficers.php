<?php
//Include Common Files @1-4DE56D00
define("RelativePath", ".");
define("PathToCurrentPage", "/");
define("FileName", "AdminOfficers.php");
include_once(RelativePath . "/Common.php");
include_once(RelativePath . "/Template.php");
include_once(RelativePath . "/Sorter.php");
include_once(RelativePath . "/Navigator.php");
//End Include Common Files

//Master Page implementation @1-DB06AD2E
include_once(RelativePath . "/Designs/FarmSong/MasterPage.php");
//End Master Page implementation

class clsGridofficers { //officers class @43-63E017DA

//Variables @43-AD24F47A

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
    public $Sorter_officer_name;
    public $Sorter_officer_position;
    public $Sorter_officer_email;
//End Variables

//Class_Initialize Event @43-6A86A2C2
    function clsGridofficers($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "officers";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid officers";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsofficersDataSource($this);
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
        $this->SorterName = CCGetParam("officersOrder", "");
        $this->SorterDirection = CCGetParam("officersDir", "");

        $this->officer_name = new clsControl(ccsLink, "officer_name", "officer_name", ccsText, "", CCGetRequestParam("officer_name", ccsGet, NULL), $this);
        $this->officer_name->Page = "EditOfficer.php";
        $this->officer_position = new clsControl(ccsLabel, "officer_position", "officer_position", ccsText, "", CCGetRequestParam("officer_position", ccsGet, NULL), $this);
        $this->officer_email = new clsControl(ccsLink, "officer_email", "officer_email", ccsText, "", CCGetRequestParam("officer_email", ccsGet, NULL), $this);
        $this->Sorter_officer_name = new clsSorter($this->ComponentName, "Sorter_officer_name", $FileName, $this);
        $this->Sorter_officer_position = new clsSorter($this->ComponentName, "Sorter_officer_position", $FileName, $this);
        $this->Sorter_officer_email = new clsSorter($this->ComponentName, "Sorter_officer_email", $FileName, $this);
        $this->Navigator = new clsNavigator($this->ComponentName, "Navigator", $FileName, 5, tpCentered, $this);
        $this->Navigator->PageSizes = array("1", "5", "10", "25", "50");
    }
//End Class_Initialize Event

//Initialize Method @43-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @43-80913B8E
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
            $this->ControlsVisible["officer_name"] = $this->officer_name->Visible;
            $this->ControlsVisible["officer_position"] = $this->officer_position->Visible;
            $this->ControlsVisible["officer_email"] = $this->officer_email->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->officer_name->SetValue($this->DataSource->officer_name->GetValue());
                $this->officer_name->Parameters = "";
                $this->officer_name->Parameters = CCAddParam($this->officer_name->Parameters, "officer_id", $this->DataSource->f("officer_id"));
                $this->officer_position->SetValue($this->DataSource->officer_position->GetValue());
                $this->officer_email->SetValue($this->DataSource->officer_email->GetValue());
                $this->officer_email->Page = $this->DataSource->f("officer_email");
                $this->Attributes->SetValue("rowNumber", $this->RowNumber);
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->officer_name->Show();
                $this->officer_position->Show();
                $this->officer_email->Show();
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
        $this->Sorter_officer_name->Show();
        $this->Sorter_officer_position->Show();
        $this->Sorter_officer_email->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @43-B48F020B
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->officer_name->Errors->ToString());
        $errors = ComposeStrings($errors, $this->officer_position->Errors->ToString());
        $errors = ComposeStrings($errors, $this->officer_email->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End officers Class @43-FCB6E20C

class clsofficersDataSource extends clsDBinternet {  //officersDataSource Class @43-C92298ED

//DataSource Variables @43-E57221D5
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $officer_name;
    public $officer_position;
    public $officer_email;
//End DataSource Variables

//DataSourceClass_Initialize Event @43-BE931654
    function clsofficersDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid officers";
        $this->Initialize();
        $this->officer_name = new clsField("officer_name", ccsText, "");
        
        $this->officer_position = new clsField("officer_position", ccsText, "");
        
        $this->officer_email = new clsField("officer_email", ccsText, "");
        

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @43-B15C58F2
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "officer_name";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_officer_name" => array("officer_name", ""), 
            "Sorter_officer_position" => array("officer_position", ""), 
            "Sorter_officer_email" => array("officer_email", "")));
    }
//End SetOrder Method

//Prepare Method @43-14D6CD9D
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
    }
//End Prepare Method

//Open Method @43-0C384006
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM officers";
        $this->SQL = "SELECT TOP {SqlParam_endRecord} * \n\n" .
        "FROM officers {SQL_Where} {SQL_OrderBy}";
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

//SetValues Method @43-9AA9C08E
    function SetValues()
    {
        $this->officer_name->SetDBValue($this->f("officer_name"));
        $this->officer_position->SetDBValue($this->f("officer_position"));
        $this->officer_email->SetDBValue($this->f("officer_email"));
    }
//End SetValues Method

} //End officersDataSource Class @43-FCB6E20C

//Include Page implementation @25-3DD2EFDC
include_once(RelativePath . "/Header.php");
//End Include Page implementation

//Include Page implementation @26-39F846CD
include_once(RelativePath . "/AdminMenu.php");
//End Include Page implementation

//Initialize Page @1-F6843147
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
$TemplateFileName = "AdminOfficers.html";
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

//Initialize Objects @1-852291CD
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
$Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", ccsGet, NULL), $MainPage);
$Link1->HTML = true;
$Link1->Page = "EditOfficer.php";
$officers = new clsGridofficers("", $MainPage);
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
$MainPage->Link1 = & $Link1;
$MainPage->officers = & $officers;
$MainPage->Menu = & $Menu;
$MainPage->Header = & $Header;
$MainPage->Sidebar1 = & $Sidebar1;
$MainPage->AdminMenu = & $AdminMenu;
$Content->AddComponent("officers", $officers);
$Content->AddComponent("Link1", $Link1);
$Menu->AddComponent("Header", $Header);
$Sidebar1->AddComponent("AdminMenu", $AdminMenu);
$officers->Initialize();

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

//Execute Components @1-D7E54551
$MasterPage->Operations();
$AdminMenu->Operations();
$Header->Operations();
//End Execute Components

//Go to destination page @1-F693B676
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBinternet->close();
    header("Location: " . $Redirect);
    unset($officers);
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

//Unload Page @1-BEB5EB14
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBinternet->close();
unset($MasterPage);
unset($officers);
$Header->Class_Terminate();
unset($Header);
$AdminMenu->Class_Terminate();
unset($AdminMenu);
unset($Tpl);
//End Unload Page


?>
