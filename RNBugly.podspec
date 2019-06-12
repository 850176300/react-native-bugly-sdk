require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "RNBugly"
  s.version      = package['version']
  s.summary      = "RNBugly"
  s.homepage     = "https://github.com/850176300/react-native-bugly-sdk"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "canyara" => "canyara@gmail.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/850176300/react-native-bugly-sdk.git", :tag => "v" + package['version'] }
  s.source_files  = "ios/RNBugly/**/*.{h,m}"
  #s.requires_arc = true
  s.preserve_paths  = "**/*.js"

  s.ios.frameworks    = "SystemConfiguration", "Security"
  s.ios.library = 'z', 'c++'

  s.static_framework = true
  s.dependency "Bugly"

  s.dependency "React"
  #s.dependency "others"

end
