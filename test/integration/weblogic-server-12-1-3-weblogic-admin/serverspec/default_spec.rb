require_relative '../../../kitchen/data/spec_helper'

describe user('weblogic') do
  it { should exist }
  it { belong_to_group 'weblogic-admin' }
end

describe group('weblogic-admin') do
  it { should exist }
end

describe file('/opt/oracle/Middleware/weblogic-12.1.3.0.0/wlserver') do
  it { should be_directory }
  it { should be_owned_by 'weblogic' }
  it { should be_grouped_into 'weblogic-admin' }
end
