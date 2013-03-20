<?php
//BindEvents Method @1-475CF21C
function BindEvents()
{
    global $events;
    $events->user_added->CCSEvents["BeforeShow"] = "events_user_added_BeforeShow";
    $events->CCSEvents["BeforeShow"] = "events_BeforeShow";
}
//End BindEvents Method

//events_user_added_BeforeShow @46-8F510B8F
function events_user_added_BeforeShow(& $sender)
{
    $events_user_added_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $events; //Compatibility
//End events_user_added_BeforeShow

//Retrieve Value for Control @47-39CF6912
    $Container->user_added->SetValue(CCGetSession("PortalUserID"));
//End Retrieve Value for Control

//Close events_user_added_BeforeShow @46-0261E80D
    return $events_user_added_BeforeShow;
}
//End Close events_user_added_BeforeShow

//events_BeforeShow @39-D1EA5CBB
function events_BeforeShow(& $sender)
{
    $events_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $events; //Compatibility
//End events_BeforeShow

//Custom Code @52-2A29BDB7
// -------------------------
    // Write your own code here.
// -------------------------
//End Custom Code

//Close events_BeforeShow @39-D2B27383
    return $events_BeforeShow;
}
//End Close events_BeforeShow


?>
