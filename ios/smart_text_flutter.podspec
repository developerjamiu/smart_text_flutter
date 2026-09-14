#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint smart_text_flutter.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'smart_text_flutter'
  s.version          = '0.0.1'
  s.summary          = 'A Flutter plugin used to find links in plain texts.'
  s.description      = <<-DESC
This plugin can be used to find links in plain texts. It uses NSDataDetector for iOS and TextClassifier for Android.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'smart_text_flutter/Sources/smart_text_flutter/**/*.swift'
  s.dependency 'Flutter'
  s.platform = :ios, '13.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
