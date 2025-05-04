const fs = require("fs/promises");
const path = require("path");

// Dynamically import all route files in this directory
exports.registerAllRoutes = async (app) => {
  const files = await fs.readdir(__dirname);

  await Promise.all(
    files
      .filter((file) => file.endsWith('.route.js'))
      .map(async (file) => {
        const routePath = path.join(__dirname, file);
        const routeFile = require(routePath);
        console.log(routePath);
        if (typeof routeFile === "function") {
          routeFile(app);
          console.log(`Route ${file} registered`);
        } else {
          console.warn(`Skipping ${file}: not a function`);
        }
      })
  );
}
