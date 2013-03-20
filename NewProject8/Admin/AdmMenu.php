<?php
class clsAdmMenu { //AdmMenu class @1-20EBB604

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

//Class_Initialize Event @1-65692159
    function clsAdmMenu($RelativePath, $ComponentName, & $Parent)
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = $ComponentName;
        $this->RelativePath = $RelativePath;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->FileName = "AdmMenu.php";
        $this->Redirect = "";
        $this->TemplateFileName = "AdmMenu.html";
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

//BindEvents Method @1-0DAD0D56
    function BindEvents()
    {
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

//Initialize Method @1-ACD39295
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
        $this->AdmMenuTemplatePanel = new clsPanel("AdmMenuTemplatePanel", $this);
        global $CCProjectDesign;
        $this->AdmMenuTemplatePanel->MasterPageInitialize("BlockTemplate", "/Designs/" . $CCProjectDesign . "/", "BlockTemplate.html");
        $this->AdmMenuTitle = new clsPanel("AdmMenuTitle", $this);
        $this->AdmMenuTitle->PlaceholderName = "Title";
        $this->AdmMenuContent = new clsPanel("AdmMenuContent", $this);
        $this->AdmMenuContent->PlaceholderName = "Content";
        $this->AdmUsers = new clsControl(ccsLink, "AdmUsers", "AdmUsers", ccsText, "", CCGetRequestParam("AdmUsers", ccsGet, NULL), $this);
        $this->AdmUsers->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
        $this->AdmUsers->Page = $this->RelativePath . "AdmUsers.php";
        $this->AdmOrderStatuses = new clsControl(ccsLink, "AdmOrderStatuses", "AdmOrderStatuses", ccsText, "", CCGetRequestParam("AdmOrderStatuses", ccsGet, NULL), $this);
        $this->AdmOrderStatuses->Page = $this->RelativePath . "AdmOrderStatuses.php";
        $this->AdmProducts = new clsControl(ccsLink, "AdmProducts", "AdmProducts", ccsText, "", CCGetRequestParam("AdmProducts", ccsGet, NULL), $this);
        $this->AdmProducts->Page = $this->RelativePath . "AdmProducts.php";
        $this->AdmOrders = new clsControl(ccsLink, "AdmOrders", "AdmOrders", ccsText, "", CCGetRequestParam("AdmOrders", ccsGet, NULL), $this);
        $this->AdmOrders->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
        $this->AdmOrders->Page = $this->RelativePath . "AdmOrders.php";
        $this->AdmEditProducts = new clsControl(ccsLink, "AdmEditProducts", "AdmEditProducts", ccsText, "", CCGetRequestParam("AdmEditProducts", ccsGet, NULL), $this);
        $this->AdmEditProducts->Page = $this->RelativePath . "AdmEditProducts.php";
        $this->AdmEditCategories = new clsControl(ccsLink, "AdmEditCategories", "AdmEditCategories", ccsText, "", CCGetRequestParam("AdmEditCategories", ccsGet, NULL), $this);
        $this->AdmEditCategories->Page = $this->RelativePath . "AdmEditCategories.php";
        $this->AdmCategories = new clsControl(ccsLink, "AdmCategories", "AdmCategories", ccsText, "", CCGetRequestParam("AdmCategories", ccsGet, NULL), $this);
        $this->AdmCategories->Page = $this->RelativePath . "AdmCategories.php";
        $this->AdmMenuTemplatePanel->AddComponent("AdmMenuTitle", $this->AdmMenuTitle);
        $this->AdmMenuTemplatePanel->AddComponent("AdmMenuContent", $this->AdmMenuContent);
        $this->AdmMenuContent->AddComponent("AdmUsers", $this->AdmUsers);
        $this->AdmMenuContent->AddComponent("AdmOrderStatuses", $this->AdmOrderStatuses);
        $this->AdmMenuContent->AddComponent("AdmProducts", $this->AdmProducts);
        $this->AdmMenuContent->AddComponent("AdmOrders", $this->AdmOrders);
        $this->AdmMenuContent->AddComponent("AdmEditProducts", $this->AdmEditProducts);
        $this->AdmMenuContent->AddComponent("AdmEditCategories", $this->AdmEditCategories);
        $this->AdmMenuContent->AddComponent("AdmCategories", $this->AdmCategories);
        $this->BindEvents();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnInitializeView", $this);
    }
//End Initialize Method

//Show Method @1-F1EDD542
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        $block_path = $Tpl->block_path;
        if ($this->TemplateSource) {
            $Tpl->LoadTemplateFromStr($this->TemplateSource, $this->ComponentName, $this->TemplateEncoding);
        } else {
            $Tpl->LoadTemplate("/Admin/" . $this->TemplateFileName, $this->ComponentName, $this->TemplateEncoding, "remove");
        }
        $Tpl->block_path = $Tpl->block_path . "/" . $this->ComponentName;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        if(!$this->Visible) {
            $Tpl->block_path = $block_path;
            $Tpl->SetVar($this->ComponentName, "");
            return "";
        }
        $this->Attributes->Show();
        $this->AdmMenuTemplatePanel->Show();
        $Tpl->Parse();
        $Tpl->block_path = $block_path;
        $TplData = $Tpl->GetVar($this->ComponentName);
        $Tpl->SetVar($this->ComponentName, $TplData);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeOutput", $this);
    }
//End Show Method

} //End AdmMenu Class @1-FCB6E20C


?>
