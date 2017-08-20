require 'rails_helper'
begin
  Todo
rescue
  Todo = nil
end

RSpec.describe Todo, :type => :model do

  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:due_date) }

end
