<?php

require_once "admin/ajax/db/config.php";
require_once root . "/admin/ajax/db/MysqliDb.php";
require_once root . "/admin/ajax/db/funciones.php";
$dbup = MysqliDb::getInstance();
$existingConfig = $dbup->getOne("tblconfiguration");
if ($existingConfig) {
    $dbup->where("setting", "userlic");
    $dbup->update("tblconfiguration", ["value" => "mikrotisp@gmail.com"]);

    $dbup->where("setting", "passlic");
    $dbup->update("tblconfiguration", ["value" => "57ee123e28eb3d6f9fe2acb5mkw8eb3d6f9fe"]);

    $dbup->where("setting", "revision");
    $dbup->update("tblconfiguration", ["value" => "60"]);

} else {
    $dbup->insert("tblconfiguration", ["setting" => "userlic", "value" => "mikrotisp@gmail.com"]);
    $dbup->insert("tblconfiguration", ["setting" => "passlic", "value" => "57ee123e28eb3d6f9fe2acb5mkw8eb3d6f9fe"]);
    $dbup->insert("tblconfiguration", ["setting" => "revision", "value" => "60"]);
}
require_once "postupdate_rev_60.php";
?>