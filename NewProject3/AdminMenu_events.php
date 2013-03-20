<?php
// //Events @1-F81417CB

//AdminMenu_Logout_BeforeShow @18-90926FDB
function AdminMenu_Logout_BeforeShow(& $sender)
{
    $AdminMenu_Logout_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $AdminMenu; //Compatibility
//End AdminMenu_Logout_BeforeShow

//Hide-Show Component @20-CBB709EA
    $Parameter1 = CCGetSession("PortalUserID");
    $Parameter2 = "";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $Component->Visible = false;
//End Hide-Show Component

//Close AdminMenu_Logout_BeforeShow @18-A55E21DF
    return $AdminMenu_Logout_BeforeShow;
}
//End Close AdminMenu_Logout_BeforeShow


?>
