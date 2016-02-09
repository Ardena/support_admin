module SupportAdmin
  class Setting < ActiveRecord::Base
    attr_accessible :class_name, :display_name
  end
end