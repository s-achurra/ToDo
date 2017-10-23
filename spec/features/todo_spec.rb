require 'rails_helper'

describe 'Todo Navigation' do
  let(:todo) { FactoryGirl.create(:todo) }

  before do
    visit todos_path
  end

  describe 'index' do

    it 'can be reached successfully' do
      expect(page.status_code).to eq(200)
    end

    it 'has a title of Todos' do
      expect(page).to have_content(/To Do/)
    end

    it 'has a list of todos' do
      newTodo = FactoryGirl.create(:todo)
      visit todos_path
      expect(page).to have_content(/#{newTodo.title}/)
    end

  end

  describe 'new' do
    it 'has a New Todo form on the main page' do
      expect(page).to have_content(/Create/)
    end
  end

end
