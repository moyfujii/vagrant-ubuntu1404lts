package "git" do
  action :install
end

execute "git config" do
  command "git config --global core.editor 'vim -c \"set fenc=utf-8\"'"
end
