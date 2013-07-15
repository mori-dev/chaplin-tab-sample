View = require 'views/base/view'
template = require 'views/templates/tab-bar'

module.exports = class TabBarView extends View
  initialize: ->
    @delegate 'click', '.js-tab-link', @activate
  autoRender: yes
  template: template
  region: 'tab-bar'
  id: 'tab-bar'
  activate: (event) ->
    event.preventDefault()
    @$('.js-tab-link').map -> $(@).removeClass 'active'
    $(@).closest('.js-tab-link').addClass 'active'
    @publishEvent 'clickTabBar', event
