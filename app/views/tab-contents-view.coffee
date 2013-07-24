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
    { id: @id, name: @name, address: @address }
  activate: =>
    # $('.tab-content').removeClass 'active'
    @$el.addClass 'active'

  refreshTabContents: ->
    @$el.removeClass 'active'
    # $('.tab-content').removeClass 'active'
    # alert "updateTabContents"
    # @$el.removeClass 'active'
    # $($(event.target).data('tab-content')).addClass 'active'
