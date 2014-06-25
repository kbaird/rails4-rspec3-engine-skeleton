class CreatePlanetExpressZoidbergs < ActiveRecord::Migration
  def change
    create_table :planet_express_zoidbergs do |t|
      t.string :name

      t.timestamps
    end
  end
end
