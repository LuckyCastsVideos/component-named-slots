class Me::ShowPage < MainLayout
  def page_title
    "Your Profile"
  end

  def content
    mount Shared::Card,
      title: "Your profile",
      body: ->{ h3 "Email: #{current_user.email}" }
  end
end
