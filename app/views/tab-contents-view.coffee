View = require 'views/base/view'
template = require 'views/templates/tab-contents'

module.exports = class TabContentsView extends View
  autoRender: yes
  template: template
  region: 'tab-contents'
  id: 'tab-contents'
  initialize: -> @subscribeEvent 'clickTabBar', @updateTabContents
  updateTabContents: (event) ->
    @$('.tab-content').map -> $(@).removeClass 'active'
    $($(event.target).data('tag-content')).addClass 'active'
