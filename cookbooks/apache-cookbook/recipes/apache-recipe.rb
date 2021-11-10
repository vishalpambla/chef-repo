package "httpd" do
action :install
end

file '/var/www/html.index.html' do
content 'welcome amit'
action :create
end

service "httpd" do
action [:enable, :start]
end
