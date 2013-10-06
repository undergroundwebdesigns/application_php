require 'minitest/spec'

describe_recipe 'application_php::expressionengine' do
  include MiniTest::Chef::Assertions
  include MiniTest::Chef::Context
  include MiniTest::Chef::Resources

  describe 'expressionengine framework' do
    it 'creates web root directory' do
      directory(node[:newspring][:web_root]).must_exist.with(:owner, "root")
    end

    #this is created via template because it contains sensative data
    it 'has a database file that is symlinked' do
      assert_symlinked_file("/var/www/newspring.cc/system/expressionengine/confg/database.php").must_have(:mode, "666")
    end

    #this does not have sensative data and can be stored in the repo, either way it needs to have permissions of 666
    it 'has a config file' do
      file("/var/www/newspring.cc/system/expressionengine/confg/config.php").must_have(:mode, "666")
    end

    #saves cache directory so caching doesn't get disabled everytime a new revision is created.
    it 'has a cache directory that is symlinked' do
      assert_symlinked_directory("/var/www/newspring.cc/system/expressionengine/cache")
    end

    #images directory needs to be symlinked from shared, but images should be on a CDN
    it 'has an images directory that is symlinked' do
      assert_symlinked_directory("/var/www/newspring.cc/images")
    end

  end
end
