<?php
//BindEvents Method @1-7FCE297E
function BindEvents()
{
    global $users;
    $users->user_login->CCSEvents["OnValidate"] = "users_user_login_OnValidate";
}
//End BindEvents Method

//users_user_login_OnValidate @45-B18C434B
function users_user_login_OnValidate(& $sender)
{
    $users_user_login_OnValidate = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $users; //Compatibility
//End users_user_login_OnValidate

//Regular Expression Validation @46-2B234D92
    global $CCSLocales;
    if (CCStrLen($Container->user_login->GetText()) && !preg_match("/^\w+\$/", $Container->user_login->GetText()))
    {
        $Container->user_login->Errors->addError($CCSLocales->GetText("CCS_IncorrectValue", $Container->user_login->Caption));
    }
//End Regular Expression Validation

//Close users_user_login_OnValidate @45-06E43D29
    return $users_user_login_OnValidate;
}
//End Close users_user_login_OnValidate


?>
