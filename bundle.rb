require 'ruble'

bundle 'Backbone CoffeeScript' do |bundle|
  bundle.author = 'Dr Nic Williams, John Wang and Nowhere Man'
  bundle.contact_email_rot_13 = 'wnfuxranf@tznvy.pbz'
  bundle.description =  <<END
Backbone ruble ported from Unofficial Backbone Textmate bundle and converted in CoffeeScript.
Source: https://github.com/jwang/Backbone.tmbundle
END

  # Fallback to use our text editor if coffeescript editor isn't available
  bundle.file_types['source.coffee.backbone'] = '*.coffee', 'Cakefile'

  bundle.menu 'Backbone CoffeeScript' do |main_menu|
    main_menu.command 'model'
    main_menu.command 'collection'
    main_menu.command 'view'
    main_menu.command 'itemview'
    main_menu.command 'get'
    main_menu.command 'set'
    main_menu.command 'el append'
  end
end