# Hooks
require_dependency 'centos_admin/hooks/projects_hooks'

# Patches
require 'centos_admin/patches/project_patch'
require 'centos_admin/patches/time_entry_patch'

# Mailers
require_relative 'app/mailers/time_mailer'

# Plugin
Redmine::Plugin.register :centosadmin_redmine_plugin do
  name 'Centosadmin Redmine Plugin plugin'
  author 'Kernel Wed Studio'
  description 'This is a plugin for CentosAdmin'
  version '0.1.0'
  url 'https://github.com/KernelCorp/centosadmin_redmine_plugin'
  author_url 'http://kerweb.ru/'
  settings default: { 'managers_roles' => 'Manager' }, partial: 'settings/centosadmin_redmine_settings'
end
