import dotenv from "dotenv";
import pkg from "pg";

dotenv.config();
const { Client } = pkg;

const client = new Client({
  connectionString: process.env.DATABASE_URL,
  ssl: {
    rejectUnauthorized: false,
  },
});

await client.connect(); // Connexion unique au démarrage
console.log("🟢 Connexion à Neon réussie");

export default client;
