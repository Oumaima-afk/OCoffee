# Cahier des charges

## Analyse de la demande

"Pour simplifier l'intégration de données par notre équipe, nous souhaitons une séparation en 3 entités avec des relations dans la base de données :

- Cafés
- Pays
- Caractéristiques"

=> On doit mettre en place une bdd avec ces 3 entités et faire en sorte qu'elles soient reliées entre elles.

### MCD (Modèle Conceptuel des Données)

![image](../mcd-ocoffee.png)

Chaque café appartient à un seul pays.

Chaque café peut avoir plusieurs caractéristiques, et chaque caractéristiques peut s'appliquer à plusieurs cafés.

### MLD (Modèle Logique de Données)

![image](../mld-ocoffee.png)

### MPD (Modèle Physique de Données)

```SQL
CREATE TABLE "country" (
    "country_id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "name" TEXT
);

CREATE TABLE "characteristic" (
    "characteristic_id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "name" TEXT
);
CREATE TABLE "coffee" (
    "coffee_id" INT PRIMARY KEY,
    "name" TEXT ,
    "description" TEXT,
    "price" NUMERIC,
    "country_id" INT REFERENCES "country"("id"),
    "in_stock" TEXT,
);

CREATE TABLE "coffee_characteristic"( 
  "coffee_id" INT NOT NULL REFERENCES "coffee"("id"), 
  "characteristic_id" INT NOT NULL REFERENCES "characteristic"("id"), 
  PRIMARY KEY ("coffee_id", "characteristic_id") 
);
```