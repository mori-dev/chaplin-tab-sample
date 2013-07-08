View = require 'views/base/view'
template = require 'views/templates/tab'
TabBarView = require 'views/tab-bar-view'
TabContentsView = require 'views/tab-contents-view'

module.exports = class TabView extends View
  initialize: ->
    @registerRegion '#tab-bar-container', 'tab-bar'
    @registerRegion '#tab-contents-container', 'tab-contents'
    @tab_bar_view = new TabBarView
    @tab_contents_view = new TabContentsView
  autoRender: yes
  template: template
  region: 'tab'
  render: ->
    super
    @tab_bar_view.render()
    @tab_contents_view.render()
