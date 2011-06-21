class Backzilla::Action::Backup
  include Backzilla::Action
    
  def run
    @entities.each do |entity|
      store_entity(entity, @params[:full])
    end
  end

  private 
    
  def store_entity(entity, force_full = false)
    path = entity.prepare_backup 
    info "Storing #{path}..."
    @stores.each do |store|
      info "Storing in #{store.name}..."
      store.prepare_store(entity.project.name, entity.name)
      target = store.store_uri(entity.project.name, entity.name)
      if (force_full)
        duplicity =  Backzilla::Duplicity.new(path, target, 'full')
      else
        duplicity =  Backzilla::Duplicity.new(path, target)
      end
      duplicity.store
    end
    entity.clean
  end
end
