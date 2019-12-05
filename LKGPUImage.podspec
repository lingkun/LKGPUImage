#
# Be sure to run `pod lib lint LKGPUImage.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LKGPUImage'
  s.version          = '0.1.0'
  s.summary          = 'GPU 的手动集成 LKGPUImage.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                       GPUImage 手动集成，修改bug。利用滤镜完善图片的清晰度。
                       DESC

  s.homepage         = 'https://github.com/lingkun/LKGPUImage'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lingkun' => '2858850100@qq.com' }
  s.source           = { :git => 'https://github.com/lingkun/LKGPUImage.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'LKGPUImage/Classes/**/*'
  
  # s.resource_bundles = {
  #   'LKGPUImage' => ['LKGPUImage/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.dependency 'libextobjc', '~> 0.6'
end
