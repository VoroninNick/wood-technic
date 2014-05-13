class CreateVacancies < ActiveRecord::Migration
  def change
    create_table :vacancies do |t|
      t.string :title
      t.text :page_content

      t.timestamps
    end
  end
end
