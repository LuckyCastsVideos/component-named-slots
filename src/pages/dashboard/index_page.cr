class Dashboard::IndexPage < MainLayout
  def page_title
    "Dashboard"
  end

  def content
    mount Shared::Card, title: "Dashboard", body: "This is just a string, but we want more!"
  end
end
