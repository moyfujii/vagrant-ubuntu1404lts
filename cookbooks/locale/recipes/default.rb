%w{language-pack-ja-base language-pack-ja}.each do |pkg|
  package pkg do
    action :install
  end
end

