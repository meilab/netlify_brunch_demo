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
          after: ["static/css/app.css"] // concat app.css last
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
        ignore: [/static\/vendor/, /elm.js$/]
      },
      elmBrunch: {
        mainModules: ["src/Main.elm"],
        outputFolder: "static/js/",
        outputFile: "elm.js",
        makeParameters : ['--debug','--warn']
      }
    },
    modules: {
      autoRequire: {
        "js/app.js": ["app/js/app"]
      }
    },
    npm: {
      enabled: true
    },
    overrides: {
      production: {
        plugins: {
          elmBrunch: {
            makeParameters: []
          }
        }
      }
    }
  }
};
