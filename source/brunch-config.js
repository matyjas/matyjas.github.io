module.exports = {
  config: {
    paths: {
      public: "..",
      watched: ["app"]
    },
    files: {
      javascripts: {
        joinTo: "js/app.js"
      },
      stylesheets: {
        joinTo: "css/app.css"
      }
    },
    plugins: {
      elmBrunch: {
        mainModules: ["app/elm/Main.elm"],
        outputFolder: "../js/"
      },
      sass: {
        mode: "native"
      }
    }
  }
};
