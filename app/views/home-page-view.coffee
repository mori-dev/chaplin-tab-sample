template = require 'views/templates/home'
View = require 'views/base/view'
TabView = require 'views/tab-view'

module.exports = class HomePageView extends View
  autoRender: yes
  className: 'home-page'
  template: template
  regions:
    '#tab-container': 'tab'
  render: ->
    super
    (new TabView).render()
