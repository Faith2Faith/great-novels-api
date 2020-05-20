const express = require('express')
const { getAllAuthors, getAuthorWithNovelsAndGenresByidentifier } = require('./controllers/authors')
const { getAllGenres, getGenreWithAllNovelsAndAuthorsById } = require('./controllers/genres')
const { getAllNovelsWithAuthorsAndGenres, getNovelWithAuthorAndGenresByIdentifier } = require('./controllers/novels')

const app = express()

app.get('/authors', getAllAuthors)

app.get('/authors/:identifier', getAuthorWithNovelsAndGenresByidentifier)

app.get('/genres', getAllGenres)

app.get('/genres/:id', getGenreWithAllNovelsAndAuthorsById)

app.get('/novels', getAllNovelsWithAuthorsAndGenres)

app.get('/novels/:identifier', getNovelWithAuthorAndGenresByIdentifier)

app.listen(1928, () => {
  // eslint-disable-next-line no-console
  console.log('Listening on port 1928...')
})
