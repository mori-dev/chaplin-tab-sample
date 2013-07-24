View = require 'views/base/view'
template = require 'views/templates/tab-contents'

module.exports = class TabContentsView extends View
  initialize: (attr) ->
    @subscribeEvent 'clickTabBar', @updateTabContents
    @id = attr.id
    @name = attr.name
    @address = attr.address
  autoRender: yes
  template: template
  region: 'tab-contents'
  id: "#{@id}"
  className: -> "tab-content"
  updateTabContents: (event) ->
    @$el.removeClass 'active'
    $($(event.target).data('tab-content')).addClass 'active'
  getTemplateData: ->
    { id: @id, name: @name, address: @address }
