provider "aws" {
    version = "~> 2.0"
    region = "us-east-2"
    access_key = "Mettez ici votre clé d'accès (Profil > Mes identifiants de sécurité, puis Créer une clé d'accès)"
    secret_key = "Copier la clé secrète ici"
}

resource "aws_instance" "web-zone-a" {
  ami           = "ami-0fc20dd1da406780b" # Ceci est l'id de l'ami de ubuntu server (mais on peut choisir une autre image pour un autre serveur EC2)
  instance_type = "t2.micro" # Le type de l'instance qui est gratuit
  vpc_security_group_ids = ["sg-9ee913f8"] # Le groupe de sécurité (déjà défini, par défaut, par l'auteur)
  subnet_id = "subnet-3b118577" # Le sous-réseau auquel l'instance va appartenir (3 sous-réseaux ont été définis par défaut et ils appartiennent tous au même vpc d'id vpc-d3af61b8)

  tags = {
    Name = "HelloWorld" 
  }
}