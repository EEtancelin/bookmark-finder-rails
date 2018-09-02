class Bookmark < ApplicationRecord
    include AlgoliaSearch
    validates :url, presence: true
    validates_inclusion_of :rating, in: 0..5

    before_save :strip_http_prefix

    algoliasearch do
        # list of attribute used to build an Algolia record
        attributes :url , :title , :description, :thumbnail_url, :rating

        # the `searchableAttributes` (formerly known as attributesToIndex) setting defines the attributes
        # you want to search in: here `title`, `subtitle` & `description`.
        # You need to list them by order of importance. `description` is tagged as
        # `unordered` to avoid takng the position of a match into account in that attribute.
        searchableAttributes ['title','url']
  end

  def strip_http_prefix
    self.url = self.url.remove("https://").remove("http://")
  end


end
