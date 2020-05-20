const Sequelize = require('sequelize')
const allConfigs = require('../config/sequelize')
const authorsModel = require('./authors')
const genresModel = require('./genres')
const novelsModel = require('./novels')
const novelsGenresModel = require('./novelsGenres')

const environment = process.env.NDOE_ENV || 'development'
const config = allConfigs[environment]

const connection = new Sequelize(config.database, config.username, config.password, {
  host: config.host, dialect: config.dialect
})


const authors = authorsModel(connection, Sequelize)
const genres = genresModel(connection, Sequelize)
const novels = novelsModel(connection, Sequelize, authors)
const novelsGenres = novelsGenresModel(connection, Sequelize, novels, genres)

novels.belongsTo(authors)
authors.hasMany(novels)

genres.belongsToMany(novels, { through: novelsGenres })
novels.belongsToMany(genres, { through: novelsGenres })

module.exports = {
  Op: Sequelize.Op,
  authors,
  genres,
  novels,
  novelsGenres
}
