require 'spec_helper'

describe "Viewing todo items" do
	let!(:todo_list) { TodoList.create(title: "My todo list", description: "My description") }

	it "displays no item when a todo list is empty" do
		visit "/todo_lists"
		within "#todo_list_#{todo_list.id}" do
			click_link "List items"
		end
		expect(page).to have_content("TodoItems#index")
	end
end