module.exports = {
  config: {
    files: {
      javascripts: {
        joinTo: "js/app.js"
      },
      stylesheets: {
        joinTo: "css/app.css",
        order: {
          after: ["app/css/app.css"] // concat app.css last
        }
      }
    }
  }
};
