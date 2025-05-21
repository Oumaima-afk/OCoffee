import { coffeeDataMapper } from "../datamappers/coffee.datamapper.js";
import { countryDataMapper } from "../datamappers/country.datamapper.js";

export const catalogController = {

    error404: (_, res) => {
        res.status(404).render('error', {statusCode: 404, message: 'Page not found'});
    },

    async catalog(req,res){
        try {
            const allCoffees = await coffeeDataMapper.getAll();

            for (const coffee of allCoffees) {
                const country = await countryDataMapper.getById(coffee.country_id);
                coffee.country = country;
            }
            
            res.render('catalog', {allCoffees});
        } catch (error) {
            console.error(error);
            res.status(500).send('Erreur serveur');
        }
    },

}