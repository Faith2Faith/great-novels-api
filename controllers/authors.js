const models = require('../models')

  const getAllAuthors = async (request, response) => {
   const authors = await models.authors.findAll()

    return response.send(authors)
 }

  const getAuthorWithNovelsAndGenresById = async (request, response) => {
   const { id } = request.params

    const authorNovelGenres = await models.authors.findOne({
     where: { id },
     include: [{
       model: models.novels,
       include: [{ model: models.genres }]
     }]
   })

    return authorNovelGenres
     ? response.send(authorNovelGenres)
     : response.sendStatus(404)
 }

  module.exports = { getAllAuthors, getAuthorWithNovelsAndGenresById }