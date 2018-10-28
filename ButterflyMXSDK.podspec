Pod::Spec.new do |s|
  s.name = 'ButterflyMXSDK'
  s.version = '0.10'
  s.license = { :type => 'Apache-2.0', :file => 'LICENSE' }
  s.summary = 'A Swift framework to implement ButterflyMX SDK'
  s.homepage = 'https://github.com/zuchie/bmxsdk'
  s.authors = {'zuchie' => 'zuchie@gmail.com'}
  s.platform          = :ios
  s.source = { :http => 'https://github.com/zuchie/bmxsdk/raw/master/ButterflyMXSDK.zip' }

  s.ios.deployment_target = '10.0'

  s.ios.preserve_paths = 'pjsip/**/*'
  s.ios.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}/ButterflyMXSDK/pjsip/include"',
                      'LIBRARY_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}/ButterflyMXSDK/pjsip/lib"',
                      'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}/ButterflyMXSDK"'
                      }

  s.ios.vendored_frameworks = 'ButterflyMXSDK.framework'

  s.dependency 'Alamofire', '~> 4.7.3'
end
