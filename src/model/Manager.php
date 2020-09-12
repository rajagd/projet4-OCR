<?php
//connection à la base de donnée
class Manager
{
	protected function dbConnection() 
	{
		try
		{
			$bdd = new PDO('mysql:host=localhost;dbname=jeansblog;charset=utf8', 'root', '');
			return $bdd;
		}
		catch (Exception $e)
		{
			die('Erreur : ' .$e->getMessage());
		}
	}
}
