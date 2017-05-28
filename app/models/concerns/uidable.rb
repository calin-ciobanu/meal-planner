module Uidable
  extend ActiveSupport::Concern

  included do
    before_save :generate_uid
  end

  def generate_uid
    self.uid = name.gsub(/ +/, ' ').gsub(' ', '_').downcase
  end
end