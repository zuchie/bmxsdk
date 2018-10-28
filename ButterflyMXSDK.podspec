Pod::Spec.new do |s|
  s.name = 'ButterflyMXSDK'
  s.version = '0.3'
  s.license = { :type => 'Apache-2.0', :file => 'LICENSE' }
  s.summary = 'A Swift framework to implement ButterflyMX SDK'
  s.homepage = 'https://github.com/zuchie/bmxsdk.git'
  s.authors = {'zuchie' => 'zuchie@gmail.com'}
  s.platform          = :ios
  s.source = { :http => 'https://github.com/zuchie/bmxsdk/raw/master/ButterflyMXSDK.zip' }

  s.ios.deployment_target = '10.0'
  s.ios.vendored_frameworks = 'ButterflyMXSDK.framework'

  #s.ios.source_files = 'pjsip/include/**/*.{h,hpp}'
  #s.ios.public_header_files = 'pjsip/include/**/*.{h,hpp}'
  #s.ios.header_dir = 'include'
  s.ios.preserve_paths = 'pjsip/include/**/*.{h,hpp}', 'pjsip/lib/pjsip.a'
  s.ios.vendored_libraries = 'pjsip/lib/pjsip.a'

  s.ios.libraries = 'pjsip'
  s.ios.requires_arc = false
  s.ios.xcconfig = { 'USER_HEADER_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}/ButterflyMXSDK/pjsip/include"' }

  s.dependency 'Alamofire', '~> 4.7.3'
end
