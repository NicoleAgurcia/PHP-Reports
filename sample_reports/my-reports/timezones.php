<?php
//Timezone List
//This lists all timezone abbreviations in a given timezone
//VARIABLE: {name: "timezone", display: "Choose a Timezone"}

$timezones = DateTimeZone::listAbbreviations();

//All VARIABLE headers are defined in php before running the report
//so we can use $timezone and it will contain the user entered value

//if an error occurs, you can throw an exception and it will be shown to the user
if(!isset($timezones[$timezone])) {
        throw new Exception("Invalid time zone");
}

echo json_encode($timezones[$timezone]);