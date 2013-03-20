<?php
//Include Common Files @1-05824D6E
define("RelativePath", ".");
define("PathToCurrentPage", "/");
define("FileName", "Default.php");
include_once(RelativePath . "/Common.php");
include_once(RelativePath . "/Template.php");
include_once(RelativePath . "/Sorter.php");
include_once(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @39-EBA5EA16
include_once(RelativePath . "/footer.php");
//End Include Page implementation

//Initialize Page @1-C9FE9D90
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
$TemplateFileName = "Default.html";
$BlockToParse = "main";
$TemplateEncoding = "ISO-8859-1";
$ContentType = "text/html";
$PathToRoot = "./";
//End Initialize Page

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-21B3A0EC
$Attributes = new clsAttributes("page:");
$Attributes->SetValue("pathToRoot", $PathToRoot);
$MainPage->Attributes = & $Attributes;

// Controls
$Link5 = new clsControl(ccsLink, "Link5", "Link5", ccsText, "", CCGetRequestParam("Link5", ccsGet, NULL), $MainPage);
$Link5->Page = "DependentListBox2.php";
$Link14 = new clsControl(ccsLink, "Link14", "Link14", ccsText, "", CCGetRequestParam("Link14", ccsGet, NULL), $MainPage);
$Link14->Page = "DependentListBox3.php";
$Link16 = new clsControl(ccsLink, "Link16", "Link16", ccsText, "", CCGetRequestParam("Link16", ccsGet, NULL), $MainPage);
$Link16->Page = "Autocomplete.php";
$Link17 = new clsControl(ccsLink, "Link17", "Link17", ccsText, "", CCGetRequestParam("Link17", ccsGet, NULL), $MainPage);
$Link17->Page = "DatabaseInteraction.php";
$Link18 = new clsControl(ccsLink, "Link18", "Link18", ccsText, "", CCGetRequestParam("Link18", ccsGet, NULL), $MainPage);
$Link18->Page = "ModalWindow.php";
$footer = new clsfooter("", "footer", $MainPage);
$footer->Initialize();
$MainPage->Link5 = & $Link5;
$MainPage->Link14 = & $Link14;
$MainPage->Link16 = & $Link16;
$MainPage->Link17 = & $Link17;
$MainPage->Link18 = & $Link18;
$MainPage->footer = & $footer;

$CCSEventResult = CCGetEvent($CCSEvents, "AfterInitialize", $MainPage);

if ($Charset) {
    header("Content-Type: " . $ContentType . "; charset=" . $Charset);
} else {
    header("Content-Type: " . $ContentType);
}
//End Initialize Objects

//Initialize HTML Template @1-C4284C40
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
$Attributes->SetValue("pathToRoot", "");
$Attributes->Show();
//End Initialize HTML Template

//Execute Components @1-EEDDD15A
$footer->Operations();
//End Execute Components

//Go to destination page @1-68C2BEF1
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    header("Location: " . $Redirect);
    $footer->Class_Terminate();
    unset($footer);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-46F17C7E
$footer->Show();
$Link5->Show();
$Link14->Show();
$Link16->Show();
$Link17->Show();
$Link18->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
if (!isset($main_block)) $main_block = $Tpl->GetVar($BlockToParse);
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-DE3CB5FB
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$footer->Class_Terminate();
unset($footer);
unset($Tpl);
//End Unload Page


?>
