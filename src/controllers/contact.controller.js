export const contactController = {
  error404(_, res) {
    res
      .status(404)
      .render("error", { statusCode: 404, message: "Page not found" });
  },

  contact(req, res) {
    res.render("contact");
  },
};
