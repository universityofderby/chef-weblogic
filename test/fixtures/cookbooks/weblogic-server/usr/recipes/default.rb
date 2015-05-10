
fusionmiddleware_weblogic_server '12.1.3.0.0' do
  home '/usr/weblogic-server'
  source_url "#{node['artifact_repo']}/oracle/weblogic-server/12.1.3.0.0/weblogic-server-12.1.3.0.0-installer.jar"
end
