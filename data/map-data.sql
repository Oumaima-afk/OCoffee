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
