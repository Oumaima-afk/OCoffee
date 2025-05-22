import { coffeeDataMapper} from "../datamappers/coffee.datamapper.js";
import { countryDataMapper} from "../datamappers/country.datamapper.js";

export const coffeeController = {

    error404(_, res) {
        res.status(404).render('error', {statusCode: 404, message: 'Page not found'});
    },

    async selectedCoffee(req, res, next) {
        
        const coffeeId = req.params.id;
        if (isNaN(coffeeId)) {
            return next();
        }

        const coffeeCard = await coffeeDataMapper.getById(coffeeId);
        if (!coffeeCard) {
            return next();
        }

        const country = await countryDataMapper.getById(coffeeCard.country_id);
        coffeeCard.country = country;

        const characteristics = await coffeeDataMapper.getByCoffeeId(coffeeId);

        res.render('product', {coffeeCard, characteristics})
    },

}