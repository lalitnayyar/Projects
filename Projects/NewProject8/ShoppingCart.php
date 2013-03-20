<?php
//Include Common Files @1-60247527
define("RelativePath", ".");
define("PathToCurrentPage", "/");
define("FileName", "ShoppingCart.php");
include_once(RelativePath . "/Common.php");
include_once(RelativePath . "/Template.php");
include_once(RelativePath . "/Sorter.php");
include_once(RelativePath . "/Navigator.php");
//End Include Common Files

//Master Page implementation @1-61A23584
include_once(RelativePath . "/Designs/BookStore/MasterPage.php");
//End Master Page implementation

class clsEditableGridshop_cart { //shop_cart Class @62-4A23BED8

//Variables @62-0AADA924

    // Public variables
    public $ComponentType = "EditableGrid";
    public $ComponentName;
    public $HTMLFormAction;
    public $PressedButton;
    public $Errors;
    public $ErrorBlock;
    public $FormSubmitted;
    public $FormParameters;
    public $FormState;
    public $FormEnctype;
    public $CachedColumns;
    public $TotalRows;
    public $UpdatedRows;
    public $EmptyRows;
    public $Visible;
    public $RowsErrors;
    public $ds;
    public $DataSource;
    public $PageSize;
    public $IsEmpty;
    public $SorterName = "";
    public $SorterDirection = "";
    public $PageNumber;
    public $ControlsVisible = array();

    public $CCSEvents = "";
    public $CCSEventResult;

    public $RelativePath = "";

    public $InsertAllowed = false;
    public $UpdateAllowed = false;
    public $DeleteAllowed = false;
    public $ReadAllowed   = false;
    public $EditMode;
    public $ValidatingControls;
    public $Controls;
    public $ControlsErrors;
    public $RowNumber;
    public $Attributes;

    // Class variables
//End Variables

//Class_Initialize Event @62-9D79337A
    function clsEditableGridshop_cart($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "EditableGrid shop_cart/Error";
        $this->ControlsErrors = array();
        $this->ComponentName = "shop_cart";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->CachedColumns["product_id"][0] = "product_id";
        $this->CachedColumns["shopping_cart_item_id"][0] = "shopping_cart_item_id";
        $this->DataSource = new clsshop_cartDataSource($this);
        $this->ds = & $this->DataSource;
        $this->PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(!is_numeric($this->PageSize) || !strlen($this->PageSize))
            $this->PageSize = 20;
        else
            $this->PageSize = intval($this->PageSize);
        if ($this->PageSize > 100)
            $this->PageSize = 100;
        if($this->PageSize == 0)
            $this->Errors->addError("<p>Form: EditableGrid " . $this->ComponentName . "<BR>Error: (CCS06) Invalid page size.</p>");
        $this->PageNumber = intval(CCGetParam($this->ComponentName . "Page", 1));
        if ($this->PageNumber <= 0) $this->PageNumber = 1;

        $this->EmptyRows = 3;
        $this->UpdateAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if(!$this->Visible) return;

        $CCSForm = CCGetFromGet("ccsForm", "");
        $this->FormEnctype = "application/x-www-form-urlencoded";
        $this->FormSubmitted = ($CCSForm == $this->ComponentName);
        if($this->FormSubmitted) {
            $this->FormState = CCGetFromPost("FormState", "");
            $this->SetFormState($this->FormState);
        } else {
            $this->FormState = "";
        }
        $Method = $this->FormSubmitted ? ccsPost : ccsGet;

        $this->product_id = new clsControl(ccsLabel, "product_id", "Product Id", ccsText, "", NULL, $this);
        $this->Price = new clsControl(ccsLabel, "Price", "Price", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), NULL, $this);
        $this->quantity = new clsControl(ccsTextBox, "quantity", "Quantity", ccsInteger, "", NULL, $this);
        $this->quantity->Required = true;
        $this->SubTotal = new clsControl(ccsLabel, "SubTotal", "SubTotal", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), NULL, $this);
        $this->Delete1_Panel = new clsPanel("Delete1_Panel", $this);
        $this->Delete1 = new clsControl(ccsCheckBox, "Delete1", "Delete1", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), NULL, $this);
        $this->Delete1->CheckedValue = true;
        $this->Delete1->UncheckedValue = false;
        $this->Submit = new clsButton("Submit", $Method, $this);
        $this->Delete1_Panel->AddComponent("Delete1", $this->Delete1);
    }
//End Class_Initialize Event

//Initialize Method @62-E2230AAB
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);

        $this->DataSource->Parameters["cookshopping_cart_id"] = CCGetCookie("shopping_cart_id", NULL);
    }
//End Initialize Method

//GetFormParameters Method @62-A92FA3FD
    function GetFormParameters()
    {
        for($RowNumber = 1; $RowNumber <= $this->TotalRows; $RowNumber++)
        {
            $this->FormParameters["quantity"][$RowNumber] = CCGetFromPost("quantity_" . $RowNumber, NULL);
            $this->FormParameters["Delete1"][$RowNumber] = CCGetFromPost("Delete1_" . $RowNumber, NULL);
        }
    }
//End GetFormParameters Method

//Validate Method @62-97258D17
    function Validate()
    {
        $Validation = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);

        for($this->RowNumber = 1; $this->RowNumber <= $this->TotalRows; $this->RowNumber++)
        {
            $this->DataSource->CachedColumns["product_id"] = $this->CachedColumns["product_id"][$this->RowNumber];
            $this->DataSource->CachedColumns["shopping_cart_item_id"] = $this->CachedColumns["shopping_cart_item_id"][$this->RowNumber];
            $this->DataSource->CurrentRow = $this->RowNumber;
            $this->quantity->SetText($this->FormParameters["quantity"][$this->RowNumber], $this->RowNumber);
            $this->Delete1->SetText($this->FormParameters["Delete1"][$this->RowNumber], $this->RowNumber);
            if ($this->UpdatedRows >= $this->RowNumber) {
                if(!$this->Delete1->Value)
                    $Validation = ($this->ValidateRow() && $Validation);
            }
            else if($this->CheckInsert())
            {
                $Validation = ($this->ValidateRow() && $Validation);
            }
        }
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//ValidateRow Method @62-7F7DCA8B
    function ValidateRow()
    {
        global $CCSLocales;
        $this->quantity->Validate();
        $this->Delete1->Validate();
        $this->RowErrors = new clsErrors();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidateRow", $this);
        $errors = "";
        $errors = ComposeStrings($errors, $this->quantity->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Delete1->Errors->ToString());
        $this->quantity->Errors->Clear();
        $this->Delete1->Errors->Clear();
        $errors = ComposeStrings($errors, $this->RowErrors->ToString());
        $this->RowsErrors[$this->RowNumber] = $errors;
        return $errors != "" ? 0 : 1;
    }
//End ValidateRow Method

//CheckInsert Method @62-38CFFC06
    function CheckInsert()
    {
        $filed = false;
        $filed = ($filed || (is_array($this->FormParameters["quantity"][$this->RowNumber]) && count($this->FormParameters["quantity"][$this->RowNumber])) || strlen($this->FormParameters["quantity"][$this->RowNumber]));
        return $filed;
    }
//End CheckInsert Method

//CheckErrors Method @62-F5A3B433
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @62-BFC407F2
    function Operation()
    {
        if(!$this->Visible)
            return;

        global $Redirect;
        global $FileName;

        $this->DataSource->Prepare();
        if(!$this->FormSubmitted)
            return;

        $this->GetFormParameters();
        $this->PressedButton = "Submit";
        if($this->Submit->Pressed) {
            $this->PressedButton = "Submit";
        }

        $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->PressedButton == "Submit") {
            if(!CCGetEvent($this->Submit->CCSEvents, "OnClick", $this->Submit) || !$this->UpdateGrid()) {
                $Redirect = "";
            }
        } else {
            $Redirect = "";
        }
        if ($Redirect)
            $this->DataSource->close();
    }
//End Operation Method

//UpdateGrid Method @62-318E8348
    function UpdateGrid()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSubmit", $this);
        if(!$this->Validate()) return;
        $Validation = true;
        for($this->RowNumber = 1; $this->RowNumber <= $this->TotalRows; $this->RowNumber++)
        {
            $this->DataSource->CachedColumns["product_id"] = $this->CachedColumns["product_id"][$this->RowNumber];
            $this->DataSource->CachedColumns["shopping_cart_item_id"] = $this->CachedColumns["shopping_cart_item_id"][$this->RowNumber];
            $this->DataSource->CurrentRow = $this->RowNumber;
            $this->quantity->SetText($this->FormParameters["quantity"][$this->RowNumber], $this->RowNumber);
            $this->Delete1->SetText($this->FormParameters["Delete1"][$this->RowNumber], $this->RowNumber);
            if ($this->UpdatedRows >= $this->RowNumber) {
                if($this->Delete1->Value) {
                    if($this->DeleteAllowed) { $Validation = ($this->DeleteRow() && $Validation); }
                } else if($this->UpdateAllowed) {
                    $Validation = ($this->UpdateRow() && $Validation);
                }
            }
            else if($this->CheckInsert() && $this->InsertAllowed)
            {
                $Validation = ($Validation && $this->InsertRow());
            }
        }
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterSubmit", $this);
        if ($this->Errors->Count() == 0 && $Validation){
            $this->DataSource->close();
            return true;
        }
        return false;
    }
//End UpdateGrid Method

//UpdateRow Method @62-322E61B1
    function UpdateRow()
    {
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->quantity->SetValue($this->quantity->GetValue(true));
        $this->DataSource->Update();
        $errors = "";
        if($this->DataSource->Errors->Count() > 0) {
            $errors = $this->DataSource->Errors->ToString();
            $this->RowsErrors[$this->RowNumber] = $errors;
            $this->DataSource->Errors->Clear();
        }
        return (($this->Errors->Count() == 0) && !strlen($errors));
    }
//End UpdateRow Method

//DeleteRow Method @62-A4A656F6
    function DeleteRow()
    {
        if(!$this->DeleteAllowed) return false;
        $this->DataSource->Delete();
        $errors = "";
        if($this->DataSource->Errors->Count() > 0) {
            $errors = $this->DataSource->Errors->ToString();
            $this->RowsErrors[$this->RowNumber] = $errors;
            $this->DataSource->Errors->Clear();
        }
        return (($this->Errors->Count() == 0) && !strlen($errors));
    }
//End DeleteRow Method

//FormScript Method @62-B33B0CC7
    function FormScript($TotalRows)
    {
        $script = "";
        $script .= "\n<script language=\"JavaScript\" type=\"text/javascript\">\n<!--\n";
        $script .= "var shop_cartElements;\n";
        $script .= "var shop_cartEmptyRows = 3;\n";
        $script .= "var " . $this->ComponentName . "quantityID = 0;\n";
        $script .= "var " . $this->ComponentName . "DeleteControl = 1;\n";
        $script .= "\nfunction initshop_cartElements() {\n";
        $script .= "\tvar ED = document.forms[\"shop_cart\"];\n";
        $script .= "\tshop_cartElements = new Array (\n";
        for($i = 1; $i <= $TotalRows; $i++) {
            $script .= "\t\tnew Array(" . "ED.quantity_" . $i . ", " . "ED.Delete1_" . $i . ")";
            if($i != $TotalRows) $script .= ",\n";
        }
        $script .= ");\n";
        $script .= "}\n";
        $script .= "\n//-->\n</script>";
        return $script;
    }
//End FormScript Method

//SetFormState Method @62-87D0FF1B
    function SetFormState($FormState)
    {
        if(strlen($FormState)) {
            $FormState = str_replace("\\\\", "\\" . ord("\\"), $FormState);
            $FormState = str_replace("\\;", "\\" . ord(";"), $FormState);
            $pieces = explode(";", $FormState);
            $this->UpdatedRows = $pieces[0];
            $this->EmptyRows   = $pieces[1];
            $this->TotalRows = $this->UpdatedRows + $this->EmptyRows;
            $RowNumber = 0;
            for($i = 2; $i < sizeof($pieces); $i = $i + 2)  {
                $piece = $pieces[$i + 0];
                $piece = str_replace("\\" . ord("\\"), "\\", $piece);
                $piece = str_replace("\\" . ord(";"), ";", $piece);
                $this->CachedColumns["product_id"][$RowNumber] = $piece;
                $piece = $pieces[$i + 1];
                $piece = str_replace("\\" . ord("\\"), "\\", $piece);
                $piece = str_replace("\\" . ord(";"), ";", $piece);
                $this->CachedColumns["shopping_cart_item_id"][$RowNumber] = $piece;
                $RowNumber++;
            }

            if(!$RowNumber) { $RowNumber = 1; }
            for($i = 1; $i <= $this->EmptyRows; $i++) {
                $this->CachedColumns["product_id"][$RowNumber] = "";
                $this->CachedColumns["shopping_cart_item_id"][$RowNumber] = "";
                $RowNumber++;
            }
        }
    }
//End SetFormState Method

//GetFormState Method @62-06A856A3
    function GetFormState($NonEmptyRows)
    {
        if(!$this->FormSubmitted) {
            $this->FormState  = $NonEmptyRows . ";";
            $this->FormState .= $this->InsertAllowed ? $this->EmptyRows : "0";
            if($NonEmptyRows) {
                for($i = 0; $i <= $NonEmptyRows; $i++) {
                    $this->FormState .= ";" . str_replace(";", "\\;", str_replace("\\", "\\\\", $this->CachedColumns["product_id"][$i]));
                    $this->FormState .= ";" . str_replace(";", "\\;", str_replace("\\", "\\\\", $this->CachedColumns["shopping_cart_item_id"][$i]));
                }
            }
        }
        return $this->FormState;
    }
//End GetFormState Method

//Show Method @62-11182175
    function Show()
    {
        $Tpl = & CCGetTemplate($this);
        global $FileName;
        global $CCSLocales;
        global $CCSUseAmp;
        $Error = "";

        if(!$this->Visible) { return; }

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->open();
        $is_next_record = ($this->ReadAllowed && $this->DataSource->next_record());
        $this->IsEmpty = ! $is_next_record;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        if(!$this->Visible) { return; }

        $this->Attributes->Show();
        $this->Submit->Visible = $this->Submit->Visible && ($this->InsertAllowed || $this->UpdateAllowed || $this->DeleteAllowed);
        $ParentPath = $Tpl->block_path;
        $EditableGridPath = $ParentPath . "/EditableGrid " . $this->ComponentName;
        $EditableGridRowPath = $ParentPath . "/EditableGrid " . $this->ComponentName . "/Row";
        $Tpl->block_path = $EditableGridRowPath;
        $this->RowNumber = 0;
        $NonEmptyRows = 0;
        $EmptyRowsLeft = $this->EmptyRows;
        $this->ControlsVisible["product_id"] = $this->product_id->Visible;
        $this->ControlsVisible["Price"] = $this->Price->Visible;
        $this->ControlsVisible["quantity"] = $this->quantity->Visible;
        $this->ControlsVisible["SubTotal"] = $this->SubTotal->Visible;
        $this->ControlsVisible["Delete1_Panel"] = $this->Delete1_Panel->Visible;
        $this->ControlsVisible["Delete1"] = $this->Delete1->Visible;
        if ($is_next_record || ($EmptyRowsLeft && $this->InsertAllowed)) {
            do {
                $this->RowNumber++;
                if($is_next_record) {
                    $NonEmptyRows++;
                    $this->DataSource->SetValues();
                }
                if (!($is_next_record) || !($this->DeleteAllowed)) {
                    $this->Delete1->Visible = false;
                    $this->Delete1_Panel->Visible = false;
                }
                if (!($this->FormSubmitted) && $is_next_record) {
                    $this->CachedColumns["product_id"][$this->RowNumber] = $this->DataSource->CachedColumns["product_id"];
                    $this->CachedColumns["shopping_cart_item_id"][$this->RowNumber] = $this->DataSource->CachedColumns["shopping_cart_item_id"];
                    $this->SubTotal->SetText("");
                    $this->Delete1->SetValue(false);
                    $this->product_id->SetValue($this->DataSource->product_id->GetValue());
                    $this->Price->SetValue($this->DataSource->Price->GetValue());
                    $this->quantity->SetValue($this->DataSource->quantity->GetValue());
                } elseif ($this->FormSubmitted && $is_next_record) {
                    $this->product_id->SetText("");
                    $this->Price->SetText("");
                    $this->SubTotal->SetText("");
                    $this->product_id->SetValue($this->DataSource->product_id->GetValue());
                    $this->Price->SetValue($this->DataSource->Price->GetValue());
                    $this->quantity->SetText($this->FormParameters["quantity"][$this->RowNumber], $this->RowNumber);
                    $this->Delete1->SetText($this->FormParameters["Delete1"][$this->RowNumber], $this->RowNumber);
                } elseif (!$this->FormSubmitted) {
                    $this->CachedColumns["product_id"][$this->RowNumber] = "";
                    $this->CachedColumns["shopping_cart_item_id"][$this->RowNumber] = "";
                    $this->product_id->SetText("");
                    $this->Price->SetText("");
                    $this->quantity->SetText("");
                    $this->SubTotal->SetText("");
                } else {
                    $this->product_id->SetText("");
                    $this->Price->SetText("");
                    $this->SubTotal->SetText("");
                    $this->quantity->SetText($this->FormParameters["quantity"][$this->RowNumber], $this->RowNumber);
                    $this->Delete1->SetText($this->FormParameters["Delete1"][$this->RowNumber], $this->RowNumber);
                }
                $this->Attributes->SetValue("rowNumber", $this->RowNumber);
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->product_id->Show($this->RowNumber);
                $this->Price->Show($this->RowNumber);
                $this->quantity->Show($this->RowNumber);
                $this->SubTotal->Show($this->RowNumber);
                $this->Delete1_Panel->Show($this->RowNumber);
                if (isset($this->RowsErrors[$this->RowNumber]) && ($this->RowsErrors[$this->RowNumber] != "")) {
                    $Tpl->setblockvar("RowError", "");
                    $Tpl->setvar("Error", $this->RowsErrors[$this->RowNumber]);
                    $this->Attributes->Show();
                    $Tpl->parse("RowError", false);
                } else {
                    $Tpl->setblockvar("RowError", "");
                }
                $Tpl->setvar("FormScript", $this->FormScript($this->RowNumber));
                $Tpl->parse();
                if ($is_next_record) {
                    if ($this->FormSubmitted) {
                        $is_next_record = $this->RowNumber < $this->UpdatedRows;
                        if (($this->DataSource->CachedColumns["product_id"] == $this->CachedColumns["product_id"][$this->RowNumber]) && ($this->DataSource->CachedColumns["shopping_cart_item_id"] == $this->CachedColumns["shopping_cart_item_id"][$this->RowNumber])) {
                            if ($this->ReadAllowed) $this->DataSource->next_record();
                        }
                    }else{
                        $is_next_record = ($this->RowNumber < $this->PageSize) &&  $this->ReadAllowed && $this->DataSource->next_record();
                    }
                } else { 
                    $EmptyRowsLeft--;
                }
            } while($is_next_record || ($EmptyRowsLeft && $this->InsertAllowed));
        } else {
            $Tpl->block_path = $EditableGridPath;
            $this->Attributes->Show();
            $Tpl->parse("NoRecords", false);
        }

        $Tpl->block_path = $EditableGridPath;
        $this->Submit->Show();

        if($this->CheckErrors()) {
            $Error = ComposeStrings($Error, $this->Errors->ToString());
            $Error = ComposeStrings($Error, $this->DataSource->Errors->ToString());
            $Tpl->SetVar("Error", $Error);
            $Tpl->Parse("Error", false);
        }
        $CCSForm = $this->ComponentName;
        $this->HTMLFormAction = $FileName . "?" . CCAddParam(CCGetQueryString("QueryString", ""), "ccsForm", $CCSForm);
        $Tpl->SetVar("Action", !$CCSUseAmp ? $this->HTMLFormAction : str_replace("&", "&amp;", $this->HTMLFormAction));
        $Tpl->SetVar("HTMLFormName", $this->ComponentName);
        $Tpl->SetVar("HTMLFormEnctype", $this->FormEnctype);
        if (!$CCSUseAmp) {
            $Tpl->SetVar("HTMLFormProperties", "method=\"POST\" action=\"" . $this->HTMLFormAction . "\" name=\"" . $this->ComponentName . "\"");
        } else {
            $Tpl->SetVar("HTMLFormProperties", "method=\"post\" action=\"" . str_replace("&", "&amp;", $this->HTMLFormAction) . "\" id=\"" . $this->ComponentName . "\"");
        }
        $Tpl->SetVar("FormState", CCToHTML($this->GetFormState($NonEmptyRows)));
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End shop_cart Class @62-FCB6E20C

class clsshop_cartDataSource extends clsDBInternetDB {  //shop_cartDataSource Class @62-11467C2F

//DataSource Variables @62-7ADE0D08
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $UpdateParameters;
    public $DeleteParameters;
    public $CountSQL;
    public $wp;
    public $AllParametersSet;

    public $CachedColumns;
    public $CurrentRow;
    public $UpdateFields = array();

    // Datasource fields
    public $product_id;
    public $Price;
    public $quantity;
    public $SubTotal;
    public $Delete1;
//End DataSource Variables

//DataSourceClass_Initialize Event @62-9C5A4B21
    function clsshop_cartDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "EditableGrid shop_cart/Error";
        $this->Initialize();
        $this->product_id = new clsField("product_id", ccsText, "");
        
        $this->Price = new clsField("Price", ccsFloat, "");
        
        $this->quantity = new clsField("quantity", ccsInteger, "");
        
        $this->SubTotal = new clsField("SubTotal", ccsFloat, "");
        
        $this->Delete1 = new clsField("Delete1", ccsBoolean, $this->BooleanFormat);
        

        $this->UpdateFields["quantity"] = array("Name" => "quantity", "Value" => "", "DataType" => ccsInteger);
    }
//End DataSourceClass_Initialize Event

//SetOrder Method @62-9E1383D1
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            "");
    }
//End SetOrder Method

//Prepare Method @62-57414EBD
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "cookshopping_cart_id", ccsInteger, "", "", $this->Parameters["cookshopping_cart_id"], -1, false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "shopping_cart_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsInteger),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @62-358860A2
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM store_shopping_cart_items INNER JOIN store_products ON\n\n" .
        "store_shopping_cart_items.product_id = store_products.product_id";
        $this->SQL = "SELECT TOP {SqlParam_endRecord} store_shopping_cart_items.*, product_name, price \n\n" .
        "FROM store_shopping_cart_items INNER JOIN store_products ON\n\n" .
        "store_shopping_cart_items.product_id = store_products.product_id {SQL_Where} {SQL_OrderBy}";
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

//SetValues Method @62-7C984808
    function SetValues()
    {
        $this->CachedColumns["product_id"] = $this->f("product_id");
        $this->CachedColumns["shopping_cart_item_id"] = $this->f("shopping_cart_item_id");
        $this->product_id->SetDBValue($this->f("product_name"));
        $this->Price->SetDBValue(trim($this->f("price")));
        $this->quantity->SetDBValue(trim($this->f("quantity")));
    }
//End SetValues Method

//Update Method @62-E4902A7F
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $Where = "";
        $this->cp["quantity"] = new clsSQLParameter("ctrlquantity", ccsInteger, "", "", $this->quantity->GetValue(true), "", false, $this->ErrorBlock);
        $wp = new clsSQLParameters($this->ErrorBlock);
        $wp->AddParameter("1", "dsshopping_cart_item_id", ccsInteger, "", "", $this->CachedColumns["shopping_cart_item_id"], "", false);
        if(!$wp->AllParamsSet()) {
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        }
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        if (!is_null($this->cp["quantity"]->GetValue()) and !strlen($this->cp["quantity"]->GetText()) and !is_bool($this->cp["quantity"]->GetValue())) 
            $this->cp["quantity"]->SetValue($this->quantity->GetValue(true));
        $wp->Criterion[1] = $wp->Operation(opEqual, "shopping_cart_item_id", $wp->GetDBValue("1"), $this->ToSQL($wp->GetDBValue("1"), ccsInteger),false);
        $Where = 
             $wp->Criterion[1];
        $this->UpdateFields["quantity"]["Value"] = $this->cp["quantity"]->GetDBValue(true);
        $this->SQL = CCBuildUpdate("store_shopping_cart_items", $this->UpdateFields, $this);
        $this->SQL .= strlen($Where) ? " WHERE " . $Where : $Where;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteUpdate", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteUpdate", $this->Parent);
        }
    }
//End Update Method

//Delete Method @62-734D2276
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $Where = "";
        $wp = new clsSQLParameters($this->ErrorBlock);
        $wp->AddParameter("1", "dsshopping_cart_item_id", ccsInteger, "", "", $this->CachedColumns["shopping_cart_item_id"], "", false);
        if(!$wp->AllParamsSet()) {
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        }
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $wp->Criterion[1] = $wp->Operation(opEqual, "shopping_cart_item_id", $wp->GetDBValue("1"), $this->ToSQL($wp->GetDBValue("1"), ccsInteger),false);
        $Where = 
             $wp->Criterion[1];
        $this->SQL = "DELETE FROM store_shopping_cart_items";
        $this->SQL = CCBuildSQL($this->SQL, $Where, "");
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteDelete", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteDelete", $this->Parent);
        }
    }
//End Delete Method

} //End shop_cartDataSource Class @62-FCB6E20C

class clsRecordpurchase { //purchase Class @99-052DE8DD

//Variables @99-9E315808

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

//Class_Initialize Event @99-BCDEA869
    function clsRecordpurchase($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record purchase/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "purchase";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = explode(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->purchase = new clsButton("purchase", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @99-367945B8
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @99-E8CE9E37
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @99-FF59CFBB
    function Operation()
    {
        if(!$this->Visible)
            return;

        global $Redirect;
        global $FileName;

        if(!$this->FormSubmitted) {
            return;
        }

        if($this->FormSubmitted) {
            $this->PressedButton = "purchase";
            if($this->purchase->Pressed) {
                $this->PressedButton = "purchase";
            }
        }
        $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->Validate()) {
            if($this->PressedButton == "purchase") {
                $Redirect = "PayFlow.php" . "?" . CCGetQueryString("QueryString", array("ccsForm"));
                if(!CCGetEvent($this->purchase->CCSEvents, "OnClick", $this->purchase)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @99-524A57B2
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


        $RecordBlock = "Record " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $RecordBlock;
        $this->EditMode = $this->EditMode && $this->ReadAllowed;

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->Errors->ToString());
            $Tpl->SetVar("Error", $Error);
            $Tpl->Parse("Error", false);
        }
        $CCSForm = $this->EditMode ? $this->ComponentName . ":" . "Edit" : $this->ComponentName;
        $this->HTMLFormAction = $FileName . "?" . CCAddParam(CCGetQueryString("QueryString", ""), "ccsForm", $CCSForm);
        $Tpl->SetVar("Action", !$CCSUseAmp ? $this->HTMLFormAction : str_replace("&", "&amp;", $this->HTMLFormAction));
        $Tpl->SetVar("HTMLFormName", $this->ComponentName);
        $Tpl->SetVar("HTMLFormEnctype", $this->FormEnctype);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        $this->Attributes->Show();
        if(!$this->Visible) {
            $Tpl->block_path = $ParentPath;
            return;
        }

        $this->purchase->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End purchase Class @99-FCB6E20C

class clsRecordshop_total { //shop_total Class @39-53D3D149

//Variables @39-9E315808

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

//Class_Initialize Event @39-DE2304B1
    function clsRecordshop_total($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record shop_total/Error";
        $this->DataSource = new clsshop_totalDataSource($this);
        $this->ds = & $this->DataSource;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "shop_total";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = explode(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->total = new clsControl(ccsLabel, "total", "total", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), CCGetRequestParam("total", $Method, NULL), $this);
        }
    }
//End Class_Initialize Event

//Initialize Method @39-B5F420F7
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["cookshopping_cart_id"] = CCGetCookie("shopping_cart_id", NULL);
    }
//End Initialize Method

//Validate Method @39-367945B8
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @39-2E315658
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->total->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @39-17DC9883
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

        $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if ($Redirect)
            $this->DataSource->close();
    }
//End Operation Method

//Show Method @39-37FF87AD
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
                $this->total->SetValue($this->DataSource->total->GetValue());
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->total->Errors->ToString());
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

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        $this->Attributes->Show();
        if(!$this->Visible) {
            $Tpl->block_path = $ParentPath;
            return;
        }

        $this->total->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End shop_total Class @39-FCB6E20C

class clsshop_totalDataSource extends clsDBInternetDB {  //shop_totalDataSource Class @39-E0D57013

//DataSource Variables @39-709313DC
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $wp;
    public $AllParametersSet;


    // Datasource fields
    public $total;
//End DataSource Variables

//DataSourceClass_Initialize Event @39-75789CFC
    function clsshop_totalDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record shop_total/Error";
        $this->Initialize();
        $this->total = new clsField("total", ccsFloat, "");
        

    }
//End DataSourceClass_Initialize Event

//Prepare Method @39-B8B26595
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "cookshopping_cart_id", ccsInteger, "", "", $this->Parameters["cookshopping_cart_id"], -1, false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
    }
//End Prepare Method

//Open Method @39-31F71804
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "select sum(price*quantity) as total  from store_shopping_cart_items a, store_products b where a.product_id=b.product_id and shopping_cart_id = " . $this->SQLValue($this->wp->GetDBValue("1"), ccsInteger) . "";
        $this->Order = "";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, $this->Order));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @39-4F1F717B
    function SetValues()
    {
        $this->total->SetDBValue(trim($this->f("total")));
    }
//End SetValues Method

} //End shop_totalDataSource Class @39-FCB6E20C

//Include Page implementation @120-3DD2EFDC
include_once(RelativePath . "/Header.php");
//End Include Page implementation

//Include Page implementation @122-9D52A3A2
include_once(RelativePath . "/Categories.php");
//End Include Page implementation

//Include Page implementation @121-DACD5363
include_once(RelativePath . "/Search.php");
//End Include Page implementation

//Include Page implementation @136-27AB8681
include_once(RelativePath . "/Recommended.php");
//End Include Page implementation

//Initialize Page @1-0B0BAE96
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
$TemplateFileName = "ShoppingCart.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$ContentType = "text/html";
$PathToRoot = "./";
//End Initialize Page

//Authenticate User @1-1178FA35
CCSecurityRedirect("1", "Login.php");
//End Authenticate User

//Include events file @1-9608D0EE
include_once("./ShoppingCart_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-A8639983
$DBInternetDB = new clsDBInternetDB();
$MainPage->Connections["InternetDB"] = & $DBInternetDB;
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
$cart_is_empty = new clsControl(ccsLabel, "cart_is_empty", "cart_is_empty", ccsText, "", CCGetRequestParam("cart_is_empty", ccsGet, NULL), $MainPage);
$shop_cart = new clsEditableGridshop_cart("", $MainPage);
$purchase = new clsRecordpurchase("", $MainPage);
$shop_total = new clsRecordshop_total("", $MainPage);
$Menu = new clsPanel("Menu", $MainPage);
$Menu->PlaceholderName = "Menu";
$Header = new clsHeader("", "Header", $MainPage);
$Header->Initialize();
$Sidebar = new clsPanel("Sidebar", $MainPage);
$Sidebar->PlaceholderName = "Sidebar1";
$Categories = new clsCategories("", "Categories", $MainPage);
$Categories->Initialize();
$Search = new clsSearch("", "Search", $MainPage);
$Search->Initialize();
$Recommended = new clsRecommended("", "Recommended", $MainPage);
$Recommended->Initialize();
$MainPage->Head = & $Head;
$MainPage->Content = & $Content;
$MainPage->cart_is_empty = & $cart_is_empty;
$MainPage->shop_cart = & $shop_cart;
$MainPage->purchase = & $purchase;
$MainPage->shop_total = & $shop_total;
$MainPage->Menu = & $Menu;
$MainPage->Header = & $Header;
$MainPage->Sidebar = & $Sidebar;
$MainPage->Categories = & $Categories;
$MainPage->Search = & $Search;
$MainPage->Recommended = & $Recommended;
$Content->AddComponent("shop_cart", $shop_cart);
$Content->AddComponent("purchase", $purchase);
$Content->AddComponent("shop_total", $shop_total);
$Content->AddComponent("cart_is_empty", $cart_is_empty);
$Menu->AddComponent("Header", $Header);
$Sidebar->AddComponent("Categories", $Categories);
$Sidebar->AddComponent("Search", $Search);
$Sidebar->AddComponent("Recommended", $Recommended);
if(!is_array($cart_is_empty->Value) && !strlen($cart_is_empty->Value) && $cart_is_empty->Value !== false)
    $cart_is_empty->SetText("Shopping Cart is empty");
$shop_cart->Initialize();
$shop_total->Initialize();

BindEvents();

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

//Execute Components @1-1EE0EBF4
$MasterPage->Operations();
$Recommended->Operations();
$Search->Operations();
$Categories->Operations();
$Header->Operations();
$shop_total->Operation();
$purchase->Operation();
$shop_cart->Operation();
//End Execute Components

//Go to destination page @1-7D68B037
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBInternetDB->close();
    header("Location: " . $Redirect);
    unset($shop_cart);
    unset($purchase);
    unset($shop_total);
    $Header->Class_Terminate();
    unset($Header);
    $Categories->Class_Terminate();
    unset($Categories);
    $Search->Class_Terminate();
    unset($Search);
    $Recommended->Class_Terminate();
    unset($Recommended);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-15DE59F8
$Head->Show();
$Content->Show();
$Menu->Show();
$Sidebar->Show();
$MasterPage->Tpl->SetVar("Head", $Tpl->GetVar("Panel Head"));
$MasterPage->Tpl->SetVar("Content", $Tpl->GetVar("Panel Content"));
$MasterPage->Tpl->SetVar("Menu", $Tpl->GetVar("Panel Menu"));
$MasterPage->Tpl->SetVar("Sidebar1", $Tpl->GetVar("Panel Sidebar"));
$MasterPage->Show();
if (!isset($main_block)) $main_block = $MasterPage->HTML;
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-BD1BAE2D
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBInternetDB->close();
unset($MasterPage);
unset($shop_cart);
unset($purchase);
unset($shop_total);
$Header->Class_Terminate();
unset($Header);
$Categories->Class_Terminate();
unset($Categories);
$Search->Class_Terminate();
unset($Search);
$Recommended->Class_Terminate();
unset($Recommended);
unset($Tpl);
//End Unload Page


?>
