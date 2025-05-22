import { coffeeDataMapper } from "../datamappers/coffee.datamapper.js";

export const mainController = {

    error404(_, res) {
        res.status(404).render('error', {statusCode: 404, message: 'Page not found'});
    },

    async index(req,res){
        const threeCoffees = await coffeeDataMapper.getThreeCoffees();
        res.render('home', {threeCoffees});
    },

}