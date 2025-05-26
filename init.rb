require 'redmine'

require File.expand_path('lib/welcome_controller_patch', __dir__)

Redmine::Plugin.register :redmine_startpage do
  name 'Redmine Startpage plugin'
  author 'Txinto Vaz'
  description 'This is a plugin for Redmine.  It allows the user to select almost any Redmine sub page as the start page for a Redmine website'
  version '0.2.0'
  url 'https://github.com/txinto/redmine_startpage'
  
  settings :default => {
    'startpage_active' => :false,
    'startpage_controller'  => '',
    'startpage_action' => '',
    'startpage_id' => '',
    'startpage_argname' => '',
    'startpage_argvalue' => ''
  }, :partial => 'settings/startpage_settings'
end
