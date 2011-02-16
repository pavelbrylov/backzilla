require 'net/ssh'

class Backzilla::Store::SSH < Backzilla::Store
  def initialize(name, project_name, entity_name, options)
    super(name, project_name, entity_name)
    @path = options['path']
    @host = options['host']
    @user = options['user']

    Net::SSH.start(@host, @user) do |ssh|
      ssh.exec "mkdir -p " + @path.to_s + "/#{@project_name}/#{@entity_name}"
    end 
  end

  def store_uri
    "#{protocol}://#{uri}/#{@project_name}/#{@entity_name}" 
  end
 

  private
  
  def protocol
    'ssh'
  end

  def uri
    if @path.blank?
      fatal "Missing path option"
      exit -1
    end

    uri = ''
    uri << "#{@user}@" unless @user.blank?
    uri << @host
    uri << "/"
    uri << @path
  end
end

