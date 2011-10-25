require 'ruble'

with_defaults :scope => "source.js.backbone" do |bundle|

  snippet "el.append" do |snippet|
    snippet.trigger = "app"
    snippet.expansion = "$('${2:target}', this.el).append(\"$0\");"
  end

  snippet "View" do |snippet|
    snippet.trigger = "view"
    snippet.expansion = "var ${2:Item}View = Backbone.View.extend({
  // attaches `this.el` to an existing element.
  el: $('${6:body}'),
  
  events: {
    // 'click button#add': 'callback'
  },
  
  initialize: function(){
    _.bindAll(this, 'render');
     this.render(); // not all views are self-rendering. This one is.
  },
  
  render: function(){
    $(this.el).append(\"${11:<ul> <li>hello world</li> </ul>}\");
  }
});
"
  end

  snippet "Model" do |snippet|
    snippet.trigger = "model"
    snippet.expansion = "var ${1:Item} = Backbone.Model.extend({
  defaults: {
    $0
  }
});
"
  end

  snippet "ItemView" do |snippet|
    snippet.trigger = "viewi"
    snippet.expansion = "var ${2:Item}View = Backbone.View.extend({
  tagName: '${6:li}', 
  
  events: {
    // 'click button#add': 'callback'
  },
  
  initialize: function(){
    _.bindAll(this, 'render');
  },
  
  render: function(){
    $(this.el);
    return this;
  }
});
"
  end

  snippet ".set" do |snippet|
    snippet.trigger = ".set"
    snippet.expansion = ".set({
  $0
})
"
  end

  snippet "Collection" do |snippet|
    snippet.trigger = "coll"
    snippet.expansion = "var ${1:List} = Backbone.Collection.extend({
  model: ${2:Item}
});
"
  end

  snippet ".get" do |snippet|
    snippet.trigger = ".get"
    snippet.expansion = ".get('${2:property}')"
  end

end