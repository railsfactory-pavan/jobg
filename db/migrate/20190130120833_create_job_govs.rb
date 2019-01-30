class CreateJobGovs < ActiveRecord::Migration[5.2]
  def change
    create_table :job_govs do |t|
      t.string :post
      t.string :vacancy
      t.string :qualification
      t.string :fitness
      t.string :age
      t.string :place
      t.string :fee
      t.string :date
      t.string :link

      t.timestamps
    end
  end
end
