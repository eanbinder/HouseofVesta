class Source < ApplicationRecord
    acts_as_taggable
    acts_as_taggable_on :subjects, :triggers
    has_and_belongs_to_many :authors
    
    #, :join_table => "authors_sources", :class_name => "Author"
end
