class Shared::Card < BaseComponent
  needs title : String
  needs body : String

  def render
    div class: "bg-white overflow-hidden shadow rounded-lg" do
      div class: "border-b border-gray-200 px-4 py-5 sm:px-6" do
        h1 title, class: "font-medium text-lg"
      end

      div class: "px-4 py-5 sm:p-6" do
        h3 body
      end
    end
  end
end
