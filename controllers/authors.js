const models = require('../models')

const getAllAuthors = async (request, response) => {
  const authors = await models.authors.findAll()

  return response.send(authors)
}

const getAuthorWithNovelsAndGenresByidentifier = async (request, response) => {
  const { identifier } = request.params

  const authorNovelGenres = await models.authors.findOne({
    include: [{
      model: models.novels,
      include: [{ model: models.genres }]
    }],
    where: {
      [models.Op.or]: [
        { id: { [models.Op.like]: `%${identifier}%` } },
        { nameLast: { [models.Op.like]: `%${identifier}%` } },
      ],
    }
  })



  return authorNovelGenres
    ? response.send(authorNovelGenres)
    : response.sendStatus(404)
}

module.exports = { getAllAuthors, getAuthorWithNovelsAndGenresByidentifier }
