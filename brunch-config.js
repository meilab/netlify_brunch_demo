module.exports = {
  config: {
    paths: {
      watched: ["app"],
      // Where to compile files to
      public: "./public"
    },
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
    },
    npm: {
      enabled: true
    }
  }
};
