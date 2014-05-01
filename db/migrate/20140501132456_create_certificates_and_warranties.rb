class CreateCertificatesAndWarranties < ActiveRecord::Migration
  def change
    create_table :certificates_and_warranties do |t|
      t.string :title
      t.text :page_content

      t.timestamps
    end
  end
end
