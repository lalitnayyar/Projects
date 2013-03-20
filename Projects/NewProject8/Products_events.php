<?php
//BindEvents Method @1-6840AAAB
function BindEvents()
{
    global $products;
    $products->products_found->CCSEvents["BeforeShow"] = "products_products_found_BeforeShow";
}
//End BindEvents Method

//products_products_found_BeforeShow @77-FEAFFFE8
function products_products_found_BeforeShow(& $sender)
{
    $products_products_found_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $products; //Compatibility
//End products_products_found_BeforeShow

//Retrieve number of records @78-ABE656B4
    $Component->SetValue($Container->DataSource->RecordsCount);
//End Retrieve number of records

//Close products_products_found_BeforeShow @77-D452653C
    return $products_products_found_BeforeShow;
}
//End Close products_products_found_BeforeShow


?>
