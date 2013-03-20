<?php
//BindEvents Method @1-397EAC53
function BindEvents()
{
    global $CCSEvents;
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//Page_AfterInitialize @1-EA14BF20
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $AdminArticles; //Compatibility
//End Page_AfterInitialize

//Logout @98-E908D3CE
    if(strlen(CCGetParam("Logout", ""))) 
    {
        CCLogoutUser();
        global $Redirect;
        $Redirect = "AdminArticles.php";
    }
//End Logout

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize


?>
