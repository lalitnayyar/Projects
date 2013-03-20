<?php
class clsHeader { //Header class @1-CC982CB1

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

//Class_Initialize Event @1-5C4FA0A2
    function clsHeader($RelativePath, $ComponentName, & $Parent)
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = $ComponentName;
        $this->RelativePath = $RelativePath;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->FileName = "Header.php";
        $this->Redirect = "";
        $this->TemplateFileName = "Header.html";
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

//BindEvents Method @1-BB283BF5
    function BindEvents()
    {
        $this->Logout->CCSEvents["BeforeShow"] = "Header_Logout_BeforeShow";
        $this->CCSEvents["AfterInitialize"] = "Header_AfterInitialize";
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

//Initialize Method @1-64BA27D9
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
        $this->home = new clsControl(ccsLink, "home", "home", ccsText, "", CCGetRequestParam("home", ccsGet, NULL), $this);
        $this->home->Page = $this->RelativePath . "Default.php";
        $this->search = new clsControl(ccsLink, "search", "search", ccsText, "", CCGetRequestParam("search", ccsGet, NULL), $this);
        $this->search->Page = $this->RelativePath . "AdvSearch.php";
        $this->shopping_cart = new clsControl(ccsLink, "shopping_cart", "shopping_cart", ccsText, "", CCGetRequestParam("shopping_cart", ccsGet, NULL), $this);
        $this->shopping_cart->Page = $this->RelativePath . "ShoppingCart.php";
        $this->admin = new clsControl(ccsLink, "admin", "admin", ccsText, "", CCGetRequestParam("admin", ccsGet, NULL), $this);
        $this->admin->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
        $this->admin->Page = $this->RelativePath . "Admin/AdmProducts.php";
        $this->Logout = new clsControl(ccsLink, "Logout", "Logout", ccsText, "", CCGetRequestParam("Logout", ccsGet, NULL), $this);
        $this->Logout->Page = $this->RelativePath . "Login.php";
        $this->BindEvents();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnInitializeView", $this);
        $this->Logout->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
        $this->Logout->Parameters = CCAddParam($this->Logout->Parameters, "Logout", "True");
    }
//End Initialize Method

//Show Method @1-DF4DCAC6
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
        $this->home->Show();
        $this->search->Show();
        $this->shopping_cart->Show();
        $this->admin->Show();
        $this->Logout->Show();
        $Tpl->Parse();
        $Tpl->block_path = $block_path;
        $TplData = $Tpl->GetVar($this->ComponentName);
        $Tpl->SetVar($this->ComponentName, $TplData);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeOutput", $this);
    }
//End Show Method

} //End Header Class @1-FCB6E20C

//Include Event File @1-6613ADCA
include_once(RelativePath . "/Header_events.php");
//End Include Event File


?>
