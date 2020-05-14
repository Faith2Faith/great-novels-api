const models = require('../models')

  const getAllNovelsWithAuthorsAndGenres = async (request, response) => {
   const novels = await models.novels.findAll({
     include: [{
       model: models.authors
     }, { model: models.genres }]
   })

    return response.send(novels)
 }

  const getNovelWithAuthorAndGenresById = async (request, response) => {
   const { id } = request.params

    const novelAuthorGenres = await models.novels.findOne({
     where: { id },
     include: [{ model: models.authors }, { model: models.genres }]
   })

    return novelAuthorGenres
     ? response.send(novelAuthorGenres)
     : response.sendStatus(404)
 }

  module.exports = { getAllNovelsWithAuthorsAndGenres, getNovelWithAuthorAndGenresById }
  