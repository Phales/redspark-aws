# redspark-aws
Ce projet, initié par RedSpark, rentre dans le cadre de la 2ème épreuve de la compétition WAVEGAME organisée par Wavestone.

* Outils utilisés :
  - Git
  - Vscode

* Les étapes :
  - Connexion sur aws.amazon.com avec les crédentials fournis.
  - Faire un clone du repository "https://github.com/Phales/redspark-aws.git"
  - Se positionner dans le repertoire du projet
  - Lancer la commande ./teleform init :
    * Ceci va créer un repertoire qui contient un fichier exécutable qui permet de faire appel au fournisseur cloud choisi (ici, aws)
    * Les modifications se feront dans le fichier demo.tf
  - Lancer la commande ./teleform plan pour demander à teleform de préparer des modifications sur le cloud
  - Lancer la commande ./teleform apply pour appliquer les modifications
  
* Astuces sur Git :
  - Après que les modifications auront été testées :
    * Créer une branche locale avant de commiter les modifications et de les pousser sur le repository. Ceci va éviter d'écraser le contenu de la branche 'master' à chaque fois qu'on fait un 'clone' et nous permettre de travailler chacun sur nos branches avant de faire le merge sur le 'master'. Pour revenir prochainement sur nos branches respectives, on fera tout simplement 'git checkout nom_de_la_branche'
    * Commiter seulement les fichiers 'demo.tf', 'teleform.exe' et 'README.md' pour éviter de pousser de gros fichiers (le fichier généré par la commande ./teleform init) sur le repository. De toute façon, il est possible de les regénérer à partir du fichier demo.tf
    * Ne pas oublier de se mettre sur la branche respective avant de commiter et surtout avant de pousser les modifications sur le repository.
    
Bon courage à nous,
