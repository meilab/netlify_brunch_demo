module.exports = {
  config: {
    paths: {
      watched: ["static"],
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
          after: ["static/css/app.css"] // concat app.css last
        }
      }
    },
    conventions: {
      // This option sets where we should place non-css and non-js assets in.
      // By default, we set this to "/static/assets". Files in this directory
      // will be copied to `paths.public`, which is "priv/static" by default.
      assets: /^(static\/assets)/
    },
    modules: {
      autoRequire: {
        "js/app.js": ["static/js/app"]
      }
    },
    npm: {
      enabled: true
    }
  }
};
