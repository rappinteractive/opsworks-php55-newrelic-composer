script "enable_mcrypt" do
	interpreter "bash"
	user "root"
	cwd "/tmp"
	code <<-EOH
	/usr/sbin/php5enmod mcrypt
	/usr/sbin/service apache2 restart
	EOH
end
