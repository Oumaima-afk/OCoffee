import { Router } from "express";
import { mainController } from '../controllers/main.controller.js';
import { catalogController } from '../controllers/catalog.controller.js';

export const mainRouter = Router();

mainRouter.get('/', mainController.homePage);

mainRouter.get('/catalog', catalogController.catalog);
