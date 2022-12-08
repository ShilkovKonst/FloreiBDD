DROP TABLE IF EXISTS
    Auteur;
CREATE TABLE Auteur(
    idAuteur INTEGER(5) AUTO_INCREMENT NOT NULL,
    nomAuteur VARCHAR(45),
    prenomAuteur VARCHAR(45),
    PRIMARY KEY(idAuteur)
) ENGINE = InnoDB; 

DROP TABLE IF EXISTS
    Ouvrage;
CREATE TABLE Ouvrage(
    idOuvrage INTEGER(5) AUTO_INCREMENT NOT NULL,
    titleOuvrage VARCHAR(45),
    idEditeur INTEGER(5),
    PRIMARY KEY(idOuvrage)
) ENGINE = InnoDB; 

DROP TABLE IF EXISTS
    MotCle;
CREATE TABLE MotCle(
    idMotCle INTEGER(5) AUTO_INCREMENT NOT NULL,
    motCle VARCHAR(45),
    PRIMARY KEY(idMotCle)
) ENGINE = InnoDB; 

DROP TABLE IF EXISTS
    Emprunteur;
CREATE TABLE Emprunteur(
    idEmprunteur INTEGER(5) AUTO_INCREMENT NOT NULL,
    nomEmprunteur VARCHAR(45),
    adresseEmprunteur VARCHAR(90),
    telEmprunteur INT(15),
    PRIMARY KEY(idEmprunteur)
) ENGINE = InnoDB; 

DROP TABLE IF EXISTS
    Exemplaire;
CREATE TABLE Exemplaire(
    idExemplaire INTEGER(5) AUTO_INCREMENT NOT NULL,
    positionExemplaire INTEGER(5),
    dateAchatExemplaire DATE,
    idOuvrage INTEGER(5),
    PRIMARY KEY(idExemplaire)
) ENGINE = InnoDB; 

DROP TABLE IF EXISTS
    Editeur;
CREATE TABLE Editeur(
    idEditeur INTEGER(5) AUTO_INCREMENT NOT NULL,
    nomEditeur VARCHAR(45),
    adresseEditeur VARCHAR(90),
    PRIMARY KEY(idEditeur)
) ENGINE = InnoDB; 

DROP TABLE IF EXISTS
    Auteur_Ecrire_Ouvrage;
CREATE TABLE Auteur_Ecrire_Ouvrage(
    idOuvrage INTEGER(5) AUTO_INCREMENT NOT NULL,
    idAuteur INTEGER(5) NOT NULL,
    PRIMARY KEY(idOuvrage, idAuteur)
) ENGINE = InnoDB; 

DROP TABLE IF EXISTS
    MotCle_Caracteriser_Ouvrage;
CREATE TABLE MotCle_Caracteriser_Ouvrage(
    idOuvrage INTEGER(5) AUTO_INCREMENT NOT NULL,
    idMotCle INTEGER(5) NOT NULL,
    PRIMARY KEY(idOuvrage, idMotCle)
) ENGINE = InnoDB; 

DROP TABLE IF EXISTS
    Emprunteur_Emprunter_Exemplaire;
CREATE TABLE Emprunteur_Emprunter_Exemplaire(
    idExemplaire INTEGER(5) AUTO_INCREMENT NOT NULL,
    idEmprunteur INTEGER(5) NOT NULL,
    dateEmprunt DATE,
    dateRetourEmprunt DATE,
    PRIMARY KEY(idExemplaire, idEmprunteur)
) ENGINE = InnoDB; 

ALTER TABLE
    Ouvrage ADD CONSTRAINT FK_Ouvrage_idEditeur FOREIGN KEY(idEditeur) REFERENCES Editeur(idEditeur);
ALTER TABLE
    Exemplaire ADD CONSTRAINT FK_Exemplaire_idOuvrage FOREIGN KEY(idOuvrage) REFERENCES Ouvrage(idOuvrage);
ALTER TABLE
    Auteur_Ecrire_Ouvrage ADD CONSTRAINT FK_Auteur_Ecrire_Ouvrage_idOuvrage FOREIGN KEY(idOuvrage) REFERENCES Ouvrage(idOuvrage);
ALTER TABLE
    Auteur_Ecrire_Ouvrage ADD CONSTRAINT FK_Auteur_Ecrire_Ouvrage_idAuteur FOREIGN KEY(idAuteur) REFERENCES Auteur(idAuteur);
ALTER TABLE
    MotCle_Caracteriser_Ouvrage ADD CONSTRAINT FK_MotCle_Caracteriser_Ouvrage_idOuvrage FOREIGN KEY(idOuvrage) REFERENCES Ouvrage(idOuvrage);
ALTER TABLE
    MotCle_Caracteriser_Ouvrage ADD CONSTRAINT FK_MotCle_Caracteriser_Ouvrage_idMotCle FOREIGN KEY(idMotCle) REFERENCES MotCle(idMotCle);
ALTER TABLE
    Emprunteur_Emprunter_Exemplaire ADD CONSTRAINT FK_Emprunteur_Emprunter_Exemplaire_idExemplaire FOREIGN KEY(idExemplaire) REFERENCES Exemplaire(idExemplaire);
ALTER TABLE
    Emprunteur_Emprunter_Exemplaire ADD CONSTRAINT FK_Emprunteur_Emprunter_Exemplaire_idEmprunteur FOREIGN KEY(idEmprunteur) REFERENCES Emprunteur(idEmprunteur);