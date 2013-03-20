<?php
// //Events @1-F81417CB

//AdmHeader_AfterInitialize @1-B24AAA77
function AdmHeader_AfterInitialize(& $sender)
{
    $AdmHeader_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $AdmHeader; //Compatibility
//End AdmHeader_AfterInitialize

//Logout @7-3CE162E6
    if(strlen(CCGetParam("Logout", ""))) 
    {
        CCLogoutUser();
        global $Redirect;
        $Redirect = "../Login.php";
    }
//End Logout

//Close AdmHeader_AfterInitialize @1-686D2822
    return $AdmHeader_AfterInitialize;
}
//End Close AdmHeader_AfterInitialize


?>
