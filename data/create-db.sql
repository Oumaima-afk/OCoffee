-- créer les tables

DROP TABLE IF EXISTS "coffee_characteristic", "country", "characteristic", "coffee";

CREATE TABLE "country" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "name" TEXT
);

CREATE TABLE "characteristic" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "name" TEXT
);

CREATE TABLE "coffee" (
    "id" INT PRIMARY KEY,
    "name" TEXT ,
    "description" TEXT,
    "price" NUMERIC,
    "country_id" INT REFERENCES "country"("id"),
    "in_stock" TEXT
);

CREATE TABLE "coffee_characteristic"( 
  "coffee_id" INT NOT NULL REFERENCES "coffee"("id"), 
  "characteristic_id" INT NOT NULL REFERENCES "characteristic"("id"), 
  PRIMARY KEY ("coffee_id", "characteristic_id") 
);

-- insertion des données dans les tables
INSERT INTO "country"("name") VALUES 
('Italie'),
('Colombie'),
('Ethiopie'),
('Brésil'),
('Guatemala'),
('Kenya'),
('Indonésie'),
('Costa Rica'),
('Vietnam'),
('Tanzanie'),
('Jamaïque'),
('Rwanda'),
('Panama'),
('Pérou'),
('Hawaï'),
('Nicaragua');

INSERT INTO "characteristic"("name") VALUES 
('Corsé'),
('Epicé'),
('Acide'),
('Doux'),
('Fruité'),
('Chocolaté');

INSERT INTO "coffee"("id", "name", "description", "price", "in_stock", "country_id") VALUES
(100955890, 'Espresso', 'Café fort et concentré préparé en faisant passer de l''eau chaude à travers du café finement moulu.', 20.99, 'oui', 1),
(100955894, 'Columbian', 'Café moyennement corsé avec une acidité vive et une saveur riche.', 18.75, 'oui', 2),
(105589090, 'Ethiopian Yirgacheffe', 'Réputé pour son arôme floral, son acidité vive et ses notes de saveur citronnée.', 22.50, 'oui', 3),
(134009550, 'Brazilian Santos', 'Café doux et lisse avec un profil de saveur de noisette.', 17.80, 'oui', 4),
(256505890, 'Guatemalan Antigua', 'Café corsé avec des nuances chocolatées et une pointe d''épice.', 21.25, 'oui', 5),
(295432730, 'Kenyan AA', 'Café complexe connu pour son acidité rappelant le vin et ses saveurs fruitées.', 23.70, 'oui', 6),
(302932754, 'Sumatra Mandheling', 'Café profond et terreux avec un corps lourd et une faible acidité.', 19.95, 'oui', 7),
(327302954, 'Costa Rican Tarrazu', 'Café vif et net avec une finition propre et une acidité vive.', 24.50, 'oui', 8),
(549549090, 'Vietnamese Robusta', 'Café audacieux et fort avec une saveur robuste distinctive.', 16.75, 'oui', 9),
(582954954, 'Tanzanian Peaberry', 'Acidité vive avec un profil de saveur rappelant le vin et un corps moyen.', 26.80, 'oui', 10),
(589100954, 'Jamaican Blue Mountain', 'Reconnu pour sa saveur douce, son acidité vive et son absence d''amertume.', 39.25, 'oui', 11),
(650753915, 'Rwandan Bourbon', 'Café avec des notes florales prononcées, une acidité vive et un corps moyen.', 21.90, 'oui', 12),
(795501340, 'Panamanian Geisha', 'Café rare aux arômes floraux complexes, une acidité brillante et un profil de saveur distinctif.', 42.00, 'oui', 13),
(954589100, 'Peruvian Arabica', 'Café équilibré avec des notes de chocolat, une acidité modérée et un corps velouté.', 19.40, 'non', 14),
(958090105, 'Hawaiian Kona', 'Café rare au goût riche, une acidité douce et des nuances subtiles.', 55.75, 'non', 15),
(691550753, 'Nicaraguan Maragogipe', 'Café avec des notes de fruits, une acidité vive et un corps plein.', 28.60, 'non', 16);

INSERT INTO "coffee_characteristic"("coffee_id", "characteristic_id") VALUES
(100955890, 1), (100955890, 2),
(100955894, 3),
(105589090, 4), (105589090, 5),
(134009550, 4),
(256505890, 1),
(295432730, 4), (295432730, 3),
(302932754, 1),
(327302954, 3),
(549549090, 2),
(582954954, 5), (582954954, 1),
(589100954, 4),
(650753915, 5),
(795501340, 5),
(954589100, 1), (954589100, 6),
(958090105, 4),
(691550753, 1), (691550753, 5);