<?php
//BindEvents Method @1-CD1ECE35
function BindEvents()
{
    global $Panel1;
    global $wishes1;
    global $Panel3;
    global $Panel2;
    global $CCSEvents;
    $Panel1->CCSEvents["BeforeShow"] = "Panel1_BeforeShow";
    $wishes1->wish_email->CCSEvents["OnValidate"] = "wishes1_wish_email_OnValidate";
    $Panel3->CCSEvents["BeforeShow"] = "Panel3_BeforeShow";
    $Panel2->CCSEvents["BeforeShow"] = "Panel2_BeforeShow";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
    $CCSEvents["BeforeShow"] = "Page_BeforeShow";
    $CCSEvents["BeforeOutput"] = "Page_BeforeOutput";
    $CCSEvents["BeforeUnload"] = "Page_BeforeUnload";
}
//End BindEvents Method

//Panel1_BeforeShow @2-AAD8AF72
function Panel1_BeforeShow(& $sender)
{
    $Panel1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Panel1; //Compatibility
//End Panel1_BeforeShow

//Panel1UpdatePanel Page BeforeShow @3-546243CA
    global $CCSFormFilter;
    if ($CCSFormFilter == "Panel1") {
        $Component->BlockPrefix = "";
        $Component->BlockSuffix = "";
    } else {
        $Component->BlockPrefix = "<div id=\"Panel1\">";
        $Component->BlockSuffix = "</div>";
    }
//End Panel1UpdatePanel Page BeforeShow

//Close Panel1_BeforeShow @2-D21EBA68
    return $Panel1_BeforeShow;
}
//End Close Panel1_BeforeShow

//wishes1_wish_email_OnValidate @29-3F6B5AFA
function wishes1_wish_email_OnValidate(& $sender)
{
    $wishes1_wish_email_OnValidate = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $wishes1; //Compatibility
//End wishes1_wish_email_OnValidate

//Validate Email @52-11F577CC
    global $CCSLocales;
    if (CCStrLen($Container->wish_email->GetText()) && !preg_match("/^[\w\.-]{1,}\@([\da-zA-Z-]{1,}\.){1,}[\da-zA-Z-]+$/", $Container->wish_email->GetText()))
    {
        $Container->wish_email->Errors->addError($CCSLocales->GetText("CCS_IncorrectEmailFormat", $Container->wish_email->Caption));
    }
//End Validate Email

//Close wishes1_wish_email_OnValidate @29-15400BCD
    return $wishes1_wish_email_OnValidate;
}
//End Close wishes1_wish_email_OnValidate

//Panel3_BeforeShow @31-34D6D0C7
function Panel3_BeforeShow(& $sender)
{
    $Panel3_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Panel3; //Compatibility
//End Panel3_BeforeShow

//Panel2Panel3UpdatePanel Page BeforeShow @32-DA2D1879
    global $CCSFormFilter;
    if ($CCSFormFilter == "Panel2Panel3") {
        $Component->BlockPrefix = "";
        $Component->BlockSuffix = "";
    } else {
        $Component->BlockPrefix = "<div id=\"Panel2Panel3\">";
        $Component->BlockSuffix = "</div>";
    }
//End Panel2Panel3UpdatePanel Page BeforeShow

//Close Panel3_BeforeShow @31-33707EC5
    return $Panel3_BeforeShow;
}
//End Close Panel3_BeforeShow

//Panel2_BeforeShow @12-96696C3D
function Panel2_BeforeShow(& $sender)
{
    $Panel2_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Panel2; //Compatibility
//End Panel2_BeforeShow

//Panel2YahooPanel1 Page BeforeShow @13-CC9B4012
    global $CCSFormFilter;
    if ($CCSFormFilter == "Panel2") {
        $Component->BlockPrefix = "";
        $Component->BlockSuffix = "";
    } else {
        $Component->BlockPrefix = "<div id=\"Panel2\">";
        $Component->BlockSuffix = "</div>";
    }
//End Panel2YahooPanel1 Page BeforeShow

//Close Panel2_BeforeShow @12-AE7F9FB3
    return $Panel2_BeforeShow;
}
//End Close Panel2_BeforeShow

//Page_BeforeInitialize @1-1AB1557E
function Page_BeforeInitialize(& $sender)
{
    $Page_BeforeInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ModalWindow; //Compatibility
//End Page_BeforeInitialize

//Panel1UpdatePanel PageBeforeInitialize @3-B4F71FC5
    if (CCGetFromGet("FormFilter") == "Panel1" && CCGetFromGet("IsParamsEncoded") != "true") {
        global $TemplateEncoding, $CCSIsParamsEncoded;
        CCConvertDataArrays("UTF-8", $TemplateEncoding);
        $CCSIsParamsEncoded = true;
    }
//End Panel1UpdatePanel PageBeforeInitialize

//Panel2Panel3UpdatePanel PageBeforeInitialize @32-CB345C60
    if (CCGetFromGet("FormFilter") == "Panel2Panel3" && CCGetFromGet("IsParamsEncoded") != "true") {
        global $TemplateEncoding, $CCSIsParamsEncoded;
        CCConvertDataArrays("UTF-8", $TemplateEncoding);
        $CCSIsParamsEncoded = true;
    }
//End Panel2Panel3UpdatePanel PageBeforeInitialize

//Close Page_BeforeInitialize @1-23E6A029
    return $Page_BeforeInitialize;
}
//End Close Page_BeforeInitialize

//Page_AfterInitialize @1-BF34843F
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ModalWindow; //Compatibility
//End Page_AfterInitialize

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize

//Page_BeforeShow @1-31AB64F0
function Page_BeforeShow(& $sender)
{
    $Page_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ModalWindow; //Compatibility
//End Page_BeforeShow

//Panel1UpdatePanel Page BeforeShow @3-9F5F0EA1
    global $CCSFormFilter;
    if (CCGetFromGet("FormFilter") == "Panel1") {
        $CCSFormFilter = CCGetFromGet("FormFilter");
        unset($_GET["FormFilter"]);
        if (isset($_GET["IsParamsEncoded"])) unset($_GET["IsParamsEncoded"]);
    }
//End Panel1UpdatePanel Page BeforeShow

//Panel2Panel3UpdatePanel Page BeforeShow @32-61DA1372
    global $CCSFormFilter;
    if (CCGetFromGet("FormFilter") == "Panel2Panel3") {
        $CCSFormFilter = CCGetFromGet("FormFilter");
        unset($_GET["FormFilter"]);
        if (isset($_GET["IsParamsEncoded"])) unset($_GET["IsParamsEncoded"]);
    }
//End Panel2Panel3UpdatePanel Page BeforeShow

//Close Page_BeforeShow @1-4BC230CD
    return $Page_BeforeShow;
}
//End Close Page_BeforeShow

//Page_BeforeOutput @1-021F92AF
function Page_BeforeOutput(& $sender)
{
    $Page_BeforeOutput = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ModalWindow; //Compatibility
//End Page_BeforeOutput

//Panel1UpdatePanel PageBeforeOutput @3-0DFF2749
    global $CCSFormFilter, $Tpl, $main_block;
    if ($CCSFormFilter == "Panel1") {
        $main_block = $_SERVER["REQUEST_URI"] . "|" . $Tpl->getvar("/Panel Panel1");
    }
//End Panel1UpdatePanel PageBeforeOutput

//Panel2Panel3UpdatePanel PageBeforeOutput @32-DE3E371E
    global $CCSFormFilter, $Tpl, $main_block;
    if ($CCSFormFilter == "Panel2Panel3") {
        $main_block = $_SERVER["REQUEST_URI"] . "|" . $Tpl->getvar("/Panel Panel2/Panel Panel3");
    }
//End Panel2Panel3UpdatePanel PageBeforeOutput

//Close Page_BeforeOutput @1-8964C188
    return $Page_BeforeOutput;
}
//End Close Page_BeforeOutput

//Page_BeforeUnload @1-A6CB75F2
function Page_BeforeUnload(& $sender)
{
    $Page_BeforeUnload = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ModalWindow; //Compatibility
//End Page_BeforeUnload

//Panel1UpdatePanel PageBeforeUnload @3-483BFCB6
    global $Redirect, $CCSFormFilter, $CCSIsParamsEncoded;
    if ($Redirect && $CCSFormFilter == "Panel1") {
        if ($CCSIsParamsEncoded) $Redirect = CCAddParam($Redirect, "IsParamsEncoded", "true");
        $Redirect = CCAddParam($Redirect, "FormFilter", $CCSFormFilter);
    }
//End Panel1UpdatePanel PageBeforeUnload

//Panel2Panel3UpdatePanel PageBeforeUnload @32-F0F7A46D
    global $Redirect, $CCSFormFilter, $CCSIsParamsEncoded;
    if ($Redirect && $CCSFormFilter == "Panel2Panel3") {
        if ($CCSIsParamsEncoded) $Redirect = CCAddParam($Redirect, "IsParamsEncoded", "true");
        $Redirect = CCAddParam($Redirect, "FormFilter", $CCSFormFilter);
    }
//End Panel2Panel3UpdatePanel PageBeforeUnload

//Close Page_BeforeUnload @1-CFAEC742
    return $Page_BeforeUnload;
}
//End Close Page_BeforeUnload


?>
