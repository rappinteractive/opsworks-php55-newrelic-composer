script "enable_memcached" do
	interpreter "bash"
	user "root"
	cwd "/tmp"
	code <<-EOH
	/usr/sbin/php5enmod memcached
	/usr/sbin/service apache2 restart
	EOH
end
