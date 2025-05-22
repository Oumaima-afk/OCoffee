import { Router } from "express";
import { mainController } from '../controllers/main.controller.js';
import { catalogController } from '../controllers/catalog.controller.js';
import { boutiqueController } from "../controllers/boutique.controller.js";

export const mainRouter = Router();

// mainRouter.get('/', mainController.homePage);

mainRouter.get('/', mainController.index);

mainRouter.get('/catalog', catalogController.catalog);

mainRouter.get('/boutique', boutiqueController.boutique);

