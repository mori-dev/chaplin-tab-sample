View = require 'views/base/view'
template = require 'views/templates/tab-bar'

module.exports = class TabBarView extends View
  initialize: (attr) ->
    @delegate 'click', @activate
    @tab_contents_view = attr.tab_contents_view
    @tab_name = attr.tab_name
    @subscribeEvent 'clickTabBar', @refreshTabBar
  autoRender: yes
  template: template
  region: 'tab-bar'
  className: 'js-tab-link'
  activate: (event) ->
    event.preventDefault()
    @publishEvent 'clickTabBar'
    @$el.addClass 'active'
    @tab_contents_view.activate()
  getTemplateData: -> { tab_name: @tab_name }
  refreshTabBar: -> @$el.removeClass 'active'