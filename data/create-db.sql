-- créer les tables

DROP TABLE IF EXISTS "coffee_characteristic", "coffee", "characteristic", "country";

CREATE TABLE "country" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "name" TEXT UNIQUE NOT NULL
);

CREATE TABLE "characteristic" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "name" TEXT UNIQUE NOT NULL
);

CREATE TABLE "coffee" (
    "id" INT PRIMARY KEY,
    "name" TEXT NOT NULL,
    "description" TEXT,
    "price" NUMERIC,
    "country_id" INT NOT NULL REFERENCES "country"("id"),
    "in_stock" BOOLEAN NOT NULL DEFAULT false
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
(100955890, 'Espresso', 'Café fort et concentré préparé en faisant passer de l''eau chaude à travers du café finement moulu.', 20.99, TRUE, 1),
(100955894, 'Columbian', 'Café moyennement corsé avec une acidité vive et une saveur riche.', 18.75, TRUE, 2),
(105589090, 'Ethiopian Yirgacheffe', 'Réputé pour son arôme floral, son acidité vive et ses notes de saveur citronnée.', 22.50, TRUE, 3),
(134009550, 'Brazilian Santos', 'Café doux et lisse avec un profil de saveur de noisette.', 17.80, TRUE, 4),
(256505890, 'Guatemalan Antigua', 'Café corsé avec des nuances chocolatées et une pointe d''épice.', 21.25, TRUE, 5),
(295432730, 'Kenyan AA', 'Café complexe connu pour son acidité rappelant le vin et ses saveurs fruitées.', 23.70, TRUE, 6),
(302932754, 'Sumatra Mandheling', 'Café profond et terreux avec un corps lourd et une faible acidité.', 19.95, TRUE, 7),
(327302954, 'Costa Rican Tarrazu', 'Café vif et net avec une finition propre et une acidité vive.', 24.50, TRUE, 8),
(549549090, 'Vietnamese Robusta', 'Café audacieux et fort avec une saveur robuste distinctive.', 16.75, TRUE, 9),
(582954954, 'Tanzanian Peaberry', 'Acidité vive avec un profil de saveur rappelant le vin et un corps moyen.', 26.80, TRUE, 10),
(589100954, 'Jamaican Blue Mountain', 'Reconnu pour sa saveur douce, son acidité vive et son absence d''amertume.', 39.25, TRUE, 11),
(650753915, 'Rwandan Bourbon', 'Café avec des notes florales prononcées, une acidité vive et un corps moyen.', 21.90, TRUE, 12),
(795501340, 'Panamanian Geisha', 'Café rare aux arômes floraux complexes, une acidité brillante et un profil de saveur distinctif.', 42.00, TRUE, 13),
(954589100, 'Peruvian Arabica', 'Café équilibré avec des notes de chocolat, une acidité modérée et un corps velouté.', 19.40, FALSE, 14),
(958090105, 'Hawaiian Kona', 'Café rare au goût riche, une acidité douce et des nuances subtiles.', 55.75, FALSE, 15),
(691550753, 'Nicaraguan Maragogipe', 'Café avec des notes de fruits, une acidité vive et un corps plein.', 28.60, FALSE, 16);

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

-- insertion des données pour la map
ALTER TABLE "country"
    ADD COLUMN "latitude" NUMERIC,
    ADD COLUMN "longitude" NUMERIC;

UPDATE "country" SET "latitude" = 41.8719, "longitude" = 12.5674 WHERE "name" = 'Italie';
UPDATE "country" SET "latitude" = 4.5709, "longitude" = -74.2973 WHERE "name" = 'Colombie';
UPDATE "country" SET "latitude" = 9.1450, "longitude" = 40.4897 WHERE "name" = 'Ethiopie';
UPDATE "country" SET "latitude" = -14.2350, "longitude" = -51.9253 WHERE "name" = 'Brésil';
UPDATE "country" SET "latitude" = 15.7835, "longitude" = -90.2308 WHERE "name" = 'Guatemala';
UPDATE "country" SET "latitude" = -1.2921, "longitude" = 36.8219 WHERE "name" = 'Kenya';
UPDATE "country" SET "latitude" = -0.7893, "longitude" = 113.9213 WHERE "name" = 'Indonésie';
UPDATE "country" SET "latitude" = 9.7489, "longitude" = -83.7534 WHERE "name" = 'Costa Rica';
UPDATE "country" SET "latitude" = 14.0583, "longitude" = 108.2772 WHERE "name" = 'Vietnam';
UPDATE "country" SET "latitude" = -6.3690, "longitude" = 34.8888 WHERE "name" = 'Tanzanie';
UPDATE "country" SET "latitude" = 18.1096, "longitude" = -77.2975 WHERE "name" = 'Jamaïque';
UPDATE "country" SET "latitude" = -1.9403, "longitude" = 29.8739 WHERE "name" = 'Rwanda';
UPDATE "country" SET "latitude" = 8.5380, "longitude" = -80.7821 WHERE "name" = 'Panama';
UPDATE "country" SET "latitude" = -9.1899, "longitude" = -75.0152 WHERE "name" = 'Pérou';
UPDATE "country" SET "latitude" = 19.8968, "longitude" = -155.5828 WHERE "name" = 'Hawaï';
UPDATE "country" SET "latitude" = 12.8654, "longitude" = -85.2072 WHERE "name" = 'Nicaragua';
