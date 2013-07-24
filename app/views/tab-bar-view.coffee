View = require 'views/base/view'
template = require 'views/templates/tab-bar'

module.exports = class TabBarView extends View
  initialize: (attr) ->
    @delegate 'click', '.js-tab-link', @activate
    @tab_contents_view = attr.tab_contents_view
    @tab_name = attr.tab_name
    @subscribeEvent 'clickTabBar', @refreshTabBar
  autoRender: yes
  template: template
  region: 'tab-bar'
  activate: (event) ->
    event.preventDefault()
    @publishEvent 'clickTabBar'
    @$('.js-tab-link').addClass 'active'
    @tab_contents_view.activate()
  getTemplateData: -> { tab_name: @tab_name }
  refreshTabBar: -> @$('.js-tab-link').removeClass 'active'