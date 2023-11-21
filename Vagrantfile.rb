# Vagrant.configure("2") do |config|
#   config.vm.define "app" do |app|
#     app.vm.box = "bento/ubuntu-20.04"
#     config.ssh.insert_key = false
#     app.vm.network :private_network, ip: "192.168.33.12"
#     app.vm.hostname = "app"
#     app.hostsupdater.aliases = ["app"]
#  end

  config.vm.define "deploy" do |deploy|
    deploy.vm.box = "bento/ubuntu-20.04"
    config.ssh.insert_key = false
    deploy.vm.network :private_network, ip: "192.168.33.11"
    deploy.vm.hostname = "app"
    deploy.hostsupdater.aliases = ["app"]
  end

  config.vm.define "ansible" do |ansible|
    ansible.vm.box = "bento/ubuntu-20.04"
    ansible.vm.network :private_network, ip: "192.168.33.10"
    ansible.vm.hostname = "ansible"
    ansible.hostsupdater.aliases = ["ansible"]
    ansible.vm.synced_folder "ansible", "/home/ubuntu/ansible"
  end
end