@Movie = React.createClass
    render: ->
      React.DOM.tr null,
        React.DOM.td null, @props.movie.publishdate
        React.DOM.td null, @props.movie.title
        React.DOM.td null, @props.movie.content
        React.DOM.td null, ratingFormat(@props.movie.rating)
