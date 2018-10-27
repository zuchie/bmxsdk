Pod::Spec.new do |s|
  s.name = 'ButterflyMXSDK'
  s.version = '0.1'
  s.license = { :type => 'Apache-2.0', :file => 'LICENSE' }
  s.summary = 'A Swift framework to implement ButterflyMX SDK'
  s.homepage = 'https://github.com/zuchie/bmxsdk.git'
  s.authors = {'zuchie' => 'zuchie@gmail.com'}
  s.platform          = :ios
  s.source = { :http => 'https://github.com/zuchie/bmxsdk/raw/master/ButterflyMXSDK.zip' }

  s.ios.deployment_target = '10.0'
  s.ios.vendored_frameworks = 'ButterflyMXSDK.framework'
  s.ios.vendored_libraries = 'ButterflyMXSDK/pjsip/lib/pjsip.a'
  s.ios.xcconfig = { 'USER_HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/pjsip/include"' }

  s.dependency 'Alamofire', '~> 4.7.3'
end
