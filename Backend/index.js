const express = require("express");
const cors = require("cors");
const morgan = require("morgan");
const cookieParser = require("cookie-parser");
const { registerAllRoutes } = require('./Routes/index.js')
const PORT = process.env.PORT || 3000;

async function start() {
  const app = express();
  app.use(cors());
  app.use(express.json());
  app.use(cookieParser());

  app.set("view engine", "ejs");
  app.set("views", `${__dirname}/../Frontend/public/`);

  app.use(morgan());

  // Routes
  await registerAllRoutes(app);

  app.listen(PORT, () => {
    console.log(`Backend listening on port ${PORT}`);
  });
}

start();
