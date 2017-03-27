@Movie = React.createClass
    getInitialState: ->
      edit: false
    handleToggle: (e) ->
      e.preventDefault()
      @setState edit: !@state.edit
    handleDelete: (e) ->
      e.preventDefault()
      $.ajax
        method: 'DELETE'
        url: "/movies/#{ @props.movie.id }"
        dataType: 'JSON'
        success: () =>
          @props.handleDeleteMovie @props.movie
    handleEdit: (e) ->
      e.preventDefault()
      data =
        title: this.refs.title.value
        content: this.refs.content.value
        publishdate: this.refs.publishdate.value
        rating: this.refs.rating.value
      $.ajax
        method: 'PUT'
        url: "/movies/#{ @props.movie.id }"
        dataType: 'JSON'
        data:
          movie: data
        success: (data) =>
          @setState edit: false
          @props.handleEditMovie @props.movie, data
    render: ->
      if @state.edit
        @movieForm()
      else
        @movieRow()
    movieRow: ->
      React.DOM.tr null,
        React.DOM.td null, formatDate(@props.movie.publishdate)
        React.DOM.td null, @props.movie.title
        React.DOM.td null, @props.movie.content
        React.DOM.td null, ratingFormat(@props.movie.rating)
        React.DOM.td null,
          React.DOM.a
            className: 'btn btn-default'
            onClick: @handleToggle
            'Edit'
          React.DOM.a
            className: 'btn btn-danger'
            onClick: @handleDelete
            'Delete'
    movieForm: ->
      React.DOM.tr null,
        React.DOM.td null,
          React.DOM.input
            className: 'form-control'
            type: 'text'
            defaultValue: @props.movie.publishdate
            ref: 'publishdate'
        React.DOM.td null,
          React.DOM.input
            className: 'form-control'
            type: 'text'
            defaultValue: @props.movie.title
            ref: 'title'
        React.DOM.td null,
          React.DOM.input
            className: 'form-control'
            type: 'text'
            defaultValue: @props.movie.content
            ref: 'content'
        React.DOM.td null,
          React.DOM.input
            className: 'form-control'
            type: 'number'
            defaultValue: @props.movie.rating
            ref: 'rating'
        React.DOM.td null,
          React.DOM.a
            className: 'btn btn-default'
            onClick: @handleEdit
            'Update'
          React.DOM.a
            className: 'btn btn-danger'
            onClick: @handleToggle
            'Cancel'
