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

    @tab_contents_view1 = new TabContentsView
      id: "tab-content1"
      name: "taro"
      address: "tokyo"
    @tab_contents_view2 = new TabContentsView
      id: "tab-content2"
      name: "jiro"
      address: "kyoto"
    @tab_contents_view3 = new TabContentsView
      id: "tab-content3"
      name: "saburo"
      address: "hokkaido"

    @tab_bar_view1 = new TabBarView
      tab_contents_view: @tab_contents_view1
      tab_name: "link-1"
    @tab_bar_view2 = new TabBarView
      tab_contents_view: @tab_contents_view2
      tab_name: "link-2"
    @tab_bar_view3 = new TabBarView
      tab_contents_view: @tab_contents_view3
      tab_name: "link-3"

    @