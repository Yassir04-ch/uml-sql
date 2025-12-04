
CREATE TABLE bde(
  id INT PRIMARY KEY AUTO_INCREMENT,
  nom VARCHAR(50) NOT NULL, 
  prenom VARCHAR (50) NOT NULL,
  email VARCHAR (50),
  role VARCHAR (50),
  date_adhesion DATE  
)ENGINE = INNODB; 


CREATE TABLE evnement(
  id INT PRIMARY KEY AUTO_INCREMENT,
  nom VARCHAR(50) NOT NULL, 
  description  VARCHAR(200) NOT NULL,
  date_event DATE,
  lieu VARCHAR(100),
  budget_prévu DECIMAL,
  bde_id INT ,
  FOREIGN KEY (bde_id) REFERENCES bde(id)
)ENGINE = INNODB; 

CREATE TABLE sponsor(
  id INT PRIMARY KEY AUTO_INCREMENT,
  nom VARCHAR(50) NOT NULL, 
  telephone VARCHAR(50) NOT NULL,    
  email VARCHAR(50) NOT NULL,
  montant DECIMAL,  
  nom_event VARCHAR(50),
  event_id INT ,
  FOREIGN KEY(event_id) REFERENCES evnement(id)  
)ENGINE = INNODB;

CREATE TABLE activite(
  id INT PRIMARY KEY AUTO_INCREMENT,
  nom VARCHAR(50) NOT NULL, 
  description VARCHAR (100),
  date_activite DATE,  
  event_id INT ,
  FOREIGN KEY(event_id) REFERENCES evnement(id)  
)ENGINE = INNODB;


CREATE TABLE participant(
  id INT PRIMARY KEY AUTO_INCREMENT,
  nom VARCHAR(50) NOT NULL, 
  prenom VARCHAR (50) NOT NULL,
  email VARCHAR (50),  
  activite_id INT ,
  event_id INT ,
  FOREIGN KEY(activite_id) REFERENCES activite(id), 
  FOREIGN KEY(event_id) REFERENCES evnement(id) 
)ENGINE = INNODB;

 INSERT INTO bde (nom, prenom, email, role, date_adhesion)
VALUES
('yassir', 'cherqui', 'yassirch245@gmail.com', 'role1', '2025-10-03'),
('mouad', 'chelh', 'yassirch245@gmail.com', 'role2', '2025-10-03'),
('youns', 'rajix', 'yassirch245@gmail.com', 'role3', '2025-10-03'),
('salah', 'zamrani', 'yassirch245@gmail.com', 'role4', '2025-10-03'),
('issam', 'sarajdin', 'yassirch245@gmail.com', 'role5', '2025-10-03'),
('said', 'ftah', 'yassirch245@gmail.com', 'role6', '2025-10-03'),
('issam', 'raki', 'yassirch245@gmail.com', 'role7', '2025-10-03'),
('mohsin', 'yajor', 'yassirch245@gmail.com', 'role8', '2025-10-03'),
('mohsin', 'mitwali', 'yassirch245@gmail.com', 'role9', '2025-10-03'),
('khalid', 'askri', 'yassirch245@gmail.com', 'role10', '2025-10-03'),
('ayoub', 'nanah', 'yassirch245@gmail.com', 'role11', '2025-10-03'),
('yassine', 'salhi', 'yassirch245@gmail.com', 'role12', '2025-10-03'),
('anas', 'koko', 'yassirch245@gmail.com', 'role13', '2025-10-03'),
('marwan', 'chamakh', 'yassirch245@gmail.com', 'role14', '2025-10-03'),
('red', 'chakir', 'yassirch245@gmail.com', 'role15', '2025-10-03'),
('amine', 'teljawi', 'yassirch245@gmail.com', 'role16', '2025-10-03'),
('samir', 'sermoli', 'yassirch245@gmail.com', 'role17', '2025-10-03'),
('karim', 'marni', 'yassirch245@gmail.com', 'role18', '2025-10-03'),
('soufian', 'souni', 'email2@example.com', 'role19', '2025-11-05'),
('reda', 'zealok', 'email3@example.com', 'role20', '2025-12-01');

INSERT INTO evnement (nom, description, date_event, lieu, budget_prévu, bde_id)
VALUES
('jeu vidio', 'copitition de vidio game', '2025-12-31', 'tage trois', 500, 1),
('workshop', 'Présentation des nouvelles technologies', '2025-12-15', 'breking code ', 300, 2),
('match de Foot', ' jouer une match de foot', '2025-12-15', 'Stade rmal', 1000, 1),
(' Musique', 'Concerts et spectacles sur 3 jours', '2025-06-20', 'Parc Central', 2500, 3),
('Journée Portes Ouvertes', 'Présentation des clubs et associations', '2025-09-10', 'Campus Principal', 400, 1),
('Atelier Robotique', 'Initiation à la robotique pour débutants', '2025-07-12', 'Laboratoire Tech', 200, 2),
('Séminaire Leadership', 'Développement des compétences en leadership', '2025-08-05', 'Salle Conférence', 350, 3),
('Tournoi d\'Échecs', 'Compétition interuniversitaire', '2025-10-22', 'Salle B', 150, 1),
('Marathon Étudiant', 'Course de 10 km autour du campus', '2025-11-02', 'Campus & Parc', 800, 2),
('Soirée Cinéma', 'Projection de films classiques', '2025-12-12', 'Auditorium', 250, 3),
('Atelier Photographie', 'Techniques de prise de vue et retouche', '2025-07-25', 'Salle Multimédia', 180, 1),
('Conférence Écologie', 'Sensibilisation au développement durable', '2025-09-18', 'Salle A', 300, 2),
('Fête de Noël', 'Célébration de Noël avec cadeaux et spectacles', '2025-12-24', 'Campus Hall', 1200, 1),
('Compétition de Débat', 'Débat entre différentes facultés', '2025-10-15', 'Salle Conférence', 200, 3),
('Salon des Métiers', 'Découverte des opportunités professionnelles', '2025-11-20', 'Parc des Expositions', 700, 2),
('Soirée Karaoké', 'Animation musicale pour tous', '2025-08-30', 'Cafétéria', 150, 1),
('Workshop Coding', 'Apprentissage intensif de programmation', '2025-09-25', 'Lab Informatique', 400, 3),
('Tournoi de football', 'Matchs entre les classe', '2026-01-05', 'rmal', 600, 1),
('Tournoi de Basketball', 'Matchs entre équipes étudiantes', '2025-11-10', 'Théâtre Campus', 900, 2),
('Exposition Artistique', 'Exposition des œuvres des étudiants', '2025-12-01', 'Galerie Universitaire', 350, 3);

INSERT INTO activite (nom, description, date_activite, event_id)
VALUES
('Tournoi de Foot', 'matche de football', '2025-12-19', 3),
('Atelier Coding', 'compitition de coding', '2025-12-17', 2),
('tournoi de bascket', 'matche de bascket', '2025-12-15', 4),
('jeux de memoire', 'matche de bascket', '2025-12-15', 6),
('music', 'music compitition', '2025-12-15', 7),
('jeux vitasse', 'top speed', '2025-12-15', 1);


INSERT INTO participant (nom, prenom, email, activite_id, event_id)
VALUES
('Yassir', 'Cherqui', 'yassirch245@gmail.com', 1, 1),
('Amar', 'Kasimi', 'amar.kasimi@gmail.com', 2, 1),
('Younes', 'Rajix', 'younesrajix@gmail.com', 1, 2),
('Younes', 'Rajix', 'younesrajix@gmail.com', 2, 3),
('Anas', 'Hanoni', 'anas@gmail.com', 1, 5),
('Amine', 'Siroro', 'amine@gmail.com', 3, 6);


INSERT INTO sponsor (nom, telephone, email, montant, nom_event, event_id)
VALUES
('koko', '0612345678', 'kok@gmail.com', 5000, 'Tournoi de Basketball', 1),
('Inwi', '0623456789', 'inwi@gmail.com', 3000, 'jeu vidio', 2),
('dari', '0634567890', 'dari@gmail.ma', 7000, 'Tournoi de Foot', 3);

SELECT * FROM  bde;
SELECT * FROM evnement WHERE date_event > '2025-10-10';
SELECT * FROM evnement WHERE budget_prévu > 5000;
SELECT * FROM participant WHERE event_id = 1