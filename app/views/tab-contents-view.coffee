View = require 'views/base/view'
template = require 'views/templates/tab-contents'

module.exports = class TabContentsView extends View
  initialize: (attr) ->
    @id = attr.id
    @name = attr.name
    @address = attr.address
    @subscribeEvent 'clickTabBar', @refreshTabContents
  autoRender: yes
  template: template
  region: 'tab-contents'
  id: "#{@id}"
  className: -> "tab-content"
  getTemplateData: ->
    id: @id
    name: @name
    address: @address
  activate: ->
    @$el.addClass 'active'
  refreshTabContents: ->
    @$el.removeClass 'active'
