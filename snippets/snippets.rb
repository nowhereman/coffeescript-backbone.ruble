snippet "model" do |snippet|
  snippet.trigger = "model"
  snippet.expansion = "class ${1:Item} extends Backbone.Model
  defaults:
    $0
"
end

snippet "collection" do |snippet|
  snippet.trigger = "coll"
  snippet.expansion = "class ${1:List} extends Backbone.Collection
  model: ${2:Item}
"
end

snippet "view" do |snippet|
  snippet.trigger = "view"
  snippet.expansion = "class ${1:Item}View extends Backbone.View
  # attaches `@el` to an existing element.
  el: \\$('${2:body}')
  
  events:
    # 'click button#add': 'callback'

  initialize: ->
    _.bindAll(@, 'render')
    @render() # not all views are self-rendering. This one is.

  render: =>
    @\\$(el).append('${3:<ul> <li>hello world<\\/li> <\\/ul>}')
    @
"
end

snippet "itemview" do |snippet|
  snippet.trigger = "viewi"
  snippet.expansion = "class ${1:Item}View extends Backbone.View
  tagName: '${2:li}'
  
  events:
    # 'click button#add': 'callback'
  
  initialize: ->
    _.bindAll(@, 'render')
  
  render: ->
    @.\\$(el)
    @
"
end

snippet "get" do |snippet|
  snippet.trigger = "get"
  snippet.expansion = "get('${1:property}')"
end

snippet "set" do |snippet|
  snippet.trigger = "set"
  snippet.expansion = "set(${1:property}: ${2:value})"
end

snippet "el append" do |snippet|
  snippet.trigger = "app"
  snippet.expansion = "\\$('${1:target}', @el).append('$0')"
end