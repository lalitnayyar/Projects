<?php
//BindEvents Method @1-338C066B
function BindEvents()
{
    global $links;
    $links->CCSEvents["BeforeShow"] = "links_BeforeShow";
}
//End BindEvents Method

//links_BeforeShow @43-3734A46A
function links_BeforeShow(& $sender)
{
    $links_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $links; //Compatibility
//End links_BeforeShow

//Custom Code @57-2A29BDB7
// -------------------------
    // Write your own code here.
// -------------------------
//End Custom Code

//Close links_BeforeShow @43-CB19CF9E
    return $links_BeforeShow;
}
//End Close links_BeforeShow


?>
