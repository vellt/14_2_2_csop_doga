const express= require('express');
const mysql= require('mysql');
const app= express();

app.use(express.json());

const host='localhost';
const port=3000;

let connection= mysql.createConnection({
    host:host,
    user:'root',
    password:'',
    database: 'taxi'
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
    const id= req.body.id;
    console.log(id);
    connection.query('DELETE FROM eloadas WHERE id=?',[id], (err, results)=>{
        if(err){
            console.log(err);
            res.send("hiba");
        }else{
            console.log(results);
            res.send("Sikeres törlés!");
        }
    });
});

app.listen(port, host, ()=>{
    console.log(`IP: http://${host}:${port}`);
});