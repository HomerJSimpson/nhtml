require 'redmine'

Redmine::Plugin.register :nhtml do
	name 'HNtml plugin'
	author 'Homer Simpson'
	description 'This is a plugin for Redmine'
	version '0.0.1'
	url 'http://example.com/path/to/plugin'
	author_url 'http://example.com/about'

	  Redmine::WikiFormatting::Macros.register do
	  	desc <<-EOHELP
		Help goes here
		EOHELP

		macro :nhtml do |obj, arg, text|
			return text.html_safe
		end
	  end
end


