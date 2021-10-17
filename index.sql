const Sequelize = require("sequelize");

const sequelize = new Sequelize('ailtonapp','root','Ailton@25',{
host: 'localhost',
dialect: 'mysql'
});

sequelize.authenticate().then(function(){
   console.log('conexao realizada com sucesso');
   })
    .catch (function(err){
   console.log('erro ao realizar a conexao com BD' + err);
});
