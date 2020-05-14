const Sequelize = require('sequelize')
const authorsModel = require('./authors')
const genresModel = require('./genres')
const novelsModel = require('./novels')
const novelsGenresModel = require('./novelsGenres')

const connection = new Sequelize('greatNovels', 'greatNovels', 'n0^3l$', {
  host: 'localhost', dialect: 'mysql'
})

const authors = authorsModel(connection, Sequelize)
const genres = genresModel(connection, Sequelize)
const novels = novelsModel(connection, Sequelize, authors)
const novelsGenres = novelsGenresModel(connection, Sequelize, novels, genres)

novels.belongsTo(authors)
authors.hasMany(novels)
// authors.hasMany(genres)

genres.belongsToMany(novels, { through: novelsGenres })
novels.belongsToMany(genres, { through: novelsGenres })

module.exports = {
  authors,
  genres,
  novels,
  novelsGenres
}
