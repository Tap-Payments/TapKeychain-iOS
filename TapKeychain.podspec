Pod::Spec.new do |tapKeychain|
    
    tapKeychain.platform                = :ios
    tapKeychain.ios.deployment_target   = '8.0'
    tapKeychain.swift_version           = '4.2'
    tapKeychain.name                    = 'TapKeychain'
    tapKeychain.summary                 = 'Basic swift wrapper for iOS keychain.'
    tapKeychain.requires_arc            = true
    tapKeychain.version                 = '1.0.1'
    tapKeychain.license                 = { :type => 'MIT', :file => 'LICENSE' }
    tapKeychain.author                  = { 'Tap Payments' => 'hello@tap.company' }
    tapKeychain.homepage                = 'https://github.com/Tap-Payments/TapKeychain-iOS'
    tapKeychain.source                  = { :git => 'https://github.com/Tap-Payments/TapKeychain-iOS.git', :tag => tapKeychain.version.to_s }
    tapKeychain.source_files            = 'TapKeychain/**/*.swift'
    
end
