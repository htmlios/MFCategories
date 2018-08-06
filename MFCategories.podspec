version = "0.0.1"

Pod::Spec.new do |s|
  s.name         = "MFCategories"
  s.version      = version
  s.summary      = "MFCategories, collect commonly used Objective-C categories extensions."
  s.description  = <<-DESC
                   MFCategories, collect commonly used Objective-C categories extensions.
                   DESC
  s.homepage     = "https://github.com/htmlios/MFCategories"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "WW" => "78649229@qq.com" }
  s.platform     = :ios, "8.0"
  s.ios.deployment_target = "9.0"
  s.requires_arc = true
  s.frameworks = 'Foundation', 'UIKit', 'CoreData', 'QuartzCore', 'CoreLocation', 'MapKit','Security'
  s.libraries    = "z"
  s.source       = { :git => "https://github.com/htmlios/MFCategories.git", :tag => "#{version}" }
  s.source_files = "MFCategories", "MFCategories/*.{h}","MFCategories/**/*.{h,m}"
  s.module_map   = "CommonCrypto/module.modulemap"
  #s.xcconfig    = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
end
