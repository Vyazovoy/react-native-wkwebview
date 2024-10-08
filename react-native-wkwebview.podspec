require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-wkwebview"
  s.version      = package["version"]
  s.summary      = "React Native WKWebView for iOS"
  s.author       = "Ruoyu Sun <ruoysun@gmail.com> (https://github.com/insraq)"

  s.homepage     = "https://github.com/jspeth/react-native-wkwebview"

  s.license      = "MIT"
  s.platform     = :ios, "13.4"

  s.source       = { :git => "https://github.com/jspeth/react-native-wkwebview.git", :branch => "master" }

  s.source_files  = "ios/RCTWKWebView/*.{h,m}"

  s.dependency "React-Core"
end
