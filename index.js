const express = require("express");
const app = express();
const handlebars = require('express-handlebars');

//config
  //template Engine
  app.engine("handlebars", handlebars({defaultlayout: "main"}))
  app.set("view engine", "handlebars")
  // Conexão com banco de dados MySql
  const Sequelize = require('sequelize');
  const sequelize = new Sequelize('ailtonapp','root','Ailton@25',{
  host: "localhost",
  dialect: 'mysql'
});
  //Rotas

  app.get('/cad',function(req, res){
    res.send('ROTA DE CADASTRO DE POSTS')
  })

 app.listen(8081, function(){
  console.log("servidor Rodando na url http://localhost:8081");
});
