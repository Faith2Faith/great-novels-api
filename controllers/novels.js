const models = require('../models')

const getAllNovelsWithAuthorsAndGenres = async (request, response) => {
  const novels = await models.novels.findAll({
    include: [{
      model: models.authors
    }, { model: models.genres }]
  })

  return response.send(novels)
}

const getNovelWithAuthorAndGenresByIdentifier = async (request, response) => {
  const { identifier } = request.params

  const novelAuthorGenres = await models.novels.findOne({
    include: [{ model: models.authors }, { model: models.genres }],
    where: {
      [models.Op.or]: [
        { id: { [models.Op.like]: `%${identifier}%` } },
        { title: { [models.Op.like]: `%${identifier}%` } },
      ],
    }
  })

  return novelAuthorGenres
    ? response.send(novelAuthorGenres)
    : response.sendStatus(404)
}

module.exports = { getAllNovelsWithAuthorsAndGenres, getNovelWithAuthorAndGenresByIdentifier }
