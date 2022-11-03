class House < ApplicationRecord 
    has_many(
        :person,
        class_name:'Person'
        foreign_key: :address
        primary_key: :id
    )
end