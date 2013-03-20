<?php
//BindEvents Method @1-DF9B5A34
function BindEvents()
{
    global $Login;
    global $CCSEvents;
    $Login->Button_DoLogin->CCSEvents["OnClick"] = "Login_Button_DoLogin_OnClick";
    $CCSEvents["OnInitializeView"] = "Page_OnInitializeView";
}
//End BindEvents Method

//Login_Button_DoLogin_OnClick @35-1454CF55
function Login_Button_DoLogin_OnClick(& $sender)
{
    $Login_Button_DoLogin_OnClick = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Login; //Compatibility
//End Login_Button_DoLogin_OnClick

//Login @36-DE10C29C
    global $CCSLocales;
    global $Redirect;
    if ( !CCLoginUser( $Container->login->Value, $Container->password->Value)) {
        $Container->Errors->addError($CCSLocales->GetText("CCS_LoginError"));
        $Container->password->SetValue("");
        $Login_Button_DoLogin_OnClick = 0;
    } else {
        global $Redirect;
        $Redirect = CCGetParam("ret_link", $Redirect);
        $Login_Button_DoLogin_OnClick = 1;
    }
//End Login

//Close Login_Button_DoLogin_OnClick @35-0EB5DCFE
    return $Login_Button_DoLogin_OnClick;
}
//End Close Login_Button_DoLogin_OnClick

//Page_OnInitializeView @1-67037DF4
function Page_OnInitializeView(& $sender)
{
    $Page_OnInitializeView = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Login; //Compatibility
//End Page_OnInitializeView

//Logout @8-A948B367
    if(strlen(CCGetParam("Logout", ""))) 
    {
        CCLogoutUser();
    }
//End Logout

//Close Page_OnInitializeView @1-81DF8332
    return $Page_OnInitializeView;
}
//End Close Page_OnInitializeView


?>
