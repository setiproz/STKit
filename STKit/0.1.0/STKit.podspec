#
# Be sure to run `pod lib lint STKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'STKit'
  s.version          = '0.1.0'
  s.summary          = 'This library can make iOS development easily'
  s.description      = <<-DESC
This library can make iOS development easily. It will include UIView, draw, animation, file operation, db operation, and anything can make the developer happy ^_^
                       DESC
  s.homepage         = 'https://github.com/setiproz/STKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'setipro' => 'setipro@163.com' }
  s.source           = { :git => 'https://github.com/setiproz/STKit.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.source_files = 'STKit/Classes/**/*'
end
