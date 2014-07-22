package "nginx" do
  action :install
end

service "nginx" do
  supports status: true, restart: true, reload: true
  action [:enable, :start]
end

=begin
# ./site_cookbooks/templates/default/nginx.conf.erb�����ɂ���
# nginx�̐ݒ�t�@�C�������܂����Ƃ���ɒu����Ƃ����w��
# Chef�̋K��ɂ̂������Œu���ꏊ�̃p�X��e���v���[�g�t�@�C���͏ȗ��ł��Ă���
template "nginx.conf" do
  # owner��group��root���[�U�[�Ńp�[�~�b�V������644
  owner "root"
  group "root"
  mode 0644

  # ���̓���̂��Ƃ�nginx���ċN�����Ă˂Ƃ����w��
  notifies :reload, "service[nginx]"
end
=end
