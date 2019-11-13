<?php

	if(isset($_POST["prenom"]))
	{
		echo '<p>Voici son nom, prenom, role, sa sp&eacute;cialite et son leitmotiv: </p><br /> ';
		
		$xml = simplexml_load_file("./modele/xml/equipe.xml");

		$result = $xml->xpath("/relation/table/tuple[Prenom/text()='".$_POST["prenom"]."']/*[not(self::Salaire) and not(self::DateEmbauche) and not(self::Signe-distinctif)]");
		
		foreach($result as $element)
		{
			if($element->count()!=0)
			{
				foreach($element->children() as $data) echo $data.'<br />';
				echo '<br />';
			}
			else echo $element.'<br />';
		}
	}
?>