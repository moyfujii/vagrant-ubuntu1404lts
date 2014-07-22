package "nginx" do
  action :install
end

service "nginx" do
  supports status: true, restart: true, reload: true
  action [:enable, :start]
end

=begin
# ./site_cookbooks/templates/default/nginx.conf.erbを元にして
# nginxの設定ファイルを決まったところに置くよという指示
# Chefの規約にのおかげで置き場所のパスやテンプレートファイルは省略できている
template "nginx.conf" do
  # ownerとgroupはrootユーザーでパーミッションは644
  owner "root"
  group "root"
  mode 0644

  # この動作のあとでnginxを再起動してねという指示
  notifies :reload, "service[nginx]"
end
=end
