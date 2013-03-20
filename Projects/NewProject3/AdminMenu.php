<?php
class clsAdminMenu { //AdminMenu class @1-0F884A32

//Variables @1-EEEBE252
    public $ComponentType = "IncludablePage";
    public $Connections = array();
    public $FileName = "";
    public $Redirect = "";
    public $Tpl = "";
    public $TemplateFileName = "";
    public $BlockToParse = "";
    public $ComponentName = "";
    public $Attributes = "";

    // Events;
    public $CCSEvents = "";
    public $CCSEventResult = "";
    public $RelativePath;
    public $Visible;
    public $Parent;
    public $TemplateSource;
//End Variables

//Class_Initialize Event @1-E66588D2
    function clsAdminMenu($RelativePath, $ComponentName, & $Parent)
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = $ComponentName;
        $this->RelativePath = $RelativePath;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->FileName = "AdminMenu.php";
        $this->Redirect = "";
        $this->TemplateFileName = "AdminMenu.html";
        $this->BlockToParse = "main";
        $this->TemplateEncoding = "CP1252";
        $this->ContentType = "text/html";
    }
//End Class_Initialize Event

//Class_Terminate Event @1-32FD4740
    function Class_Terminate()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUnload", $this);
    }
//End Class_Terminate Event

//BindEvents Method @1-29263F00
    function BindEvents()
    {
        $this->Logout->CCSEvents["BeforeShow"] = "AdminMenu_Logout_BeforeShow";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInitialize", $this);
    }
//End BindEvents Method

//Operations Method @1-7E2A14CF
    function Operations()
    {
        global $Redirect;
        if(!$this->Visible)
            return "";
    }
//End Operations Method

//Initialize Method @1-98A255E4
    function Initialize($Path = "")
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInitialize", $this);
        if(!$this->Visible)
            return "";
        $this->Attributes = & $this->Parent->Attributes;

        // Create Components
        $this->TemplatePanel = new clsPanel("TemplatePanel", $this);
        global $CCProjectDesign;
        $this->TemplatePanel->MasterPageInitialize("BlockTemplate", "/Designs/" . $CCProjectDesign . "/", "BlockTemplate.html");
        $this->Title = new clsPanel("Title", $this);
        $this->Title->PlaceholderName = "Title";
        $this->Content = new clsPanel("Content", $this);
        $this->Content->PlaceholderName = "Content";
        $this->Link1 = new clsControl(ccsImageLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", ccsGet, NULL), $this);
        $this->Link1->HTML = true;
        $this->Link1->Page = $this->RelativePath . "AdminArticles.php";
        $this->Link7 = new clsControl(ccsLink, "Link7", "Link7", ccsText, "", CCGetRequestParam("Link7", ccsGet, NULL), $this);
        $this->Link7->Page = $this->RelativePath . "AdminArticles.php";
        $this->Link2 = new clsControl(ccsImageLink, "Link2", "Link2", ccsText, "", CCGetRequestParam("Link2", ccsGet, NULL), $this);
        $this->Link2->HTML = true;
        $this->Link2->Page = $this->RelativePath . "AdminEvents.php";
        $this->Link8 = new clsControl(ccsLink, "Link8", "Link8", ccsText, "", CCGetRequestParam("Link8", ccsGet, NULL), $this);
        $this->Link8->Page = $this->RelativePath . "AdminEvents.php";
        $this->Link3 = new clsControl(ccsImageLink, "Link3", "Link3", ccsText, "", CCGetRequestParam("Link3", ccsGet, NULL), $this);
        $this->Link3->HTML = true;
        $this->Link3->Page = $this->RelativePath . "AdminOfficers.php";
        $this->Link9 = new clsControl(ccsLink, "Link9", "Link9", ccsText, "", CCGetRequestParam("Link9", ccsGet, NULL), $this);
        $this->Link9->Page = $this->RelativePath . "AdminOfficers.php";
        $this->Link4 = new clsControl(ccsImageLink, "Link4", "Link4", ccsText, "", CCGetRequestParam("Link4", ccsGet, NULL), $this);
        $this->Link4->HTML = true;
        $this->Link4->Page = $this->RelativePath . "AdminLinks.php";
        $this->Link10 = new clsControl(ccsLink, "Link10", "Link10", ccsText, "", CCGetRequestParam("Link10", ccsGet, NULL), $this);
        $this->Link10->Page = $this->RelativePath . "AdminLinks.php";
        $this->Link5 = new clsControl(ccsImageLink, "Link5", "Link5", ccsText, "", CCGetRequestParam("Link5", ccsGet, NULL), $this);
        $this->Link5->HTML = true;
        $this->Link5->Page = $this->RelativePath . "AdminMembers.php";
        $this->Link11 = new clsControl(ccsLink, "Link11", "Link11", ccsText, "", CCGetRequestParam("Link11", ccsGet, NULL), $this);
        $this->Link11->Page = $this->RelativePath . "AdminMembers.php";
        $this->Link6 = new clsControl(ccsImageLink, "Link6", "Link6", ccsText, "", CCGetRequestParam("Link6", ccsGet, NULL), $this);
        $this->Link6->HTML = true;
        $this->Link6->Page = $this->RelativePath . "AdminNews.php";
        $this->Link12 = new clsControl(ccsLink, "Link12", "Link12", ccsText, "", CCGetRequestParam("Link12", ccsGet, NULL), $this);
        $this->Link12->Page = $this->RelativePath . "AdminNews.php";
        $this->Logout = new clsControl(ccsLink, "Logout", "Logout", ccsText, "", CCGetRequestParam("Logout", ccsGet, NULL), $this);
        $this->Logout->Page = $this->RelativePath . "AdminArticles.php";
        $this->TemplatePanel->AddComponent("Title", $this->Title);
        $this->TemplatePanel->AddComponent("Content", $this->Content);
        $this->Content->AddComponent("Link1", $this->Link1);
        $this->Content->AddComponent("Link7", $this->Link7);
        $this->Content->AddComponent("Link2", $this->Link2);
        $this->Content->AddComponent("Link8", $this->Link8);
        $this->Content->AddComponent("Link3", $this->Link3);
        $this->Content->AddComponent("Link9", $this->Link9);
        $this->Content->AddComponent("Link4", $this->Link4);
        $this->Content->AddComponent("Link10", $this->Link10);
        $this->Content->AddComponent("Link5", $this->Link5);
        $this->Content->AddComponent("Link11", $this->Link11);
        $this->Content->AddComponent("Link6", $this->Link6);
        $this->Content->AddComponent("Link12", $this->Link12);
        $this->Content->AddComponent("Logout", $this->Logout);
        $this->BindEvents();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnInitializeView", $this);
        $this->Logout->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
        $this->Logout->Parameters = CCAddParam($this->Logout->Parameters, "Logout", "True");
    }
//End Initialize Method

//Show Method @1-0F6DCF19
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        $block_path = $Tpl->block_path;
        if ($this->TemplateSource) {
            $Tpl->LoadTemplateFromStr($this->TemplateSource, $this->ComponentName, $this->TemplateEncoding);
        } else {
            $Tpl->LoadTemplate("/" . $this->TemplateFileName, $this->ComponentName, $this->TemplateEncoding, "remove");
        }
        $Tpl->block_path = $Tpl->block_path . "/" . $this->ComponentName;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        if(!$this->Visible) {
            $Tpl->block_path = $block_path;
            $Tpl->SetVar($this->ComponentName, "");
            return "";
        }
        $this->Attributes->Show();
        $this->TemplatePanel->Show();
        $Tpl->Parse();
        $Tpl->block_path = $block_path;
        $TplData = $Tpl->GetVar($this->ComponentName);
        $Tpl->SetVar($this->ComponentName, $TplData);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeOutput", $this);
    }
//End Show Method

} //End AdminMenu Class @1-FCB6E20C

//Include Event File @1-9DBADA64
include_once(RelativePath . "/AdminMenu_events.php");
//End Include Event File


?>
