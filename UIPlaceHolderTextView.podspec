Pod::Spec.new do |s|
  s.name     = 'UIPlaceHolderTextView'
  s.version  = '1.1.1'
  s.license  = 'MIT'
  s.summary  = 'Placeholder in UITextView'
  s.license  = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage = 'https://github.com/flypigz/UIPlaceHolderTextView'
  s.author   = { 'flypigz' => 'flypigz@github.com' }
  # !! not original(Erica's) source
  s.source   = { :git => 'https://github.com/akuraru/UIPlaceHolderTextView.git', :tag => s.version.to_s}
  s.platform = :ios, '7.0'
  s.source_files = 'UIPlaceHolderTextView.{h,m}'
  s.framework = 'UIKit'
  s.dependency 'Masonry'
end
