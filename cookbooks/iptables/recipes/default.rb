
# Copy iptables rules file
cookbook_file "/etc/sysconfig/iptables" do
  source "dmz"
end

# Restart service
service "iptables" do
  action [:restart]
end
