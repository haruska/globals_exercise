class AppGlobal < ActiveRecord::Base
  serialize :value

  validates_presence_of :name

  before_save do |ag|
    AppGlobal.destroy_all(:name => ag.name)
  end

  def value
    read_attribute(:value).first rescue nil
  end

  def value=(val)
    write_attribute(:value, [val])
  end

end
