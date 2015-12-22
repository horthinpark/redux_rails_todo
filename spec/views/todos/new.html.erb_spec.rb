require 'rails_helper'

RSpec.describe "todos/new", type: :view do
  before(:each) do
    assign(:todo, Todo.new(
      :text => "MyText",
      :completed => false
    ))
  end

  it "renders new todo form" do
    render

    assert_select "form[action=?][method=?]", todos_path, "post" do

      assert_select "textarea#todo_text[name=?]", "todo[text]"

      assert_select "input#todo_completed[name=?]", "todo[completed]"
    end
  end
end
