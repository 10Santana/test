const Sequelize = require ('Sequelize')
const sequelize = new Sequelize('AILTONAPP','root', 'Ailton@25', {
host: "localhost",
dialect: 'mysql'
})

sequelize.authenticate().then(function(){
   console.log("conectado com sucesso")
   }).catch(function(erro){
   console.log("falha ao se conectar:"+erro)
   })
