Pod::Spec.new do |s|

  s.name         = "JSPatchPlatform"
  s.version      = "1.6"
  s.summary      = "jspatch.com SDK"

  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.homepage     = "http://jspatch.com"
  s.author             = { "bang590" => "bang590@gmail.com" }
  s.social_media_url   = "http://twitter.com/bang590"

  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/bang590/JSPatchPlatform.git", 
                     :tag => s.version, 
                     :submodules => true  
                   }

  s.frameworks   = "Foundation", "JavaScriptCore"
  s.library      = "z"
  s.default_subspec = "Core"
  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }

  s.subspec "Core" do |ss|
    ss.vendored_frameworks = "JSPatchPlatform.framework"
    ss.resource = "JSPatchPlatform.framework"
    ss.source_files = "JSPatchPlatform.framework/Headers/*.h"
    ss.public_header_files = "JSPatchPlatform.framework/Headers/*.h"
  end

  #s.subspec "Extensions" do |ss|
  #  ss.ios.source_files = "JSPatch/Extensions/*.*" 
  #  ss.ios.public_header_files = "JSPatch/Extensions/*.h"
  #  ss.dependency 'JSPatchPlatform/Core'
  #end

  s.subspec "JPCFunction" do |ss|
    ss.ios.source_files = "JSPatch/Extensions/JPCFunction/**/*.*" 
    ss.ios.public_header_files = "JSPatch/Extensions/JPCFunction/**/*.h"
    ss.dependency 'JSPatchPlatform/Core'
  end

  s.subspec "JPCFunctionBinder" do |ss|
    ss.ios.source_files = "JSPatch/Extensions/JPCFunctionBinder/**/*.*" 
    ss.ios.public_header_files = "JSPatch/Extensions/JPCFunctionBinder/**/*.h"
    ss.dependency 'JSPatchPlatform/Core'
  end
end
