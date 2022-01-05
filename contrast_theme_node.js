var branch = process.argv[2];
var branchurl = "https://${branch}.contrast-theme.pages.dev";
const Crittr = require("crittr");

Crittr({
  urls: branchurl,
  device: {
    width: 600,
    height: 1000,
  },
})
  .then(({ critical, rest }) => {
    console.log(critical);
    const fs = require("fs");
    fs.writeFile("assets/css/generated-critical.css", critical, (err) => {
      if (err) {
        console.error(err);
        return;
      }
    });
  })
  .catch((err) => {
    console.error(err);
  });
