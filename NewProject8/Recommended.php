<?php
class clsGridRecommendedrecommend { //recommend class @5-9647CBB0

//Variables @5-6E51DF5A

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

//Class_Initialize Event @5-46A46EBA
    function clsGridRecommendedrecommend($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "recommend";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid recommend";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsRecommendedrecommendDataSource($this);
        $this->ds = & $this->DataSource;
        $this->PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(!is_numeric($this->PageSize) || !strlen($this->PageSize))
            $this->PageSize = 3;
        else
            $this->PageSize = intval($this->PageSize);
        if ($this->PageSize > 100)
            $this->PageSize = 100;
        if($this->PageSize == 0)
            $this->Errors->addError("<p>Form: Grid " . $this->ComponentName . "<BR>Error: (CCS06) Invalid page size.</p>");
        $this->PageNumber = intval(CCGetParam($this->ComponentName . "Page", 1));
        if ($this->PageNumber <= 0) $this->PageNumber = 1;

        $this->article_title = new clsControl(ccsLink, "article_title", "article_title", ccsText, "", CCGetRequestParam("article_title", ccsGet, NULL), $this);
        $this->article_title->HTML = true;
        $this->article_title->Page = $this->RelativePath . "ProductDetail.php";
        $this->image_url = new clsControl(ccsImageLink, "image_url", "image_url", ccsText, "", CCGetRequestParam("image_url", ccsGet, NULL), $this);
        $this->image_url->HTML = true;
        $this->image_url->Page = $this->RelativePath . "ProductDetail.php";
        $this->Price = new clsControl(ccsLabel, "Price", "Price", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), CCGetRequestParam("Price", ccsGet, NULL), $this);
    }
//End Class_Initialize Event

//Initialize Method @5-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @5-41663D1C
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
            $this->ControlsVisible["article_title"] = $this->article_title->Visible;
            $this->ControlsVisible["image_url"] = $this->image_url->Visible;
            $this->ControlsVisible["Price"] = $this->Price->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->article_title->SetValue($this->DataSource->article_title->GetValue());
                $this->article_title->Parameters = "";
                $this->article_title->Parameters = CCAddParam($this->article_title->Parameters, "product_id", $this->DataSource->f("product_id"));
                $this->image_url->SetValue($this->DataSource->image_url->GetValue());
                $this->image_url->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->image_url->Parameters = CCAddParam($this->image_url->Parameters, "product_id", $this->DataSource->f("product_id"));
                $this->Price->SetValue($this->DataSource->Price->GetValue());
                $this->Attributes->SetValue("rowNumber", $this->RowNumber);
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->article_title->Show();
                $this->image_url->Show();
                $this->Price->Show();
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

//GetErrors Method @5-406A50F6
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->article_title->Errors->ToString());
        $errors = ComposeStrings($errors, $this->image_url->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Price->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End recommend Class @5-FCB6E20C

class clsRecommendedrecommendDataSource extends clsDBInternetDB {  //recommendDataSource Class @5-F8AD6435

//DataSource Variables @5-419E1CE1
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $article_title;
    public $image_url;
    public $Price;
//End DataSource Variables

//DataSourceClass_Initialize Event @5-C6BADBCC
    function clsRecommendedrecommendDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid recommend";
        $this->Initialize();
        $this->article_title = new clsField("article_title", ccsText, "");
        
        $this->image_url = new clsField("image_url", ccsText, "");
        
        $this->Price = new clsField("Price", ccsFloat, "");
        

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @5-9E1383D1
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            "");
    }
//End SetOrder Method

//Prepare Method @5-96959D15
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->Criterion[1] = "( is_recommended=1 )";
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @5-3FA74D64
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

//SetValues Method @5-BC559771
    function SetValues()
    {
        $this->article_title->SetDBValue($this->f("product_name"));
        $this->image_url->SetDBValue($this->f("image_url"));
        $this->Price->SetDBValue(trim($this->f("price")));
    }
//End SetValues Method

} //End recommendDataSource Class @5-FCB6E20C

class clsRecommended { //Recommended class @1-9412CE95

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

//Class_Initialize Event @1-8022E661
    function clsRecommended($RelativePath, $ComponentName, & $Parent)
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = $ComponentName;
        $this->RelativePath = $RelativePath;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->FileName = "Recommended.php";
        $this->Redirect = "";
        $this->TemplateFileName = "Recommended.html";
        $this->BlockToParse = "main";
        $this->TemplateEncoding = "CP1252";
        $this->ContentType = "text/html";
    }
//End Class_Initialize Event

//Class_Terminate Event @1-38141FE3
    function Class_Terminate()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUnload", $this);
        unset($this->recommend);
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

//Initialize Method @1-05190FD3
    function Initialize($Path = "")
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInitialize", $this);
        if(!$this->Visible)
            return "";
        $this->Attributes = & $this->Parent->Attributes;
        $this->DBInternetDB = new clsDBInternetDB();
        $this->Connections["InternetDB"] = & $this->DBInternetDB;

        // Create Components
        $this->recommendTemplatePanel = new clsPanel("recommendTemplatePanel", $this);
        global $CCProjectDesign;
        $this->recommendTemplatePanel->MasterPageInitialize("BlockTemplate", "/Designs/" . $CCProjectDesign . "/", "BlockTemplate.html");
        $this->recommendTitle = new clsPanel("recommendTitle", $this);
        $this->recommendTitle->PlaceholderName = "Title";
        $this->recommendContent = new clsPanel("recommendContent", $this);
        $this->recommendContent->PlaceholderName = "Content";
        $this->recommend = new clsGridRecommendedrecommend($this->RelativePath, $this);
        $this->recommendTemplatePanel->AddComponent("recommendTitle", $this->recommendTitle);
        $this->recommendTemplatePanel->AddComponent("recommendContent", $this->recommendContent);
        $this->recommendContent->AddComponent("recommend", $this->recommend);
        $this->recommend->Initialize();
        $this->BindEvents();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnInitializeView", $this);
    }
//End Initialize Method

//Show Method @1-02342BF0
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
        $this->recommendTemplatePanel->Show();
        $Tpl->Parse();
        $Tpl->block_path = $block_path;
        $TplData = $Tpl->GetVar($this->ComponentName);
        $Tpl->SetVar($this->ComponentName, $TplData);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeOutput", $this);
    }
//End Show Method

} //End Recommended Class @1-FCB6E20C


?>
