const express = require('express')
const { getAllAuthors, getAuthorWithNovelsAndGenresById } = require('./controllers/authors')
const { getAllGenres, getGenreWithAllNovelsAndAuthorsById } = require('./controllers/genres')
const { getAllNovelsWithAuthorsAndGenres, getNovelWithAuthorAndGenresById } = require('./controllers/novels')

const app = express()

app.get('/authors', getAllAuthors)

app.get('/authors/:id', getAuthorWithNovelsAndGenresById)

app.get('/genres', getAllGenres)

app.get('/genres/:id', getGenreWithAllNovelsAndAuthorsById)

app.get('/novels', getAllNovelsWithAuthorsAndGenres)

app.get('/novels/:id', getNovelWithAuthorAndGenresById)

app.listen(1928, () => {
  // eslint-disable-next-line no-console
  console.log('Listening on port 1928...')
})
