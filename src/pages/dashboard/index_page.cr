class Dashboard::IndexPage < MainLayout
  def page_title
    "Dashboard"
  end

  def content
    mount Shared::Card,
      title: "Dashboard",
      body: ->{ advanced_content }
  end

  private def advanced_content
    div class: "space-y-6" do
      render_statistics
      render_pinned_projects
    end
  end

  private def render_statistics
    div do
      h2 "Last 30 days", class: "text-gray-500 text-xs font-medium uppercase tracking-wide"
      div class: "mt-5 grid grid-cols-1 rounded-lg bg-white overflow-hidden shadow md:grid-cols-3" do
        div do
          div class: "px-4 py-5 sm:p-6" do
            dl do
              dt class: "text-base leading-6 font-normal text-gray-900" do
                text " Total Subscribers "
              end
              dd class: "mt-1 flex justify-between items-baseline md:block lg:flex" do
                div class: "flex items-baseline text-2xl leading-8 font-semibold text-indigo-600" do
                  text " 71,897 "
                  span class: "ml-2 text-sm leading-5 font-medium text-gray-500" do
                    text " from 70,946 "
                  end
                end
                div class: "inline-flex items-baseline px-2.5 py-0.5 rounded-full text-sm font-medium leading-5 bg-green-100 text-green-800 md:mt-2 lg:mt-0" do
                  tag "svg", class: "-ml-1 mr-0.5 flex-shrink-0 self-center h-5 w-5 text-green-500", fill: "currentColor", viewBox: "0 0 20 20" do
                    tag "path", clip_rule: "evenodd", d: "M5.293 9.707a1 1 0 010-1.414l4-4a1 1 0 011.414 0l4 4a1 1 0 01-1.414 1.414L11 7.414V15a1 1 0 11-2 0V7.414L6.707 9.707a1 1 0 01-1.414 0z", fill_rule: "evenodd"
                  end
                  span class: "sr-only" do
                    text " Increased by "
                  end
                  text " 12% "
                end
              end
            end
          end
        end
        div class: "border-t border-gray-200 md:border-0 md:border-l" do
          div class: "px-4 py-5 sm:p-6" do
            dl do
              dt class: "text-base leading-6 font-normal text-gray-900" do
                text " Avg. Open Rate "
              end
              dd class: "mt-1 flex justify-between items-baseline md:block lg:flex" do
                div class: "flex items-baseline text-2xl leading-8 font-semibold text-indigo-600" do
                  text " 58.16% "
                  span class: "ml-2 text-sm leading-5 font-medium text-gray-500" do
                    text " from 56.14% "
                  end
                end
                div class: "inline-flex items-baseline px-2.5 py-0.5 rounded-full text-sm font-medium leading-5 bg-green-100 text-green-800 md:mt-2 lg:mt-0" do
                  tag "svg", class: "-ml-1 mr-0.5 flex-shrink-0 self-center h-5 w-5 text-green-500", fill: "currentColor", viewBox: "0 0 20 20" do
                    tag "path", clip_rule: "evenodd", d: "M5.293 9.707a1 1 0 010-1.414l4-4a1 1 0 011.414 0l4 4a1 1 0 01-1.414 1.414L11 7.414V15a1 1 0 11-2 0V7.414L6.707 9.707a1 1 0 01-1.414 0z", fill_rule: "evenodd"
                  end
                  span class: "sr-only" do
                    text " Increased by "
                  end
                  text " 2.02% "
                end
              end
            end
          end
        end
        div class: "border-t border-gray-200 md:border-0 md:border-l" do
          div class: "px-4 py-5 sm:p-6" do
            dl do
              dt class: "text-base leading-6 font-normal text-gray-900" do
                text " Avg. Click Rate "
              end
              dd class: "mt-1 flex justify-between items-baseline md:block lg:flex" do
                div class: "flex items-baseline text-2xl leading-8 font-semibold text-indigo-600" do
                  text " 24.57% "
                  span class: "ml-2 text-sm leading-5 font-medium text-gray-500" do
                    text " from 28.62 "
                  end
                end
                div class: "inline-flex items-baseline px-2.5 py-0.5 rounded-full text-sm font-medium leading-5 bg-red-100 text-red-800 md:mt-2 lg:mt-0" do
                  tag "svg", class: "-ml-1 mr-0.5 flex-shrink-0 self-center h-5 w-5 text-red-500", fill: "currentColor", viewBox: "0 0 20 20" do
                    tag "path", clip_rule: "evenodd", d: "M14.707 10.293a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 111.414-1.414L9 12.586V5a1 1 0 012 0v7.586l2.293-2.293a1 1 0 011.414 0z", fill_rule: "evenodd"
                  end
                  span class: "sr-only" do
                    text " Decreased by "
                  end
                  text " 4.05% "
                end
              end
            end
          end
        end
      end
    end
  end

  private def render_pinned_projects
    div do
      h2 "Pinned Projects", class: "text-gray-500 text-xs font-medium uppercase tracking-wide"
      ul class: "mt-3 grid grid-cols-1 gap-5 sm:gap-6 sm:grid-cols-2 lg:grid-cols-4" do
        li class: "col-span-1 flex shadow-sm rounded-md" do
          div class: "flex-shrink-0 flex items-center justify-center w-16 bg-pink-600 text-white text-sm leading-5 font-medium rounded-l-md" do
            text " GA "
          end
          div class: "flex-1 flex items-center justify-between border-t border-r border-b border-gray-200 bg-white rounded-r-md truncate" do
            div class: "flex-1 px-4 py-2 text-sm leading-5 truncate" do
              a "Graph API", class: "text-gray-900 font-medium hover:text-gray-600 transition ease-in-out duration-150", href: "#"
              para "16 Members", class: "text-gray-500"
            end
            div class: "flex-shrink-0 pr-2" do
              button class: "w-8 h-8 inline-flex items-center justify-center text-gray-400 rounded-full bg-transparent hover:text-gray-500 focus:outline-none focus:text-gray-500 focus:bg-gray-100 transition ease-in-out duration-150" do
                tag "svg", class: "w-5 h-5", fill: "currentColor", viewBox: "0 0 20 20" do
                  tag "path", d: "M10 6a2 2 0 110-4 2 2 0 010 4zM10 12a2 2 0 110-4 2 2 0 010 4zM10 18a2 2 0 110-4 2 2 0 010 4z"
                end
              end
            end
          end
        end
        li class: "col-span-1 flex shadow-sm rounded-md" do
          div class: "flex-shrink-0 flex items-center justify-center w-16 bg-purple-600 text-white text-sm leading-5 font-medium rounded-l-md" do
            text " CD "
          end
          div class: "flex-1 flex items-center justify-between border-t border-r border-b border-gray-200 bg-white rounded-r-md truncate" do
            div class: "flex-1 px-4 py-2 text-sm leading-5 truncate" do
              a "Component Design", class: "text-gray-900 font-medium hover:text-gray-600 transition ease-in-out duration-150", href: "#"
              para "12 Members", class: "text-gray-500"
            end
            div class: "flex-shrink-0 pr-2" do
              button class: "w-8 h-8 inline-flex items-center justify-center text-gray-400 rounded-full bg-transparent hover:text-gray-500 focus:outline-none focus:text-gray-500 focus:bg-gray-100 transition ease-in-out duration-150" do
                tag "svg", class: "w-5 h-5", fill: "currentColor", viewBox: "0 0 20 20" do
                  tag "path", d: "M10 6a2 2 0 110-4 2 2 0 010 4zM10 12a2 2 0 110-4 2 2 0 010 4zM10 18a2 2 0 110-4 2 2 0 010 4z"
                end
              end
            end
          end
        end
        li class: "col-span-1 flex shadow-sm rounded-md" do
          div class: "flex-shrink-0 flex items-center justify-center w-16 bg-orange-500 text-white text-sm leading-5 font-medium rounded-l-md" do
            text " T "
          end
          div class: "flex-1 flex items-center justify-between border-t border-r border-b border-gray-200 bg-white rounded-r-md truncate" do
            div class: "flex-1 px-4 py-2 text-sm leading-5 truncate" do
              a "Templates", class: "text-gray-900 font-medium hover:text-gray-600 transition ease-in-out duration-150", href: "#"
              para "16 Members", class: "text-gray-500"
            end
            div class: "flex-shrink-0 pr-2" do
              button class: "w-8 h-8 inline-flex items-center justify-center text-gray-400 rounded-full bg-transparent hover:text-gray-500 focus:outline-none focus:text-gray-500 focus:bg-gray-100 transition ease-in-out duration-150" do
                tag "svg", class: "w-5 h-5", fill: "currentColor", viewBox: "0 0 20 20" do
                  tag "path", d: "M10 6a2 2 0 110-4 2 2 0 010 4zM10 12a2 2 0 110-4 2 2 0 010 4zM10 18a2 2 0 110-4 2 2 0 010 4z"
                end
              end
            end
          end
        end
        li class: "col-span-1 flex shadow-sm rounded-md" do
          div class: "flex-shrink-0 flex items-center justify-center w-16 bg-green-400 text-white text-sm leading-5 font-medium rounded-l-md" do
            text " RC "
          end
          div class: "flex-1 flex items-center justify-between border-t border-r border-b border-gray-200 bg-white rounded-r-md truncate" do
            div class: "flex-1 px-4 py-2 text-sm leading-5 truncate" do
              a "React Components", class: "text-gray-900 font-medium hover:text-gray-600 transition ease-in-out duration-150", href: "#"
              para "8 Members", class: "text-gray-500"
            end
            div class: "flex-shrink-0 pr-2" do
              button class: "w-8 h-8 inline-flex items-center justify-center text-gray-400 rounded-full bg-transparent hover:text-gray-500 focus:outline-none focus:text-gray-500 focus:bg-gray-100 transition ease-in-out duration-150" do
                tag "svg", class: "w-5 h-5", fill: "currentColor", viewBox: "0 0 20 20" do
                  tag "path", d: "M10 6a2 2 0 110-4 2 2 0 010 4zM10 12a2 2 0 110-4 2 2 0 010 4zM10 18a2 2 0 110-4 2 2 0 010 4z"
                end
              end
            end
          end
        end
      end
    end
  end
end
