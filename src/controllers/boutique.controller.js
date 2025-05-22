export const boutiqueController = {

    error404(_, res) {
        res.status(404).render('error', {statusCode: 404, message: 'Page not found'});
    },

    boutique(_, res) {
        res.render('boutique')
    },

}