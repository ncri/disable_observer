ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all

  # Add more helper methods to be used by all tests here...
end


#
## encoding: utf-8
#
#ENV["RAILS_ENV"] = "test"
#require File.expand_path('../../config/environment', __FILE__)
#require 'rails/test_help'
#
#
#class ActiveSupport::TestCase
#  include AuthenticatedTestHelper
#  include ActionDispatch::TestProcess
#
#  def setup_with_global
#    ActiveRecord::Base.observers.enable :all
#    #ActiveRecord::Observer.enable_observers
#    stub_geocoder
#    disable_geocoding
#  end
#
#  alias_method_chain :setup, :global
#
#
#  # Transactional fixtures accelerate your tests by wrapping each test method
#  # in a transaction that's rolled back on completion.  This ensures that the
#  # test database remains unchanged so your fixtures don't have to be reloaded
#  # between every test method.  Fewer database queries means faster tests.
#  #
#  # Read Mike Clark's excellent walkthrough at
#  #   http://clarkware.com/cgi/blosxom/2005/10/24#Rails10FastTesting
#  #
#  # Every Active Record database supports transactions except MyISAM tables
#  # in MySQL.  Turn off transactional fixtures in this case; however, if you
#  # don't care one way or the other, switching from MyISAM to InnoDB tables
#  # is recommended.
#  #
#  # The only drawback to using transactional fixtures is when you actually
#  # need to test transactions.  Since your test is bracketed by a transaction,
#  # any transactions started in your code will be automatically rolled back.
#  self.use_transactional_fixtures = true
#
#  # Instantiated fixtures are slow, but give you @david where otherwise you
#  # would need people(:david).  If you don't want to migrate your existing
#  # test cases which use the @david style and don't mind the speed hit (each
#  # instantiated fixtures translates to a database query per test method),
#  # then set this back to true.
#  self.use_instantiated_fixtures  = false
#
#  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
#  #
#  # Note: You'll currently still have to declare fixtures explicitly in integration tests
#  # -- they do not yet inherit this setting
#  fixtures :all
#
#
#  # Add more helper methods to be used by all tests here...
#
#  @@valid_user_attributes = { :email => "foo@arnie.com",
#                              :nachname => "dummy", :vorname => "hummy",
#                              :password => "password",
#                              :password_confirmation => "password",
#                              :country => "Österreich",
#                              :gender=> "0", :accept_agb => "1", :over_14 => '1',
#                              :ausbildungsstatus => 2 }
#
#
#  #  @@valid_user_attributes = { :email => "foo@arnie.com", :email_confirmation => "foo@arnie.com",
#  #                            :nachname => "dummy", :vorname => "hummy", :company_id => 0,
#  #                            :password => "password", :password_confirmation => "password",
#  #                            :country => "Österreich",  :ausbildungsstatus=>"1", :accept_agb => "1", :my_motto => 'dsaf',
#  #                            :favorite_quotes => 'dsaf', :aboutme => 'dasfdasf',
#  #                            "geburtsdatum(1i)"=>"1969", "geburtsdatum(2i)"=>"1", "geburtsdatum(3i)"=>"13",
#  #                            :plz=>"3002", :stadt=>"Purkersdorf",  :state=>"Niederösterreich", :gender=> "0", :accept_agb => "1"  }
#
#
#  @@valid_user_attributes_2 = {  :email => 'quire@example.com', :password => 'quire69', :password_confirmation => "quire69", :gender=> "1",
#                                 :accept_agb => "1", :nachname => "bla", :vorname => "quire", :country => "Deutschland", :over_14 => '1', :ausbildungsstatus => 2  }
#
#  #   @@valid_user_attributes_2 = {  :email => 'quire@example.com', :password => 'quire69', :company_id => 0,
#  #                                        :password_confirmation => 'quire69', :geburtsdatum => '1991-04-01',
#  #                                        :accept_agb => "1",:nachname => "bla", :vorname => "quire", :my_motto => 'dsaf',
#  #                                        :favorite_quotes => 'dsaf', :aboutme => 'dasfdasf',
#  #                                        :plz=>"10405", :stadt=>"Berlin", :state => 'Berlin', :country => "Deutschland", :ausbildungsstatus=>"1" }
#
#  @@valid_training_school_attributes = { :name => 'test',
#                                         :city => 'test',
#                                         :plz => '33619',
#                                         :state => 'Nordrhein-Westfalen',
#                                         :country => 'Deutschland' }
#
#  @@valid_school_attributes = { :name => 'test',
#                                :city => 'test',
#                                :postalcode => '33619',
#                                :state => 'Nordrhein-Westfalen',
#                                :street => 'test',
#                                :country => 'Deutschland' }
#
#
#  def omniauth_test_data
#    { :uid => '1234',
#      :provider => 'facebook',
#      :email => "#{ActiveSupport::SecureRandom.hex(8)}@test.com",
#      :first_name => "Jim",
#      :last_name => "Knopf",
#      :image => "abcde.png",
#      :birthday => '07/1/1984',
#      :location => "Zürich, Schweiz",
#      :gender => 'female' }
#  end
#
#  def logger
#    Rails.logger
#  end
#
#  def login(user = :quentin)
#    if user.is_a? User
#      @request.session[:user_id] = user.id
#    else
#      @request.session[:user_id] = users(user).id
#    end
#
#    #@current_user = users(user)
#  end
#
#  def login_as_admin
#    login(:quentin)
#  end
#
#  def login_as_normal_user
#    login(:aaron)
#    @normal_user = users(:aaron)
#  end
#
#  def login_as role
#    u = Factory.create(:user, :roles => [role])
#    login(u)
#  end
#
#  def current_user
#    User.find(@request.session[:user_id]) rescue nil
#  end
#
#  def logout()
#    @request.session[:user_id] = nil
#  end
#
#  def setup_emails
#    ActionMailer::Base.delivery_method = :test
#    ActionMailer::Base.perform_deliveries = true
#    ActionMailer::Base.deliveries = []
#    @emails = ActionMailer::Base.deliveries
#  end
#
#  def assert_layout(layout)
#    assert_equal layout, @response.layout
#  end
#
#  def assert_models_equal(expected_models, actual_models, message = nil)
#    to_test_param = lambda { |r| "<#{r.class}:#{r.to_param}>" }
#    full_message = build_message(message, "<?> expected but was\n<?>.\n",
#                                 expected_models.collect(&to_test_param), actual_models.collect(&to_test_param))
#    assert_block(full_message) { expected_models == actual_models }
#  end
#
#
#  def set_referer
#    @request.env["HTTP_REFERER"] = 'http://www.whatever'
#  end
#
#
#  def content_type(type)
#    @request.env['Content-Type'] = type
#  end
#
#  def init_tags user
#    user.favourite_subject_list =        ['a']
#    user.anti_subject_list  =            ['a']
#    user.favourite_activity_list =       ['a']
#    user.favourite_work_place_list =     ['a']
#    user.favourite_work_material_list  = ['a']
#    user.favourite_employer_list  = ['a']
#  end
#
#
#  # TODO: check which of these geocoding methods we need
#
#  def disable_geocoding
#    GeoKit::Geocoders::Geocoder.instance_eval do
#      def geocode(a)
#        res = GeoKit::GeoLoc.new
#        res.lat = 13.423007
#        res.lng = 52.534194
#        res.success = true
#        res
#      end
#    end
#  end
#
#  def stub_geocoder
#    geocode_payload = GeoKit::GeoLoc.new(:lat => 123.456, :lng => 123.456)
#    geocode_payload.success = true
#    GeoKit::Geocoders::MultiGeocoder.stubs(:geocode).with(any_parameters).returns(geocode_payload)
#    Geocoder.stubs(:geocode).with(any_parameters).returns(geocode_payload)
#  end
#
#end
#
#
## Some search tests require this, it's from an old thinking sphinx plugin
## The Collection class was removed from the ts gem in newer versions.
##
#module ThinkingSphinx
#  class Collection < ::Array
#    attr_reader :total_entries, :total_pages, :current_page, :per_page
#    attr_accessor :results
#
#    # Compatibility with older versions of will_paginate
#    alias_method :page_count, :total_pages
#
#    def initialize(page, per_page, entries, total_entries)
#      @current_page, @per_page, @total_entries = page, per_page, total_entries
#
#      @total_pages = (entries / @per_page.to_f).ceil
#    end
#
#    def self.ids_from_results(results, page, limit, options)
#      collection = self.new(page, limit,
#        results[:total] || 0, results[:total_found] || 0
#      )
#      collection.results = results
#      collection.replace results[:matches].collect { |match|
#        match[:attributes]["sphinx_internal_id"]
#      }
#      return collection
#    end
#
#    def self.create_from_results(results, page, limit, options)
#      collection = self.new(page, limit,
#        results[:total] || 0, results[:total_found] || 0
#      )
#      collection.results = results
#      collection.replace instances_from_matches(results[:matches], options)
#      return collection
#    end
#
#    def self.instances_from_matches(matches, options = {})
#      if klass = options[:class]
#        instances_from_class klass, matches, options
#      else
#        instances_from_classes matches, options
#      end
#    end
#
#    def self.instances_from_class(klass, matches, options = {})
#      index_options = klass.sphinx_index_options
#
#      ids = matches.collect { |match| match[:attributes]["sphinx_internal_id"] }
#      instances = ids.length > 0 ? klass.find(
#        :all,
#        :conditions => {klass.primary_key.to_sym => ids},
#        :include    => (options[:include] || index_options[:include]),
#        :select     => (options[:select]  || index_options[:select])
#      ) : []
#
#      # Raise an exception if we find records in Sphinx but not in the DB, so
#      # the search method can retry without them. See
#      # ThinkingSphinx::Search.retry_search_on_stale_index.
#      if options[:raise_on_stale] && instances.length < ids.length
#        stale_ids = ids - instances.map {|i| i.id }
#        raise StaleIdsException, stale_ids
#      end
#
#      ids.collect { |obj_id|
#        instances.detect { |obj| obj.id == obj_id }
#      }
#    end
#
#    # Group results by class and call #find(:all) once for each group to reduce
#    # the number of #find's in multi-model searches.
#    #
#    def self.instances_from_classes(matches, options = {})
#      groups = matches.group_by { |match| match[:attributes]["class_crc"] }
#      groups.each do |crc, group|
#        group.replace(
#          instances_from_class(class_from_crc(crc), group, options)
#        )
#      end
#
#      matches.collect do |match|
#        groups.detect { |crc, group|
#          crc == match[:attributes]["class_crc"]
#        }[1].detect { |obj|
#          obj.id == match[:attributes]["sphinx_internal_id"]
#        }
#      end
#    end
#
#    def self.class_from_crc(crc)
#      @@models_by_crc ||= ThinkingSphinx.indexed_models.inject({}) do |hash, model|
#        hash[model.constantize.to_crc32] = model
#        model.constantize.subclasses.each { |subclass|
#          hash[subclass.to_crc32] = subclass.name
#        }
#        hash
#      end
#      @@models_by_crc[crc].constantize
#    end
#
#    def previous_page
#      current_page > 1 ? (current_page - 1) : nil
#    end
#
#    def next_page
#      current_page < total_pages ? (current_page + 1): nil
#    end
#
#    def offset
#      (current_page - 1) * @per_page
#    end
#
#    def method_missing(method, *args, &block)
#      super unless method.to_s[/^each_with_.*/]
#
#      each_with_attribute method.to_s.gsub(/^each_with_/, ''), &block
#    end
#
#    def each_with_groupby_and_count(&block)
#      results[:matches].each_with_index do |match, index|
#        yield self[index], match[:attributes]["@groupby"], match[:attributes]["@count"]
#      end
#    end
#
#    def each_with_attribute(attribute, &block)
#      results[:matches].each_with_index do |match, index|
#        yield self[index], (match[:attributes][attribute] || match[:attributes]["@#{attribute}"])
#      end
#    end
#
#    def each_with_weighting(&block)
#      results[:matches].each_with_index do |match, index|
#        yield self[index], match[:weight]
#      end
#    end
#
#    def inject_with_groupby_and_count(initial = nil, &block)
#      index = -1
#      results[:matches].inject(initial) do |memo, match|
#        index += 1
#        yield memo, self[index], match[:attributes]["@groupby"], match[:attributes]["@count"]
#      end
#    end
#  end
#end
