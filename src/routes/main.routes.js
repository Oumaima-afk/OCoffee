import { Router } from "express";
import { mainController } from "../controllers/main.controller.js";
import { catalogController } from "../controllers/catalog.controller.js";
import { boutiqueController } from "../controllers/boutique.controller.js";
import { coffeeController } from "../controllers/coffee.controller.js";
import { contactController } from "../controllers/contact.controller.js";

export const mainRouter = Router();

mainRouter.get("/", mainController.index);

mainRouter.get("/catalog", catalogController.catalog);

mainRouter.get("/boutique", boutiqueController.boutique);

mainRouter.get("/coffee/:id", coffeeController.selectedCoffee);

mainRouter.get("/contact", contactController.contact);

mainRouter.use(mainController.error404);
