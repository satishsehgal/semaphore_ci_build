# == Schema Information
#
# Table name: alternate_credentials
#
#  id                :integer          not null, primary key
#  profile_id        :string
#  image             :string
#  image_description :text
#  expiration        :datetime
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'rails_helper'

RSpec.describe Post, type: :model do
  FactoryBot.create(:post)
end
