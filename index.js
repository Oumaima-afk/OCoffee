import express from "express";
import { mainRouter } from "./src/routes/main.routes.js";
import client from "./src/db/neon.js";

const app = express();
const PORT = process.env.PORT || 3000;

app.set("view engine", "ejs");
app.set("views", "./src/views");

app.use(express.static("public"));

app.use(mainRouter);

app.listen(PORT, () => {
  console.log(`✅ Server is running on http://localhost:${PORT}`);
});

async function testQuery() {
  try {
    await client.connect();
    const res = await client.query("SELECT NOW()");
    console.log("🕒 Heure actuelle sur la BDD :", res.rows[0]);
  } catch (err) {
    console.error("❌ Erreur lors de la requête :", err);
  } finally {
    await client.end();
  }
}

testQuery();
