module CentosAdmin
  module Hooks
    class ViewProjectsFormHook < Redmine::Hook::ViewListener
      render_on :view_projects_form, partial: 'centos_admin/projects/form_additions'
      render_on :view_projects_show_sidebar_bottom, partial: 'centos_admin/projects/show_time_reserved'
    end
  end
end
