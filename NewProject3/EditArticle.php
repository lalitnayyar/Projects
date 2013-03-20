<?php
//Include Common Files @1-5F50FDA1
define("RelativePath", ".");
define("PathToCurrentPage", "/");
define("FileName", "EditArticle.php");
include_once(RelativePath . "/Common.php");
include_once(RelativePath . "/Template.php");
include_once(RelativePath . "/Sorter.php");
include_once(RelativePath . "/Navigator.php");
//End Include Common Files

//Master Page implementation @1-DB06AD2E
include_once(RelativePath . "/Designs/FarmSong/MasterPage.php");
//End Master Page implementation

class clsRecordarticles { //articles Class @36-F7912273

//Variables @36-9E315808

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

//Class_Initialize Event @36-53567DDC
    function clsRecordarticles($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record articles/Error";
        $this->DataSource = new clsarticlesDataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        $this->UpdateAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "articles";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = explode(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->article_title = new clsControl(ccsTextArea, "article_title", "Title", ccsText, "", CCGetRequestParam("article_title", $Method, NULL), $this);
            $this->article_title->Required = true;
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
            $this->article_desc = new clsControl(ccsTextArea, "article_desc", "Description", ccsMemo, "", CCGetRequestParam("article_desc", $Method, NULL), $this);
            $this->article_desc->Required = true;
            $this->date_expire = new clsControl(ccsTextBox, "date_expire", "Expiration date", ccsDate, array("mm", "/", "dd", "/", "yyyy"), CCGetRequestParam("date_expire", $Method, NULL), $this);
            $this->portal_Insert = new clsButton("portal_Insert", $Method, $this);
            $this->portal_Update = new clsButton("portal_Update", $Method, $this);
            $this->portal_Delete = new clsButton("portal_Delete", $Method, $this);
            $this->portal_Cancel = new clsButton("portal_Cancel", $Method, $this);
        }
    }
//End Class_Initialize Event

//Initialize Method @36-C802695C
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urlarticle_id"] = CCGetFromGet("article_id", NULL);
    }
//End Initialize Method

//Validate Method @36-77454C6C
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->article_title->Validate() && $Validation);
        $Validation = ($this->category_id->Validate() && $Validation);
        $Validation = ($this->article_desc->Validate() && $Validation);
        $Validation = ($this->date_expire->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->article_title->Errors->Count() == 0);
        $Validation =  $Validation && ($this->category_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->article_desc->Errors->Count() == 0);
        $Validation =  $Validation && ($this->date_expire->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @36-B47A1A9B
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->article_title->Errors->Count());
        $errors = ($errors || $this->category_id->Errors->Count());
        $errors = ($errors || $this->article_desc->Errors->Count());
        $errors = ($errors || $this->date_expire->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @36-D0A7E1A1
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
        $Redirect = "AdminArticles.php";
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

//InsertRow Method @36-00876EB8
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->article_title->SetValue($this->article_title->GetValue(true));
        $this->DataSource->category_id->SetValue($this->category_id->GetValue(true));
        $this->DataSource->article_desc->SetValue($this->article_desc->GetValue(true));
        $this->DataSource->date_expire->SetValue($this->date_expire->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @36-1E001BB9
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->article_title->SetValue($this->article_title->GetValue(true));
        $this->DataSource->category_id->SetValue($this->category_id->GetValue(true));
        $this->DataSource->article_desc->SetValue($this->article_desc->GetValue(true));
        $this->DataSource->date_expire->SetValue($this->date_expire->GetValue(true));
        $this->DataSource->Update();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterUpdate", $this);
        return (!$this->CheckErrors());
    }
//End UpdateRow Method

//DeleteRow Method @36-299D98C3
    function DeleteRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeDelete", $this);
        if(!$this->DeleteAllowed) return false;
        $this->DataSource->Delete();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterDelete", $this);
        return (!$this->CheckErrors());
    }
//End DeleteRow Method

//Show Method @36-56976AE6
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
                    $this->article_title->SetValue($this->DataSource->article_title->GetValue());
                    $this->category_id->SetValue($this->DataSource->category_id->GetValue());
                    $this->article_desc->SetValue($this->DataSource->article_desc->GetValue());
                    $this->date_expire->SetValue($this->DataSource->date_expire->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->article_title->Errors->ToString());
            $Error = ComposeStrings($Error, $this->category_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->article_desc->Errors->ToString());
            $Error = ComposeStrings($Error, $this->date_expire->Errors->ToString());
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

        $this->article_title->Show();
        $this->category_id->Show();
        $this->article_desc->Show();
        $this->date_expire->Show();
        $this->portal_Insert->Show();
        $this->portal_Update->Show();
        $this->portal_Delete->Show();
        $this->portal_Cancel->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End articles Class @36-FCB6E20C

class clsarticlesDataSource extends clsDBinternet {  //articlesDataSource Class @36-78E6A599

//DataSource Variables @36-7377B5E9
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
    public $article_title;
    public $category_id;
    public $article_desc;
    public $date_expire;
//End DataSource Variables

//DataSourceClass_Initialize Event @36-49104358
    function clsarticlesDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record articles/Error";
        $this->Initialize();
        $this->article_title = new clsField("article_title", ccsText, "");
        
        $this->category_id = new clsField("category_id", ccsInteger, "");
        
        $this->article_desc = new clsField("article_desc", ccsMemo, "");
        
        $this->date_expire = new clsField("date_expire", ccsDate, $this->DateFormat);
        

        $this->InsertFields["article_title"] = array("Name" => "article_title", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["category_id"] = array("Name" => "category_id", "Value" => "", "DataType" => ccsInteger, "OmitIfEmpty" => 1);
        $this->InsertFields["article_desc"] = array("Name" => "article_desc", "Value" => "", "DataType" => ccsMemo, "OmitIfEmpty" => 1);
        $this->InsertFields["date_end"] = array("Name" => "date_end", "Value" => "", "DataType" => ccsDate, "OmitIfEmpty" => 1);
        $this->UpdateFields["article_title"] = array("Name" => "article_title", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["category_id"] = array("Name" => "category_id", "Value" => "", "DataType" => ccsInteger, "OmitIfEmpty" => 1);
        $this->UpdateFields["article_desc"] = array("Name" => "article_desc", "Value" => "", "DataType" => ccsMemo, "OmitIfEmpty" => 1);
        $this->UpdateFields["date_end"] = array("Name" => "date_end", "Value" => "", "DataType" => ccsDate, "OmitIfEmpty" => 1);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @36-E411ACEA
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urlarticle_id", ccsInteger, "", "", $this->Parameters["urlarticle_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "article_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsInteger),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @36-1E92695E
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM articles {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, $this->Order));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @36-09330B76
    function SetValues()
    {
        $this->article_title->SetDBValue($this->f("article_title"));
        $this->category_id->SetDBValue(trim($this->f("category_id")));
        $this->article_desc->SetDBValue($this->f("article_desc"));
        $this->date_expire->SetDBValue(trim($this->f("date_end")));
    }
//End SetValues Method

//Insert Method @36-C89D23A3
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["article_title"]["Value"] = $this->article_title->GetDBValue(true);
        $this->InsertFields["category_id"]["Value"] = $this->category_id->GetDBValue(true);
        $this->InsertFields["article_desc"]["Value"] = $this->article_desc->GetDBValue(true);
        $this->InsertFields["date_end"]["Value"] = $this->date_expire->GetDBValue(true);
        $this->SQL = CCBuildInsert("articles", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @36-3035F812
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $Where = "";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->UpdateFields["article_title"]["Value"] = $this->article_title->GetDBValue(true);
        $this->UpdateFields["category_id"]["Value"] = $this->category_id->GetDBValue(true);
        $this->UpdateFields["article_desc"]["Value"] = $this->article_desc->GetDBValue(true);
        $this->UpdateFields["date_end"]["Value"] = $this->date_expire->GetDBValue(true);
        $this->SQL = CCBuildUpdate("articles", $this->UpdateFields, $this);
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

//Delete Method @36-9085144E
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $Where = "";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $this->SQL = "DELETE FROM articles";
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

} //End articlesDataSource Class @36-FCB6E20C

//Include Page implementation @26-3DD2EFDC
include_once(RelativePath . "/Header.php");
//End Include Page implementation

//Include Page implementation @32-39F846CD
include_once(RelativePath . "/AdminMenu.php");
//End Include Page implementation

//Initialize Page @1-0E75DB37
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
$TemplateFileName = "EditArticle.html";
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

//Initialize Objects @1-CDE9CCE8
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
$articles = new clsRecordarticles("", $MainPage);
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
$MainPage->articles = & $articles;
$MainPage->Menu = & $Menu;
$MainPage->Header = & $Header;
$MainPage->Sidebar1 = & $Sidebar1;
$MainPage->AdminMenu = & $AdminMenu;
$Content->AddComponent("articles", $articles);
$Menu->AddComponent("Header", $Header);
$Sidebar1->AddComponent("AdminMenu", $AdminMenu);
$articles->Initialize();

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

//Execute Components @1-05E4D8AB
$MasterPage->Operations();
$AdminMenu->Operations();
$Header->Operations();
$articles->Operation();
//End Execute Components

//Go to destination page @1-0A904DD9
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBinternet->close();
    header("Location: " . $Redirect);
    unset($articles);
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

//Unload Page @1-48BE78D3
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBinternet->close();
unset($MasterPage);
unset($articles);
$Header->Class_Terminate();
unset($Header);
$AdminMenu->Class_Terminate();
unset($AdminMenu);
unset($Tpl);
//End Unload Page


?>
