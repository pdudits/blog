require 'zurb-foundation'
require 'sass_functions'

Awestruct::Extensions::Pipeline.new do

  extension Awestruct::Extensions::Posts.new '/posts'
  helper Awestruct::Extensions::Relative
  helper Awestruct::Extensions::Partial
  # extension Awestruct::Extensions::Indexifier.new
  # Indexifier *must* come before Atomizer
  extension Awestruct::Extensions::Tagger.new( :posts,
                                               '/_layouts/tag/index',
                                               '/tags',
                                               :per_page=>10 )
  # extension Awestruct::Extensions::Atomizer.new :posts, '/feed.atom'
end
