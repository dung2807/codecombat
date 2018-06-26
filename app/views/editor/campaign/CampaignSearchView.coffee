SearchView = require 'views/common/SearchView'
ForkModal = require 'views/editor/ForkModal'

module.exports = class CampaignSearchView extends SearchView
  id: 'editor-campaign-home-view'
  modelLabel: 'Campaign'
  model: require 'models/Campaign'
  modelURL: '/db/campaign'
  tableTemplate: require 'templates/editor/campaign/table'
  projection: ['slug', 'name', 'description', 'version', 'watchers', 'creator']
  page: 'campaign'

  events:
    'click .fork-start-button': 'startForking'

  startForking: (e) ->
    @openModalView new ForkModal model: @campaign, editorPath: 'campaign'
    Backbone.Mediator.publish 'editor:view-switched', {}

  getRenderData: ->
    context = super()
    context.currentEditor = 'editor.campaign_title'
    context.currentNew = 'editor.new_campaign_title'
    context.currentNewSignup = 'editor.new_campaign_title_login'
    context.currentSearch = 'editor.campaign_search_title'
    # @$el.i18n()
    # @applyRTLIfNeeded()
    context
