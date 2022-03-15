require 'rails_helper'

RSpec.describe Course, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:posts) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do

    end
end
