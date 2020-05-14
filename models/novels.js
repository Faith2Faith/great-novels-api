const novels = (connection, Sequelize, authors) => {
  return connection.define('novels', {
    id: { type: Sequelize.INTEGER, autoIncrement: true, primaryKey: true },
    title: { type: Sequelize.STRING },
    authorId: { type: Sequelize.INTEGER, references: { model: authors, key: 'id' } },
  }, {
    defaultScope: {
      attributes: { exlcude: ['deletedAt'] }
    }
  }, { paranoid: true })
}

module.exports = novels
