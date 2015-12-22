require 'rails_helper'

RSpec.describe "todos/edit", type: :view do
  before(:each) do
    @todo = assign(:todo, Todo.create!(
      :text => "MyText",
      :completed => false
    ))
  end

  it "renders the edit todo form" do
    render

    assert_select "form[action=?][method=?]", todo_path(@todo), "post" do

      assert_select "textarea#todo_text[name=?]", "todo[text]"

      assert_select "input#todo_completed[name=?]", "todo[completed]"
    end
  end
end
