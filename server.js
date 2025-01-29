/* ******************************************
 * This is the application server
 * ******************************************/
const express = require("express")
const app = express()
/* ***********************
 * Require Statements
 *************************/
const expressLayouts = require("express-ejs-layouts")
const env = require("dotenv").config()
const static = require("./routes/static")
const baseController = require("./controllers/baseController")
const inventoryRoute = require("./routes/inventoryRoute")

/* ***********************
 * View Engine and Templates
 *************************/
app.set("view engine", "ejs")
app.use(expressLayouts)
app.set("layout", "./layouts/layout") // not at views root

/* ***********************
 * Static Files Middleware
 *************************/
// Serve static files from the public folder
app.use(express.static("public"))

/* ***********************
 * Routes
 *************************/
app.use(static)

// Index route
app.get("/", baseController.buildHome) 
app.use("/inv", inventoryRoute)

/* ******************************************
 * Server host name and port
 * ***************************************** */
const HOST = 'localhost'
const PORT = 5500

/* ***********************
* Log statement to confirm server operation
* *********************** */
app.listen(PORT, () => {
console.log(`trial app listening on ${HOST}:${PORT}`)
})