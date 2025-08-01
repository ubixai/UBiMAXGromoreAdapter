
Pod::Spec.new do |s|
  s.name             = 'UBiMAXGromoreAdapter'
  s.version          = '7.0.0.1.1'
  s.summary          = 'UBiX聚合Sass SDK Gromore Adapter'
  s.homepage         = 'https://www.ubixai.com/product/md'
  # s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zhugq' => 'guoqiang.zhu@ubixai.com' }
  s.source           = { :git => 'https://github.com/ubixai/UBiMAXGromoreAdapter.git', :tag => s.version.to_s }
  s.ios.deployment_target = '11.0'

  s.static_framework = true
  s.vendored_frameworks = 'UBiMAXGromoreAdapter.framework'
  
 s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
   'OTHER_LINK_FLAG' => '$(inherited) -ObjC' }

 s.dependency 'Ads-CN-Beta/BUAdSDK', '7.0.0.1'
 s.dependency 'Ads-CN-Beta/CSJMediation', '7.0.0.1'

 s.dependency 'UBiMAXAdSDK'
 s.dependency 'UBiMAXNative'

end
