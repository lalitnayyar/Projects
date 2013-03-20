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

//Initialize Method @1-4E5F986C
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
        $this->Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", ccsGet, NULL), $this);
        $this->Link1->HTML = true;
        $this->Link1->Page = $this->RelativePath . "Default.php";
        $this->Link3 = new clsControl(ccsLink, "Link3", "Link3", ccsText, "", CCGetRequestParam("Link3", ccsGet, NULL), $this);
        $this->Link3->HTML = true;
        $this->Link3->Page = $this->RelativePath . "Events.php";
        $this->Link4 = new clsControl(ccsLink, "Link4", "Link4", ccsText, "", CCGetRequestParam("Link4", ccsGet, NULL), $this);
        $this->Link4->HTML = true;
        $this->Link4->Page = $this->RelativePath . "Links.php";
        $this->Link5 = new clsControl(ccsLink, "Link5", "Link5", ccsText, "", CCGetRequestParam("Link5", ccsGet, NULL), $this);
        $this->Link5->HTML = true;
        $this->Link5->Page = $this->RelativePath . "Officers.php";
        $this->Link6 = new clsControl(ccsLink, "Link6", "Link6", ccsText, "", CCGetRequestParam("Link6", ccsGet, NULL), $this);
        $this->Link6->HTML = true;
        $this->Link6->Page = $this->RelativePath . "Members.php";
        $this->SignIn = new clsControl(ccsLink, "SignIn", "SignIn", ccsText, "", CCGetRequestParam("SignIn", ccsGet, NULL), $this);
        $this->SignIn->HTML = true;
        $this->SignIn->Page = $this->RelativePath . "Login.php";
        $this->Registration = new clsControl(ccsLink, "Registration", "Registration", ccsText, "", CCGetRequestParam("Registration", ccsGet, NULL), $this);
        $this->Registration->HTML = true;
        $this->Registration->Page = $this->RelativePath . "Registration.php";
        $this->Account = new clsControl(ccsLink, "Account", "Account", ccsText, "", CCGetRequestParam("Account", ccsGet, NULL), $this);
        $this->Account->HTML = true;
        $this->Account->Page = $this->RelativePath . "Account.php";
        $this->Admin = new clsControl(ccsLink, "Admin", "Admin", ccsText, "", CCGetRequestParam("Admin", ccsGet, NULL), $this);
        $this->Admin->HTML = true;
        $this->Admin->Page = $this->RelativePath . "AdminArticles.php";
        $this->BindEvents();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnInitializeView", $this);
    }
//End Initialize Method

//Show Method @1-9988F34C
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
        $this->Link1->Show();
        $this->Link3->Show();
        $this->Link4->Show();
        $this->Link5->Show();
        $this->Link6->Show();
        $this->SignIn->Show();
        $this->Registration->Show();
        $this->Account->Show();
        $this->Admin->Show();
        $Tpl->Parse();
        $Tpl->block_path = $block_path;
        $TplData = $Tpl->GetVar($this->ComponentName);
        $Tpl->SetVar($this->ComponentName, $TplData);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeOutput", $this);
    }
//End Show Method

} //End Header Class @1-FCB6E20C


?>
