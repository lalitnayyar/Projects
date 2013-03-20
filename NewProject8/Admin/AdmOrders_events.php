<?php
//BindEvents Method @1-1424180E
function BindEvents()
{
    global $users_store_statuses_stor;
    $users_store_statuses_stor->Records_Found->CCSEvents["BeforeShow"] = "users_store_statuses_stor_Records_Found_BeforeShow";
}
//End BindEvents Method

//users_store_statuses_stor_Records_Found_BeforeShow @35-712EAEEC
function users_store_statuses_stor_Records_Found_BeforeShow(& $sender)
{
    $users_store_statuses_stor_Records_Found_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $users_store_statuses_stor; //Compatibility
//End users_store_statuses_stor_Records_Found_BeforeShow

//Retrieve number of records @36-ABE656B4
    $Component->SetValue($Container->DataSource->RecordsCount);
//End Retrieve number of records

//Close users_store_statuses_stor_Records_Found_BeforeShow @35-43B47D34
    return $users_store_statuses_stor_Records_Found_BeforeShow;
}
//End Close users_store_statuses_stor_Records_Found_BeforeShow


?>
