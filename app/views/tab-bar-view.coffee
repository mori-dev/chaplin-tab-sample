View = require 'views/base/view'
template = require 'views/templates/tab-bar'

module.exports = class TabBarView extends View
  autoRender: yes
  template: template
  region: 'tab-bar'
  render: ->
    @delegate 'click', '.js-tab-link', @activate
    super
  activate: (e) =>
    e.preventDefault()
    @$('.js-tab-link').each (index, element) ->
      $(element).removeClass('active')
    $(e.target).closest('.js-tab-link').addClass('active')
    $('.tab-content').each  (index, element) ->
      $(element).removeClass('active')
    $($(e.target).data('tag-content')).addClass('active')