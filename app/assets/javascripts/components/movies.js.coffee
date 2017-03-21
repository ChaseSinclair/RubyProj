@Movies = React.createClass
  getInitialState: ->
    movies: @props.data
  getDefaultProps: ->
    movies: []
  addMovie: (movie) ->
    movies = @state.movies.slice()
    movies.push movie
    @setState movies: movies
  render: ->
    React.DOM.div
      className: 'movies'
      React.DOM.h2
        className: 'title'
        'Reviews'
      React.createElement MovieForm, handleNewMovie: @addMovie
      React.DOM.table
        className: 'table table-bordered'
        React.DOM.thead null,
          React.DOM.tr null,
            React.DOM.th null, 'Publish Date'
            React.DOM.th null, 'Title'
            React.DOM.th null, 'Content'
            React.DOM.th null, 'Rating'
        React.DOM.tbody null,
          for movie in @state.movies
            React.createElement Movie, key: movie.id, movie: movie
