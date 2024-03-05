const express = require('express');
const mysql = require('mysql');

let port=3000;
let host='localhost';

const app=express();
app.use(express.json());

const connection=mysql.createConnection({
    host:host,
    user:'root',
    password:'',
    database:'taxi'
});

app.get('/fuvarok', (req, res)=>{
    connection.query('SELECT * FROM fuvar', (err, results)=>{
        if(err){
            console.log(err);
            res.send("hiba");
        }else{
            console.log(results);
            res.send(results);
        }
    });
});

app.delete('/fuvarok', (req, res)=>{
    const id=req.body.id;
    console.log(id);
    connection.query('DELETE FROM fuvar WHERE id = ?', [id],(err, results)=>{
        if(err){
            console.log(err);
            res.send("Hiba");
        } else{
            console.log("Sikeres törlés");
            res.send("sikeres törlés")
        }
    })
});

app.listen(port, host,()=>{
    console.log(`IP: http://${host}:${port}`);
});