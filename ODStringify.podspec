Pod::Spec.new do |s|
  s.name         = 'ODStringify'
  s.version      = '1.1.2'
  s.summary      = 'Make string from functions, classes, properties and defines safely'
  s.homepage     = 'https://github.com/Rogaven/ODStringify'
  s.license      = { :type => 'MIT', :file => 'LICENSE.txt' }
  s.author       = { 'Alexey Nazaroff' => 'alexx.nazaroff@gmail.com' }
  s.source       = { :git => 'https://github.com/Rogaven/ODStringify.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/nazarff'

  s.ios.deployment_target = '5.0'
  s.osx.deployment_target = '10.6'
  s.watchos.deployment_target = '1.0'
  s.tvos.deployment_target = '9.0'

  pch_TARGETS = <<-EOS
#ifndef TARGET_OS_IOS
  #define TARGET_OS_IOS TARGET_OS_IPHONE
#endif
#ifndef TARGET_OS_WATCH
  #define TARGET_OS_WATCH 0
#endif
#ifndef TARGET_OS_TV
  #define TARGET_OS_TV 0
#endif
EOS
  s.prefix_header_contents = pch_TARGETS
  s.requires_arc = true
  s.framework    = 'Foundation'
  s.source_files = 'src/**/*'
  s.public_header_files = 'src/include/**/*'
end
