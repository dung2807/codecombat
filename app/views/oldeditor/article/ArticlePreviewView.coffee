require('app/styles/oldeditor/article/preview.sass')
RootView = require 'views/core/RootView'
template = require 'templates/oldeditor/article/preview'

require 'lib/game-libraries'

module.exports = class ArticlePreviewView extends RootView
  id: 'editor-article-preview-view'
  template: template
