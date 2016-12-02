<?php
abstract class ReportFormatBase {
	abstract public static function display(&$report, &$request);
	
	public static function prepareReport($report) {
		$environment = $_SESSION['environment'];

		$macros = array();
		if(isset($_GET['macros'])) $macros = $_GET['macros'];

		$index = $_GET['index'];

		$report = new Report($report,$macros,$environment,$index);

		return $report;
	}
}
