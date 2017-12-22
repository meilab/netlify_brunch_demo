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
    conventions: {
      // This option sets where we should place non-css and non-js assets in.
      // By default, we set this to "/static/assets". Files in this directory
      // will be copied to `paths.public`, which is "priv/static" by default.
      assets: /^(app\/assets)/
    },
    plugins: {
      babel: {
        // Do not use ES6 compiler in vendor code and elm code
        ignore: [/app\/vendor/, /elm.js$/]
      }
    },
    npm: {
      enabled: true
    }
  }
};
