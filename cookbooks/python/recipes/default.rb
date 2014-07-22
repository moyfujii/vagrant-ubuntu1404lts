%w{python-setuptools python-dev libjpeg-dev libfreetype6-dev zlib1g-dev}.each do |pkg|
  package pkg do
    action :install
  end
end

execute "link" do
  command <<-EOM
    ln -s /usr/lib/`uname -i`-linux-gnu/libfreetype.so /usr/lib/
    ln -s /usr/lib/`uname -i`-linux-gnu/libjpeg.so /usr/lib/
    ln -s /usr/lib/`uname -i`-linux-gnu/libz.so /usr/lib/
  EOM
  not_if "test -L /usr/lib/libfreetype.so"
end

execute "install pip" do
  command <<-EOH
    easy_install pip
  EOH
end

execute "install virtualenv" do
  command <<-EOH
    pip install virtualenv virtualenvwrapper
  EOH
end

execute "install sphinx" do
  command <<-EOH
    pip install sphinx sphinxjp.themes.basicstrap
  EOH
end

execute "install blockdiag" do
  command <<-EOH
    pip install blockdiag sphinxcontrib-blockdiag
  EOH
end
