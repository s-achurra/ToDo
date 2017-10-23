require 'rails_helper'

RSpec.describe Todo, type: :todo do

  describe 'creation' do

    before do
      @todo = FactoryGirl.create(:todo)
    end

    it 'can be created' do
      expect(@todo).to be_valid
    end

    it 'cannot be created without a title' do
      @todo.title = nil
      expect(@todo).to_not be_valid
    end

    it 'cannot be created without a due date' do
      @todo.due_date = nil
      expect(@todo).to_not be_valid
    end

    it 'can be created without details' do
      @todo.details = nil
      expect(@todo).to be_valid
    end

    it 'has a default completed status of false' do
      expect(@todo.completed).to eq(false)
    end
  end
end
