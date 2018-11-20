

Pod::Spec.new do |s|

    s.name         = "LocalPods"
    s.version      = "0.0.1"
    s.summary      = "Local Framework"

    s.description  = <<-DESC
                    Local Framework desc
                   DESC
    s.homepage     = "http://www.Local.com"
    s.license      = "MIT"
    s.author             = { "zyj" => "550621009@qq.com" }

    s.source  = { :git => 'https://github.com/edwardair' }
    #  s.module_name = "HHLocals"
    s.platform     = :ios, "8.0"

    s.source_files = 'Classes/*.swift'
    s.vendored_frameworks = [
    'Units/BmobSDK.framework',
    'Units/RevealServer.framework',
    ]
    s.frameworks = 'CoreLocation','Security','Security','CoreGraphics','MobileCoreServices','CFNetwork','CoreTelephony','SystemConfiguration','photos'
    s.libraries = 'z.1.2.5','icucore','sqlite3','c++'
    s.requires_arc = true
    s.static_framework  =  true

    s.subspec 'BDTTS' do |bdtts|#百度语音合成
        bdtts.source_files = 'Units/BDSpeach/BDSClientHeaders/TTS/','Units/BDSpeach/AVAudioSession+OCSupport.{h,m}'
        bdtts.resources = [
        'Units/BDSpeach/BDSClientResource/TTS/*.dat',
        ]
        bdtts.vendored_library = 'Units/BDSpeach/BDSClientLib/libBaiduSpeechSDK.a'
        bdtts.framework = 'AVFoundation','GLKit','SystemConfiguration','AudioToolbox','CFNetwork','CoreLocation','CoreTelephony'
        bdtts.libraries = 'iconv','z.1.2.5','sqlite3','c++'
        bdtts.public_header_files = 'Units/BDSpeach/BDSClientHeaders/TTS/','Units/BDSpeach/AVAudioSession+OCSupport.h'
        bdtts.requires_arc = true
    end

end




