platform :ios, '7.0'
pod 'AFNetworking' 
pod 'RESideMenu', '~> 4.0.5'
pod 'Hpple', :git => 'https://github.com/topfunky/hpple.git'
pod 'MBProgressHUD'
pod 'DTCoreText'

post_install do |installer|
  File.open("#{installer.sandbox_root}/Headers/module.map", 'w') do |fp|
    installer.pods.each do |pod|
      normalized_pod_name = pod.name.gsub('-', '')
      fp.write <<EOF
module #{normalized_pod_name} [system] {
  umbrella "#{pod.name}"
  export *
}
EOF
      puts "Generating Swift Module #{normalized_pod_name.green} for #{pod} OK!"
    end
  end
end