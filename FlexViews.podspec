Pod::Spec.new do |s|
  s.name             = 'FlexViews'
  s.version          = '1.1'
  s.license          = 'MIT'
  s.summary          = 'Flexible view components with style'
  s.homepage         = 'https://github.com/mjrehder/FlexViews.git'
  s.authors          = { 'Martin Jacob Rehder' => 'gitrepocon01@rehsco.com' }
  s.source           = { :git => 'https://github.com/mjrehder/FlexViews.git', :tag => s.version }
  s.swift_version    = '5.0'
  s.ios.deployment_target = '12.1'

  s.dependency 'FlexMenu'
  s.dependency 'ImageExtensions'

  s.framework    = 'UIKit'
  s.source_files = 'FlexViews/**/*.swift'
  s.requires_arc = true
end
