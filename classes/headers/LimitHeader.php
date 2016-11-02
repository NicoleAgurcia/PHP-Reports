<?php
class LimitHeader extends HeaderBase {
    //only params listed here may be passed into the header
    //anything else will throw an error
    static $validation = array(
        'limit'=>array(
            'type'=>'number',
            'default'=>'10'
        ),
        'offset'=>array(
            'type'=>'number',
            'default'=>'0'
        ),
    );

    //this is called when the header is parsed
    public static function init($params, &$report) {
        //store the params in the report for use after the report is run
        $report->options['Limit'] = $params;
    }

    //provide an optional shortcut syntax
    public static function parseShortcut($value) {
        //the shortcut syntax "OFFSET, LIMIT"
        if(strpos($value, ',') !== false) {
            list($offset,$limit) = explode(',', $value, 2);
        }
        //the shortcut syntax "LIMIT"
        else {
            $limit = $value;
            $offset = 0;
        }

        $params = array(
            'limit'=>intval(trim($limit)),
            'offset'=>intval(trim($offset))
        );

        return $params;
    }

    //this is called after the report is run and all filters are applied
    //it is the last thing that is run before rendering the report to the screen
    public static function beforeRender(&$report) {
        //get the limit options from the report
        $limit = $report->options['Limit']['limit'];
        $offset = $report->options['Limit']['offset'];

        //array slice the report rows
        $report->options['Rows'] = array_slice($report->options['Rows'], $offset, $limit);
    }
}