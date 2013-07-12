Pod::Spec.new do |s|
  s.name = 'PSUpdateApp'
  s.version = '1.0.6'
  s.license = 'MIT'
  s.summary = 'PSUpdateApp is a simple method to notify users that a new version of your iOS app is available.'
  s.homepage = 'https://github.com/danielebogo/PSUpdateApp'
  s.author = { 'Daniele Bogo' => 'daniele@paperstreetsoapdesign.com' }
  s.source = { :git => 'https://github.com/danielebogo/PSUpdateApp.git', :tag => '1.0.6' }
  s.platform = :ios, '5.0'
  s.requires_arc = true
  
  s.source_files = 'PSUpdateApp/*.{h,m}'
  s.resource = 'PSUpdateApp/Localizations/**'

  s.dependency 'AFNetworking','~>1.3.0'
  s.prefix_header_contents = <<-EOS
  #import <Availability.h>
  
  #define _AFNETWORKING_PIN_SSL_CERTIFICATES_
  
  #if __IPHONE_OS_VERSION_MIN_REQUIRED
    #import <SystemConfiguration/SystemConfiguration.h>
    #import <MobileCoreServices/MobileCoreServices.h>
    #import <Security/Security.h>
  #else
    #import <SystemConfiguration/SystemConfiguration.h>
    #import <CoreServices/CoreServices.h>
    #import <Security/Security.h>
  #endif
  EOS
    end   
end