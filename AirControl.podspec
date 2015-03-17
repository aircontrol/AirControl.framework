Pod::Spec.new do |s|
  s.name         = "AirControl"
  s.version      = "2.0.4"
  s.summary      = "Make instant changes to your native apps from air-control.com"
  #s.description  = <<-DESC                 DESC
  s.homepage     = "http://air-control.com"
  s.license      = {
    :type => 'Commercial',
    :text => <<-LICENSE
               Copyright (C) 2015 Make Apps Better LTD. All Rights Reserved.
               http://air-control.com
    LICENSE
  }
  s.author       = { "aircontrol" => "support@air-control.com" }
  s.requires_arc    = false
  s.platform     = :ios, '5.0'
  s.source       = { :git => "https://github.com/aircontrol/AirControl.framework.git", :tag => s.version.to_s }
  s.source_files = 'AirControl/*.h'
  s.preserve_paths = 'AirControl/*.a'
  s.library = 'nativeCSS'
  s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/AirControl/AirControl"', 'OTHER_LDFLAGS' => '-lObjC' }
  s.frameworks = 'CoreText', 'QuartzCore', 'UIKit', 'CoreGraphics', 'CoreImage', 'Accelerate'

end
