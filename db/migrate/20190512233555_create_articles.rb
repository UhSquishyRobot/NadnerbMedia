class CreateArticles < ActiveRecord::Migration[5.2]
  def self.up
    create_table :articles do |t|
    	t.string :title
    	t.text :description
    	t.timestamps
    end
  end
end
