<?php
class ShowBugtrackPage extends AbstractGamePage
{
	public static $requireModule = '';
	function __construct() 	
	{
		parent::__construct();
	}
	
	function show() 
	{
	global $USER;	
	$this->initTemplate();
	if(isset($_POST['email']) && $USER['authlevel'] > 2 && $_POST['email'] <> ""){
			$altes = file_exists('includes/changelog.html') ? file_get_contents('includes/changelog.html') : '';    					
			$timeget = time();
			$inhalt =  " <tr><td colspan=\"1\">" . $USER['username'] . "</td><td colspan=\"1\">" . date('d.m.Y',$timeget) . "</td><td colspan=\"1\"> " . date('H:i',$timeget) . "</td><td colspan=\"2\"> " . $_POST['email'] . " </td><td style=\"text-align: left;\" colspan=\"2\"> " . nl2br($_POST['name']) . " </td></tr> " . "\n\r";
			$handle = fopen("includes/changelog.html","w");
			fwrite($handle ,$inhalt . $altes);
			fclose( $handle ); 
			$dank = " -!- THX -!-";
	}else{
		$dank = " Hallo ";
	}
	$tabelle = file_exists('includes/changelog.html') ? file_get_contents('includes/changelog.html') : '';
	$this->tplObj->assign_vars(array(
			'tabelle'						=> $tabelle,	
			'dattum'						=> date("d.m.Y",time()),
			'zeeit' 						=> date("H:i",time()),
			'dank'							=> $dank,
			'name2'							=> $USER['username'],
			'authlevel'						=> $USER['authlevel'],
			));	
		$this->display('page.bugtrack.default.tpl');
	}
}
