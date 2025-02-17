const express = require('express');
const app = express();
const demoApp = 'Demo App is up and running to port:';
const port = 3000;

app.get('/',(req, res) =>{
res.send('<h1>Express Demo App<h1> <h4>Message: Success<h4><p>Version 1.0</p>');
})

app.get('/products',(req, res) =>{
    res.send([
        {
            productId: '101',
            price: '2000'
        },
        {
            productId: '102',
            price: '3000'
        }
    ])
})

app.listen(port,()=>{
    console.log(demoApp.concat(port));
})