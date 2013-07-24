View = require 'views/base/view'
template = require 'views/templates/tab-bar'

module.exports = class TabBarView extends View
  initialize: (attr) ->
    @delegate 'click', '.js-tab-link', @activate
    @data_tab_content = attr.data_tab_content
    @tab_name = attr.tab_name
  autoRender: yes
  template: template
  region: 'tab-bar'
  activate: (event) ->
    event.preventDefault()
    $('.js-tab-link').removeClass 'active'
    @$el.closest('.js-tab-link').addClass 'active'
    @publishEvent 'clickTabBar', event
  getTemplateData: ->
    { data_tab_content: @data_tab_content, tab_name: @tab_name }
