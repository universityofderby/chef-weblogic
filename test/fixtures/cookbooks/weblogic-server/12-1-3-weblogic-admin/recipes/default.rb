weblogic '12.1.3' do
  ownername 'weblogic'
  groupname 'weblogic_admin'
  installer_url 'https://www.dropbox.com/s/54blw798dtqgoeo/fmw_12.1.3.0.0_wls.jar'
end

# node.default['oracle']['inventory']['group'] = 'weblogic_admin'
# node.default['oracle']['inventory']['user'] = 'weblogic'
