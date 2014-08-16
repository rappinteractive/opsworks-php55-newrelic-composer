node[:deploy].each do |application, deploy|
	script "enable_mcrypt" do
		interpreter "bash"
		user "root"
		code <<-EOH
		/usr/sbin/php5enmod mcrypt
		/usr/sbin/service apache2 restart
		EOH
	end
end