#
#  Copyright © 2023 Medallia. Use subject to licensing terms.
#

Pod::Spec.new do |s|
  s.name             = 'medallia-digital-ios-sdk'
  s.version          = '4.8.0'
  s.summary          = 'Medallia Digital SDK'
 
  s.description      = <<-DESC
  Collect real-time customer feedback across digital channels, including web, mobile and in-app
                       DESC

  s.homepage         = 'https://github.com/medallia/digital-ios-sdk'
  s.license          = { :type => "Commercial", :text => "Copyright © 2023 Medallia. Use subject to licensing terms." }
  s.authors          = { 'Medallia' => 'cocoapods-digital@medallia.com' }
  s.source           = { :git => 'https://github.com/medallia/digital-ios-sdk.git', :tag => s.version }

  s.ios.deployment_target = '12.0'
  s.ios.vendored_frameworks = 'artifacts/MedalliaDigitalSDK.xcframework'
end
