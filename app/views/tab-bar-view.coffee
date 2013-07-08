View = require 'views/base/view'
template = require 'views/templates/tab-bar'

module.exports = class TabBarView extends View
  initialize: ->
    super
    @delegate 'click', '.js-tab-link', @activate
    @render()
  autoRender: yes
  template: template
  region: 'tab-bar'
  activate: (e) =>
    e.preventDefault()
    @$('.js-tab-link').each (index, element) ->
      $(element).removeClass('active')
    $(e.target).closest('.js-tab-link').addClass('active')
    $('.tab-content').each  (index, element) ->
      $(element).removeClass('active')
    $($(e.target).data('tag-content')).addClass('active')