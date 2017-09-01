#
# Cookbook:: metasploitable
# Recipe:: openjdk6
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'metasploitable::7zip'

remote_file 'C:\Windows\Temp\openjdk-1.6.0-unofficial-b27-windows-amd64.zip' do
  source 'https://github.com/downloads/alexkasko/openjdk-unofficial-builds/openjdk-1.6.0-unofficial-b27-windows-amd64.zip'
  action :create
end

batch 'Install OpenJDK' do
  code '"C:\Program Files\7-Zip\7z.exe" x "C:\Windows\Temp\openjdk-1.6.0-unofficial-b27-windows-amd64.zip" -oC:\openjdk6"'
end

