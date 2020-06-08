class CreateListsTable < ActiveRecord::Migration
    def change 
        create_table :lists do |t|
            t.string :title
            t.string :list1
            t.string :list2
            t.string :list3
            t.string :list4
            t.string :list5
            t.string :list6
            t.string :list7
            t.string :list8
            t.string :list9
            t.string :list10
            t.integer :user_id
        end
    end
end