
<section>
	<div>
		<h2>Équipe</h2>
		<br />
		<p> L'équipe est compos&eacute; de
			<script> // Codable directement en PHP (sans JS nécessaie) comme en fin de ce fichier mais j'ai changé ici pour l'exemple :)
				<?php
					require 'modele/xml/prenomsMembreEquipe.php';
				?>

				document.write(nombre+" personnes : ");

				for (var i = 0; i < elements.length; i++)
				{
					document.write(elements[i][0]);

					if(i == elements.length - 2)
					{
						document.write(" et ");
					}
					else if(i < elements.length - 1)
					{
						document.write(", ");
					}
				}
				document.write(" !<br />");
			</script>
		</p>
		
		Si vous souhaitez obtenir des renseignements suppl&eacute;mentaire sur l'un d'entre eux, veuillez saisir son pr&eacute;nom ci-dessous :<br/></p>
		<form method="post" action="index.php?p=equipe">
			<input type="text" name="prenom" placeholder="Prénom" required>  
			<button type="submit">Envoyer</button><br />  
		</form>

		<br />  
		<?php
			require 'modele/xml/afficherMembreEquipe.php';  // Traitement et affichage 100% PHP ici
		?>
		<br />  
    </div>
 </section> 