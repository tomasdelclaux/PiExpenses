const express = require('express')
const piExpense = express()
const port = 3000

piExpense.get('/', (req, res) => { 
    res.send("Hello World")
    console.log("Hello World example")})

piExpense.listen(port, ()=> console.log("Example PiExpenses"))