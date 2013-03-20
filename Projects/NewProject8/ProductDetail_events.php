<?php
//BindEvents Method @1-D030AE01
function BindEvents()
{
    global $add_to_cart;
    $add_to_cart->quantity->CCSEvents["OnValidate"] = "add_to_cart_quantity_OnValidate";
    $add_to_cart->CCSEvents["BeforeInsert"] = "add_to_cart_BeforeInsert";
}
//End BindEvents Method

//add_to_cart_quantity_OnValidate @56-7B84B6CA
function add_to_cart_quantity_OnValidate(& $sender)
{
    $add_to_cart_quantity_OnValidate = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $add_to_cart; //Compatibility
//End add_to_cart_quantity_OnValidate

//Validate Minimum Value @59-36D0ACEC
    global $CCSLocales;
    if (CCStrLen($Component->GetText()) && $Component->GetValue() < 1) {
        $Component->Errors->addError($CCSLocales->GetText("CCS_MinimumValue", array($Component->Caption, 1)));
    }
//End Validate Minimum Value

//Close add_to_cart_quantity_OnValidate @56-7C8CEF78
    return $add_to_cart_quantity_OnValidate;
}
//End Close add_to_cart_quantity_OnValidate

//add_to_cart_BeforeInsert @50-E877E008
function add_to_cart_BeforeInsert(& $sender)
{
    $add_to_cart_BeforeInsert = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $add_to_cart; //Compatibility
//End add_to_cart_BeforeInsert

//Retrieve Value for Control @60-5EAB302E
    $Container->shopping_cart_id->SetValue(CCGetCookie("shopping_cart_id"));
//End Retrieve Value for Control

//Close add_to_cart_BeforeInsert @50-A20AF4A1
    return $add_to_cart_BeforeInsert;
}
//End Close add_to_cart_BeforeInsert


?>
