require 'test_helper'

class UserObserverTest < ActiveSupport::TestCase

  def test_disable
    ActiveRecord::Base.observers.disable :user_observer do
      User.create
    end
  end

end
