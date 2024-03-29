PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE owners (owner_id INTEGER PRIMARY KEY AUTOINCREMENT, login VARCHAR(50), html_url TEXT, type TEXT, created_at DATETIME, updated_at DATETIME, avatar_url TEXT);
INSERT INTO owners VALUES(1,'JeremyDfr','github.com','personnel','2023-10-20 14:46:58','2023-10-20 14:46:58',NULL);
INSERT INTO owners VALUES(2,'Gauthier','github.com','personnel','2023-10-20 14:47:32','2023-10-20 14:47:32',NULL);
INSERT INTO owners VALUES(3,'Oclock','github.com','organisation','2023-10-20 14:47:51','2023-10-20 14:47:51',NULL);
CREATE TABLE projects (project_id INTEGER PRIMARY KEY AUTOINCREMENT, owner_id INTEGER, private BOOLEAN, archived BOOLEAN, name TEXT, full_name TEXT, description TEXT, language TEXT, html_url TEXT, licence TEXT, created_at DATETIME, updated_at DATETIME, FOREIGN KEY(owner_id) REFERENCES owners(owner_id));
INSERT INTO projects VALUES(1,1,0,0,'api-todolist','API Todolist','API Todolist est une API sous Clean Architecture','JS','github.com','Open-source','2023-10-20 14:51:21','2023-10-20 14:51:21');
INSERT INTO projects VALUES(2,2,1,0,'ovitrine','O''Vitrine','Project challenge Saison 1 CDA','TS','github.com','Open-source','2023-10-20 14:52:35','2023-10-20 14:52:35');
INSERT INTO projects VALUES(2,3,1,0,'store-app','Magasin de vente en ligne','Projet de magasin de vente en ligne','PHP','github.com','Open-source','2023-10-20 14:52:35','2023-10-20 14:52:35');
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('owners',3);
INSERT INTO sqlite_sequence VALUES('projects',4);
COMMIT;