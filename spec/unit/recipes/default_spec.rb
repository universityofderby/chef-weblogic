require 'chefspec'
require 'chefspec/berkshelf'

describe 'weblogic::default' do
  before(:each) do
    stub_command('sudo -V').and_return('blarg')
  end

  let :chef_run do
    ChefSpec::Runner.new do |node|
      node.set['weblogic']['installer']['url'] = 'http://example.com/weblogic.jar'
      node.set['oracle']['weblogic']['path'] = '/sw/app/oracle/weblogic'
    end.converge(described_recipe)
  end

  it "should create the temporary directory if it isn't there" do
    expect(chef_run).to create_directory('/sw/app/temp')
  end

  it 'should create the oracle weblogic directory' do
    expect(chef_run).to create_directory('/sw/app/oracle/weblogic')
  end

  it 'should include java recipe' do
    expect(chef_run).to include_recipe('java::default')
  end

  it 'should install weblogic' do
    expect(chef_run).to run_execute('install')
  end
end
