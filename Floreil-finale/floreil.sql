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
    stockQnty_Plante INTEGER(3),
    prix_Plante FLOAT(4),
    idCategorie INTEGER(5),
    PRIMARY KEY(idPlante)
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
    codePostale_Utilisateur INTEGER(6),
    ville_Utilisateur VARCHAR(45),
    pays_Utilisateur VARCHAR(45),
    dateCreationPanier_Utilisateur DATE,
    PRIMARY KEY(idUtilisateur)
) ENGINE = InnoDB; DROP TABLE IF EXISTS
    Categorie;
CREATE TABLE Categorie(
    idCategorie INTEGER(5) AUTO_INCREMENT NOT NULL,
    resistanceFroid_Categorie BOOLEAN,
    resistanceFroidHaut_Categorie INTEGER(3),
    resistanceFroidBas_Categorie INTEGER(3),
    nom_Categorie VARCHAR(45),
    PRIMARY KEY(idCategorie)
) ENGINE = InnoDB; DROP TABLE IF EXISTS
    Facture;
CREATE TABLE Facture(
    idFacture INTEGER(5) AUTO_INCREMENT NOT NULL,
    numero_Facture VARCHAR(45),
    date_Facture DATE,
    document_Facture VARCHAR(45),
    montantPanier_Facture FLOAT(7),
    idUtilisateur INTEGER(5),
    PRIMARY KEY(idFacture)
) ENGINE = InnoDB; DROP TABLE IF EXISTS
    Commande;
CREATE TABLE Commande(
    idCommande INTEGER(5) AUTO_INCREMENT NOT NULL,
    numero_Commande INTEGER(10),
    date_Commande DATE,
    dateLivraison_Commande DATE,
    linkAgenceLivraison_Commande VARCHAR(45),
    numeroExtLivraison_Commande VARCHAR(45),
    idUtilisateur INTEGER(5),
    PRIMARY KEY(idCommande)
) ENGINE = InnoDB; DROP TABLE IF EXISTS
    ajouter_au_panier;
CREATE TABLE ajouter_au_panier(
    idUtilisateur INTEGER(5) AUTO_INCREMENT NOT NULL,
    idPlante INTEGER(5) NOT NULL,
    qnty_plante INTEGER(5),
    prixPourQnty_plante_ajouter_au_panier FLOAT(7),
    prixTotalPourPlantes_ajouter_au_panier FLOAT(7),
    PRIMARY KEY(idUtilisateur, idPlante)
) ENGINE = InnoDB; ALTER TABLE
    Plante ADD CONSTRAINT FK_Plante_idCategorie FOREIGN KEY(idCategorie) REFERENCES Categorie(idCategorie);
ALTER TABLE
    Facture ADD CONSTRAINT FK_Facture_idUtilisateur FOREIGN KEY(idUtilisateur) REFERENCES Utilisateur(idUtilisateur);
ALTER TABLE
    Commande ADD CONSTRAINT FK_Commande_idUtilisateur FOREIGN KEY(idUtilisateur) REFERENCES Utilisateur(idUtilisateur);
ALTER TABLE
    ajouter_au_panier ADD CONSTRAINT FK_ajouter_au_panier_idUtilisateur FOREIGN KEY(idUtilisateur) REFERENCES Utilisateur(idUtilisateur);
ALTER TABLE
    ajouter_au_panier ADD CONSTRAINT FK_ajouter_au_panier_idPlante FOREIGN KEY(idPlante) REFERENCES Plante(idPlante);