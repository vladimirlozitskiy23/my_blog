class Article < ApplicationRecord

    def self.ransackable_attributes(auth_object = nil)
        ["body", "created_at", "id", "title", "updated_at"]
    end

    def self.ransackable_associations(auth_object = nil)
        []
    end
        
end
