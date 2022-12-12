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
    batiment_Utilisateur INTEGER(5),
    rue_Utilisateur VARCHAR(45),
    ville_Utilisateur VARCHAR(45),
    pays_Utilisateur VARCHAR(45),
    PRIMARY KEY(idUtilisateur)
) ENGINE = InnoDB; DROP TABLE IF EXISTS TYPE
    ;
CREATE TABLE TYPE(
    idType INTEGER(5) AUTO_INCREMENT NOT NULL,
    resistanceFroid_Type BOOLEAN,
    resistanceFroidHaut_Type INTEGER(3),
    resistanceFroidBas_Type INTEGER(3),
    nom_Type VARCHAR(45),
    PRIMARY KEY(idType)
) ENGINE = InnoDB; DROP TABLE IF EXISTS
    Commande;
CREATE TABLE Commande(
    idCommande INTEGER(5) AUTO_INCREMENT NOT NULL,
    numero_Commande INTEGER(10),
    somme_Commande FLOAT(5),
    PRIMARY KEY(idCommande)
) ENGINE = InnoDB; DROP TABLE IF EXISTS
    Livraison;
CREATE TABLE Livraison(
    idLivraison INTEGER(5) AUTO_INCREMENT NOT NULL,
    numero_Livraison INTEGER(10),
    numeroExt_Livraison INTEGER(10),
    idCommande INTEGER(5),
    PRIMARY KEY(idLivraison)
) ENGINE = InnoDB; DROP TABLE IF EXISTS
    acheter;
CREATE TABLE acheter(
    idUtilisateur INTEGER(5) AUTO_INCREMENT NOT NULL,
    idPlante INTEGER(5) NOT NULL,
    idCommande INTEGER(5) NOT NULL,
    user_qnty_acheter INTEGER(5),
    PRIMARY KEY(
        idUtilisateur,
        idPlante,
        idCommande
    )
) ENGINE = InnoDB; ALTER TABLE
    Plante ADD CONSTRAINT FK_Plante_idPrixQnty FOREIGN KEY(idPrixQnty) REFERENCES PrixQnty(idPrixQnty);
ALTER TABLE
    Plante ADD CONSTRAINT FK_Plante_idType FOREIGN KEY(idType) REFERENCES TYPE(idType);
ALTER TABLE
    Livraison ADD CONSTRAINT FK_Livraison_idCommande FOREIGN KEY(idCommande) REFERENCES Commande(idCommande);
ALTER TABLE
    acheter ADD CONSTRAINT FK_acheter_idUtilisateur FOREIGN KEY(idUtilisateur) REFERENCES Utilisateur(idUtilisateur);
ALTER TABLE
    acheter ADD CONSTRAINT FK_acheter_idPlante FOREIGN KEY(idPlante) REFERENCES Plante(idPlante);
ALTER TABLE
    acheter ADD CONSTRAINT FK_acheter_idCommande FOREIGN KEY(idCommande) REFERENCES Commande(idCommande);