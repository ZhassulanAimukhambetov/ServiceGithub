
Pod::Spec.new do |spec|

spec.platform                = :ios
spec.ios.deployment_target   = "8.0"
spec.name                    = "ServiceGithub"
spec.summary                 = "This is such a framework for OAuth authotization on GITHUB.com"
spec.requires_arc            = true
spec.ios.vendored_frameworks = 'ServiceGithub.framework'

spec.version                 = "0.0.2"

spec.license                 = { :type => "MIT", :file => "LICENSE" }

spec.author                  = { "Zhassulan" => "aimzhas@gmail.com" }

spec.homepage                = "https://github.com/areht007"

spec.source                  = { :http => 'https://github.com/areht007/SeviceGithub/blob/master/ServiceGithub0.2.0.zip?raw=true' }
spec.exclude_files           = "Classes/Exclude"
spec.swift_version           = ['4.2', '5.0', '5.1']
spec.dependency                'SwiftKeychainWrapper'

end





