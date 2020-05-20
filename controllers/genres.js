const models = require('../models')

const getAllGenres = async (request, response) => {
  const genres = await models.genres.findAll()

  return response.send(genres)
}

const getGenreWithAllNovelsAndAuthorsById = async (request, response) => {
  const { id } = request.params

  const genreNovelsAuthors = await models.genres.findOne({
    where: { id },
    include: [{
      model: models.novels,
      include: [{ model: models.authors }]
    }]
  })

  return genreNovelsAuthors
    ? response.send(genreNovelsAuthors)
    : response.sendStatus(404)
}

module.exports = { getAllGenres, getGenreWithAllNovelsAndAuthorsById }
