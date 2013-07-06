View = require 'views/base/view'
template = require 'views/templates/tab-bar'

module.exports = class TabBarView extends View
  autoRender: yes
  template: template
  region: 'tab-bar'
