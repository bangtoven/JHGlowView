#
# Be sure to run `pod lib lint JHGlowView.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "JHGlowView"
  s.version          = "0.1.0"
  s.summary          = "Custom progress view with glow effect."
  s.homepage         = "https://github.com/bangtoven/JHGlowView"
  s.license          = 'MIT'
  s.author           = { "Jungho Bang" => "me@bangtoven.com" }
  s.source           = { :git => "https://github.com/bangtoven/JHGlowView.git", :tag => s.version.to_s }

  s.platform     = :ios, '4.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
end
