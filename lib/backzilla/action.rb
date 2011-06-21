module Backzilla::Action
  autoload :Backup, 'backzilla/action/backup' 
  autoload :Restore, 'backzilla/action/restore'
  autoload :Remove, 'backzilla/action/remove'
  
  include Backzilla::LoggerHelper 

  def initialize(entities, stores, params)
    @entities = entities
    @stores = stores
    @params = params
  end
end 
