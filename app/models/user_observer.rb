class UserObserver < ActiveRecord::Observer

  observe User

  def after_save(model)
    puts 'observer called'
  end

end
