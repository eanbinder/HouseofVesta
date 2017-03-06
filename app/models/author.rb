class Author < ApplicationRecord
    has_and_belongs_to_many :sources
    
    #, :join_table => "authors_sources", :class_name => "Source"
end
