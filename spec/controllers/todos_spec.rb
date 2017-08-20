require 'rails_helper'

begin
  TodosController
rescue
  TodosController = nil
end

RSpec.describe TodosController, :type => :controller do

  describe "POST #create" do
    context "with invalid params" do
      it "validates the presence of the user's title and due_date" do
        post :create, todo: {title: "Test Todo", due_date: Date.today}
        expect(response).to render_template("index")
      end
    end
  end
end
