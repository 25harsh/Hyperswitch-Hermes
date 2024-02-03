version = "0.72.6"

Pod::Spec.new do |s|
    s.name                      = 'Hyperswitch-Hermes'
    s.version                   =  version
    s.summary                   = 'hermes-engine'
    s.description               = 'hermes-engine for hyperswitchcore'
    s.homepage                  = 'https://hyperswitch.io/'
    s.author                    = 'Hyperswitch'
    s.license                   = { :type => 'MIT', :file => 'LICENSE' }
    s.platforms                 = { ios: "11.0" }
    s.source                    = {
      http: "https://repo1.maven.org/maven2/com/facebook/react/react-native-artifacts/#{version}/react-native-artifacts-#{version}-hermes-ios-debug.tar.gz"
    }

    s.preserve_paths           = "destroot/bin/*"
    s.source_files             = "destroot/include/**/*.h"
    s.header_mappings_dir      = "destroot/include"
    s.ios.vendored_frameworks  = "destroot/Library/Frameworks/universal/hermes.xcframework"
    s.xcconfig              = { "CLANG_CXX_LANGUAGE_STANDARD" => "c++17", "CLANG_CXX_LIBRARY" => "compiler-default", "GCC_PREPROCESSOR_DEFINITIONS" => "HERMES_ENABLE_DEBUGGER=1" }
  end
