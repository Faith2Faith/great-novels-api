const novelGenres = (connection, Sequelize, genres, novels) => {
  return connection.define('novelsGenres', {
    genreId: { type: Sequelize.INTEGER, primaryKey: true, references: { model: genres, key: 'id' } },
    novelId: { type: Sequelize.INTEGER, primaryKey: true, references: { model: novels, key: 'id' } }
  }, {
    defaultScope: {
      attributes: { exlcude: ['deletedAt'] }
    }
  }, { paranoid: true })
}

module.exports = novelGenres
