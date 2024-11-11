const express = require("express");
const helmet = require("helmet");

const app = express();
const port = 3000;

// root
app.get('/', async (req, res)=>{
    res.status(200).send(`
        <h1>Papelito!</h1>
        <p>Take one, pay your dues</p>
        `)
})

// now we start the server
app.listen(port, () => {
  console.log(`Server listening on port ${port}`);
});
