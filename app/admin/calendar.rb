ActiveAdmin.register_page "Calendar" do

  content do
    para "Hello Calendar"

    panel "partial" do
      render partial: 'calendar'
    end

  end

  action_item 'view_site' do
    link_to "View Site", "/"
  end
  
  page_action :add_event, method: [:get, :post] do
    if request.post?
      redirect_to admin_calendar_path, notice: "[POST]Your event was added"
    else
      redirect_to admin_calendar_path, notice: "[GET]Your event was added"
    end
  end

  action_item :add do
    link_to "Add Event", admin_calendar_add_event_path, method: :post
  end
end
