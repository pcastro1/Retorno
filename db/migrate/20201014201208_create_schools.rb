class CreateSchools < ActiveRecord::Migration[6.0]
  def change
    create_table :schools do |t|
      t.integer :rbd
      t.string :nombre_ee
      t.string :region_nom
      t.string :comuna_nom
      t.string :dependencia
      t.string :tipo_ee
      t.string :estado_apertura
      t.date :fecha_solicitud
      t.date :fecha_inicio
      t.integer :asistencia
      t.string :modo_ingreso
      t.text :comentarios
      t.string :ok_sostenedor
      t.string :propuesta_retorno
      t.string :oficio_salud
      t.string :respuesta_salud
      t.string :ok_salud
      t.string :rex

      t.timestamps
    end
  end
end
