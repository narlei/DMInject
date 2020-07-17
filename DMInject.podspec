#
# Be sure to run `pod lib lint DMInject.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DMInject'
  s.version          = '0.1.3'
  s.summary          = 'DMInject is a Dependency Manager that helps you to clear your code and be more productive.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
DMInject is a Dependency Manager that helps you to clear your code and be more productive. 
Map your Protocols in one place and use in app of your app without reference that. It helps you to make testes and change behaviors.
                       DESC

  s.homepage         = 'https://github.com/narlei/DMInject'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Narlei Moreira' => 'narlei.guitar@gmail.com' }
  s.source           = { :git => 'https://github.com/narlei/DMInject.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/narleimoreira'

  s.swift_versions = '5.0'
  s.ios.deployment_target = '8.0'

  s.source_files = 'DMInject/Classes/**/*'
  
  # s.resource_bundles = {
  #   'DMInject' => ['DMInject/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
