View = require 'views/base/view'
template = require 'views/templates/tab-contents'

module.exports = class TabContentsView extends View
  autoRender: yes
  template: template
  region: 'tab-contents'
