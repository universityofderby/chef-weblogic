require 'serverspec'

set :backend, :exec

describe user('oracle') do
  it { should exist }
  it { belong_to_group 'dba' }
end

describe group('dba') do
  it { should exist }
end

describe file('/opt/oracle/Middleware/weblogic-server/10.3.6/wlserver') do
  it { should be_directory }
  it { should be_owned_by 'oracle' }
  it { should be_grouped_into 'dba' }
end

describe file('/opt/oracle/Middleware/weblogic-server/12.1.1/wlserver') do
  it { should be_directory }
  it { should be_owned_by 'oracle' }
  it { should be_grouped_into 'dba' }
end

describe file('/opt/oracle/Middleware/weblogic-server/12.1.2.0.0/wlserver') do
  it { should be_directory }
  it { should be_owned_by 'oracle' }
  it { should be_grouped_into 'dba' }
end

describe file('/opt/oracle/Middleware/weblogic-server/12.1.3.0.0/wlserver') do
  it { should be_directory }
  it { should be_owned_by 'oracle' }
  it { should be_grouped_into 'dba' }
end
