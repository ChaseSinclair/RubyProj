@MovieForm = React.createClass
    getInitialState: ->
      title: ''
      publishdate: ''
      content: ''
      rating: ''
    handleSubmit: (e) ->
      e.preventDefault()
      $.post '', { movie: @state }, (data) =>
        @props.handleNewMovie data
        @setState @getInitialState()
      , 'JSON'
    render: ->
      React.DOM.form
        className: 'form-inline'
        onSubmit: @handleSubmit
        React.DOM.div
          className: 'form-group'
          React.DOM.input
            type: 'text'
            className: 'form-control'
            placeholder: 'Publish Date'
            name: 'publishdate'
            value: @state.publishdate
            onChange: @handleChange
        React.DOM.div
          className: 'form-group'
          React.DOM.input
            type: 'text'
            className: 'form-control'
            placeholder: 'Title'
            name: 'title'
            value: @state.title
            onChange: @handleChange
        React.DOM.div
          className: 'form-group'
          React.DOM.input
            type: 'text'
            className: 'form-control'
            placeholder: 'Content'
            name: 'content'
            value: @state.content
            onChange: @handleChange
        React.DOM.div
          className: 'form-group'
          React.DOM.input
            type: 'number'
            className: 'form-control'
            placeholder: 'Rating'
            name: 'rating'
            value: @state.rating
            onChange: @handleChange
        React.DOM.button
          type: 'submit'
          className: 'btn btn-primary'
          disabled: !@valid()
          'Post Review'
    valid: ->
      @state.title && @state.publishdate && @state.rating && @state.content
    handleChange: (e) ->
      name = e.target.name
      @setState "#{ name }": e.target.value
