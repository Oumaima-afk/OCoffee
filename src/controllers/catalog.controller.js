export const catalogController = {

    error404: (_, res) => {
        res.status(404).render('error', {statusCode: 404, message: 'Page not found'});
    },

    catalog(_, res) {
        res.render('catalog')
    },

}