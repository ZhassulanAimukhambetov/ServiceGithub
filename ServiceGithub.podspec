
Pod::Spec.new do |spec|

spec.platform     = :ios
spec.ios.deployment_target = "12.0"
spec.name         = "ServiceGithub"
spec.summary      = "This is such a framework for OAuth authotization on GITHUB.com"
spec.requires_arc = true
spec.ios.vendored_frameworks = 'ServiceGithub.framework'

spec.version      = "0.0.1"

spec.license      = { :type => "MIT", :file => "LICENSE" }

spec.author             = { "Zhassulan Aimukhambetov" => "aimzhas@gmail.com" }

spec.homepage     = "https://github.com/ZhassulanAimukhambetov"

spec.source            = { :http => 'https://github.com/ZhassulanAimukhambetov/ServiceGithub/blob/master/ServiceGithub.zip?raw=true' }
spec.exclude_files = "Classes/Exclude"
spec.swift_version = '4.0'
spec.framework  = "UIKit"
spec.dependency 'SwiftKeychainWrapper'


end





