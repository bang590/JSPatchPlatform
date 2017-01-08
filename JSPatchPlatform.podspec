Pod::Spec.new do |s|

  s.name         = "JSPatchPlatform"
  s.version      = "1.6.6"
  s.summary      = "jspatch.com SDK"

  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.homepage     = "http://jspatch.com"
  s.author             = { "bang590" => "bang590@gmail.com" }
  s.social_media_url   = "http://twitter.com/bang590"

  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/bang590/JSPatchPlatform.git", 
                     :tag => s.version, 
                   }

  s.frameworks   = "Foundation", "JavaScriptCore"
  s.libraries      = "z"
  s.default_subspec = "Core"
  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }

  s.subspec "Core" do |ss|
    ss.vendored_frameworks = "JSPatchPlatform.framework"
    ss.source_files = "JSPatchPlatform.framework/Headers/*.h"
    ss.dependency 'JSPatch'
  end

end
