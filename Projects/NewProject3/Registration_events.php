<?php
//BindEvents Method @1-8173D0D8
function BindEvents()
{
    global $members;
    $members->email->CCSEvents["OnValidate"] = "members_email_OnValidate";
    $members->zip->CCSEvents["OnValidate"] = "members_zip_OnValidate";
    $members->CCSEvents["BeforeInsert"] = "members_BeforeInsert";
}
//End BindEvents Method

//members_email_OnValidate @64-97C65133
function members_email_OnValidate(& $sender)
{
    $members_email_OnValidate = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $members; //Compatibility
//End members_email_OnValidate

//Validate Email @65-73893A7A
    global $CCSLocales;
    if (CCStrLen($Container->email->GetText()) && !preg_match("/^[\w\.-]{1,}\@([\da-zA-Z-]{1,}\.){1,}[\da-zA-Z-]+$/", $Container->email->GetText()))
    {
        $Container->email->Errors->addError("Invalid Email");
    }
//End Validate Email

//Close members_email_OnValidate @64-991A57D9
    return $members_email_OnValidate;
}
//End Close members_email_OnValidate

//members_zip_OnValidate @71-4487F760
function members_zip_OnValidate(& $sender)
{
    $members_zip_OnValidate = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $members; //Compatibility
//End members_zip_OnValidate

//Validate Zip @72-0572338A
    global $CCSLocales;
    if (CCStrLen($Container->zip->GetText()) && !preg_match("/^\s*\d\d\d\d\d\s*$/",$Container->zip->GetText()))
    {
        $Container->zip->Errors->addError("Invalid Zip Code");
    }
//End Validate Zip

//Close members_zip_OnValidate @71-FB9D9DE5
    return $members_zip_OnValidate;
}
//End Close members_zip_OnValidate

//members_BeforeInsert @59-578FFAF6
function members_BeforeInsert(& $sender)
{
    $members_BeforeInsert = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $members; //Compatibility
//End members_BeforeInsert

//Retrieve Value for Control @83-D73D711F
    $Container->group_id->SetValue(1);
//End Retrieve Value for Control

//Close members_BeforeInsert @59-64B7D6FB
    return $members_BeforeInsert;
}
//End Close members_BeforeInsert


?>
