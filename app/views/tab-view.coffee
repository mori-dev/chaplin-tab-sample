View = require 'views/base/view'
template = require 'views/templates/tab'
TabBarView = require 'views/tab-bar-view'
TabContentsView = require 'views/tab-contents-view'

module.exports = class TabView extends View
  autoRender: yes
  template: template
  region: 'tab'
  regions:
    '#tab-bar-container': 'tab-bar'
    '#tab-contents-container': 'tab-contents'
  id: 'js-tabview'
  render: ->
    super
    new TabBarView
    new TabContentsView
