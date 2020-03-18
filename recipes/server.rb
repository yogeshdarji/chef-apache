package 'httpd'

#template '/var/www/html/index.html' do
#  source 'index.html.erb'
#  action :create
#end

cookbook_file '/var/www/index.html' do
  source 'index.html'
end

service 'httpd' do
  action [ :enable, :start ]
end

