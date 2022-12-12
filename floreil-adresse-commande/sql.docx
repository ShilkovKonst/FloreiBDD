DROP TABLE IF EXISTS
    Plante;
CREATE TABLE Plante(
    idPlante INTEGER(5) AUTO_INCREMENT NOT NULL,
    title_Plante VARCHAR(45),
    image_Plante VARCHAR(45),
    description_Plante VARCHAR(100),
    nomCommun_Plante VARCHAR(45),
    genre_Plante VARCHAR(45),
    taille_Plante INTEGER(4),
    feiilage_Plante VARCHAR(45),
    arrosage_Plante VARCHAR(100),
    floraison_Plante VARCHAR(45),
    floraisonParfumee_Plante BOOLEAN,
    idPrixQnty INTEGER(5),
    idType INTEGER(5),
    PRIMARY KEY(idPlante)
) ENGINE = InnoDB; DROP TABLE IF EXISTS
    PrixQnty;
CREATE TABLE PrixQnty(
    idPrixQnty INTEGER(5) AUTO_INCREMENT NOT NULL,
    qnty_PrixQnty INTEGER(3),
    prix_PrixQnty INTEGER(4),
    PRIMARY KEY(idPrixQnty)
) ENGINE = InnoDB; DROP TABLE IF EXISTS
    Utilisateur;
CREATE TABLE Utilisateur(
    idUtilisateur INTEGER(5) AUTO_INCREMENT NOT NULL,
    nom_Utilisateur VARCHAR(45),
    prenom_Utilisateur VARCHAR(45),
    usernamel_Utilisateur VARCHAR(45),
    email_Utilisateur VARCHAR(45),
    mobTell_Utilisateur INTEGER(15),
    PRIMARY KEY(idUtilisateur)
) ENGINE = InnoDB; DROP TABLE IF EXISTS
    Ville;
CREATE TABLE Ville(
    idVille INTEGER(5) AUTO_INCREMENT NOT NULL,
    nom_Ville VARCHAR(45),
    codePostal_Ville INTEGER(9),
    PRIMARY KEY(idVille)
) ENGINE = InnoDB; DROP TABLE IF EXISTS
    Pays;
CREATE TABLE Pays(
    idPays INTEGER(5) AUTO_INCREMENT NOT NULL,
    nom_Pays VARCHAR(45),
    PRIMARY KEY(idPays)
) ENGINE = InnoDB; DROP TABLE IF EXISTS
    Rue;
CREATE TABLE Rue(
    idRue INTEGER(5) AUTO_INCREMENT NOT NULL,
    nom_Rue VARCHAR(45),
    PRIMARY KEY(idRue)
) ENGINE = InnoDB; DROP TABLE IF EXISTS
    Batiment;
CREATE TABLE Batiment(
    idBatiment INTEGER(5) AUTO_INCREMENT NOT NULL,
    numero_Batiment INTEGER(5),
    PRIMARY KEY(idBatiment)
) ENGINE = InnoDB; DROP TABLE IF EXISTS TYPE
    ;
CREATE TABLE TYPE(
    idType INTEGER(5) AUTO_INCREMENT NOT NULL,
    resistanceFroid_Type BOOLEAN,
    resistanceFroidHaut_Type INTEGER(3),
    resistanceFroidBas_Type INTEGER(3),
    nom_Type_Type VARCHAR(45),
    PRIMARY KEY(idType)
) ENGINE = InnoDB; DROP TABLE IF EXISTS
    Commande;
CREATE TABLE Commande(
    idCommande INTEGER(5) AUTO_INCREMENT NOT NULL,
    numero_Commande INTEGER(5),
    somme_Commande INTEGER(5),
    PRIMARY KEY(idCommande)
) ENGINE = InnoDB; DROP TABLE IF EXISTS
    utilisateur_acheter_plante;
CREATE TABLE utilisateur_acheter_plante(
    idUtilisateur INTEGER(5) AUTO_INCREMENT NOT NULL,
    idPlante INTEGER(5) NOT NULL,
    idCommande INTEGER(5) NOT NULL,
    user_qnty_acheter INTEGER(5),
    PRIMARY KEY(
        idUtilisateur,
        idPlante,
        idCommande
    )
) ENGINE = InnoDB; DROP TABLE IF EXISTS
    appartenir_rue_ville;
CREATE TABLE appartenir_rue_ville(
    idRue INTEGER(5) AUTO_INCREMENT NOT NULL,
    idVille INTEGER(5) NOT NULL,
    PRIMARY KEY(idRue, idVille)
) ENGINE = InnoDB; DROP TABLE IF EXISTS
    appartenir_ville_pays;
CREATE TABLE appartenir_ville_pays(
    idVille INTEGER(5) AUTO_INCREMENT NOT NULL,
    idPays INTEGER(5) NOT NULL,
    PRIMARY KEY(idVille, idPays)
) ENGINE = InnoDB; DROP TABLE IF EXISTS
    utilisateur_avoir_adresse;
CREATE TABLE utilisateur_avoir_adresse(
    idBatiment INTEGER(5) AUTO_INCREMENT NOT NULL,
    idRue INTEGER(5) NOT NULL,
    idVille INTEGER(5) NOT NULL,
    idPays INTEGER(5) NOT NULL,
    idUtilisateur INTEGER(5) NOT NULL,
    PRIMARY KEY(
        idBatiment,
        idRue,
        idVille,
        idPays,
        idUtilisateur
    )
) ENGINE = InnoDB; DROP TABLE IF EXISTS
    appartenir_bat_rue;
CREATE TABLE appartenir_bat_rue(
    idBatiment INTEGER(5) AUTO_INCREMENT NOT NULL,
    idRue INTEGER(5) NOT NULL,
    PRIMARY KEY(idBatiment, idRue)
) ENGINE = InnoDB; ALTER TABLE
    Plante ADD CONSTRAINT FK_Plante_idPrixQnty FOREIGN KEY(idPrixQnty) REFERENCES PrixQnty(idPrixQnty);
ALTER TABLE
    Plante ADD CONSTRAINT FK_Plante_idType FOREIGN KEY(idType) REFERENCES TYPE(idType);
ALTER TABLE
    utilisateur_acheter_plante ADD CONSTRAINT FK_utilisateur_acheter_plante_idUtilisateur FOREIGN KEY(idUtilisateur) REFERENCES Utilisateur(idUtilisateur);
ALTER TABLE
    utilisateur_acheter_plante ADD CONSTRAINT FK_utilisateur_acheter_plante_idPlante FOREIGN KEY(idPlante) REFERENCES Plante(idPlante);
ALTER TABLE
    utilisateur_acheter_plante ADD CONSTRAINT FK_utilisateur_acheter_plante_idCommande FOREIGN KEY(idCommande) REFERENCES Commande(idCommande);
ALTER TABLE
    appartenir_rue_ville ADD CONSTRAINT FK_appartenir_rue_ville_idRue FOREIGN KEY(idRue) REFERENCES Rue(idRue);
ALTER TABLE
    appartenir_rue_ville ADD CONSTRAINT FK_appartenir_rue_ville_idVille FOREIGN KEY(idVille) REFERENCES Ville(idVille);
ALTER TABLE
    appartenir_ville_pays ADD CONSTRAINT FK_appartenir_ville_pays_idVille FOREIGN KEY(idVille) REFERENCES Ville(idVille);
ALTER TABLE
    appartenir_ville_pays ADD CONSTRAINT FK_appartenir_ville_pays_idPays FOREIGN KEY(idPays) REFERENCES Pays(idPays);
ALTER TABLE
    utilisateur_avoir_adresse ADD CONSTRAINT FK_utilisateur_avoir_adresse_idBatiment FOREIGN KEY(idBatiment) REFERENCES Batiment(idBatiment);
ALTER TABLE
    utilisateur_avoir_adresse ADD CONSTRAINT FK_utilisateur_avoir_adresse_idRue FOREIGN KEY(idRue) REFERENCES Rue(idRue);
ALTER TABLE
    utilisateur_avoir_adresse ADD CONSTRAINT FK_utilisateur_avoir_adresse_idVille FOREIGN KEY(idVille) REFERENCES Ville(idVille);
ALTER TABLE
    utilisateur_avoir_adresse ADD CONSTRAINT FK_utilisateur_avoir_adresse_idPays FOREIGN KEY(idPays) REFERENCES Pays(idPays);
ALTER TABLE
    utilisateur_avoir_adresse ADD CONSTRAINT FK_utilisateur_avoir_adresse_idUtilisateur FOREIGN KEY(idUtilisateur) REFERENCES Utilisateur(idUtilisateur);
ALTER TABLE
    appartenir_bat_rue ADD CONSTRAINT FK_appartenir_bat_rue_idBatiment FOREIGN KEY(idBatiment) REFERENCES Batiment(idBatiment);
ALTER TABLE
    appartenir_bat_rue ADD CONSTRAINT FK_appartenir_bat_rue_idRue FOREIGN KEY(idRue) REFERENCES Rue(idRue);