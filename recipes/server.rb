package 'httpd'

template '/var/www/html/index.html' do
  source 'index.html.erb'
  action :create
end

service 'httpd' do
  action [ :enable, :start ]
end

