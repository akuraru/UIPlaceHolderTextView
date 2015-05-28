Pod::Spec.new do |s|
  s.name     = 'UIPlaceHolderTextView'
  s.version  = '1.0'
  s.license  = 'MIT'
  s.summary  = 'Placeholder in UITextView'
  s.homepage = 'https://github.com/flypigz/UIPlaceHolderTextView'
  s.author   = { 'flypigz' => 'flypigz@github.com' }
  # !! not original(Erica's) source
  s.source   = { :git => 'https://github.com/akuraru/UIPlaceHolderTextView.git' }
  s.platform = :ios  
  s.source_files = 'UIPlaceHolderTextView.{h,m}'
  s.framework = 'UIKit'
  s.dependency = 'Masonry'
end
