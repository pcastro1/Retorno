# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_14_201208) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "schools", force: :cascade do |t|
    t.bigint "rbd"
    t.string "nombre_ee"
    t.string "region_nom"
    t.string "comuna_nom"
    t.string "dependencia"
    t.string "tipo_ee"
    t.string "estado_apertura"
    t.date "fecha_solicitud"
    t.date "fecha_inicio"
    t.integer "asistencia"
    t.string "modo_ingreso"
    t.text "comentarios"
    t.string "ok_sostenedor"
    t.string "propuesta_retorno"
    t.string "oficio_salud"
    t.string "respuesta_salud"
    t.string "ok_salud"
    t.string "rex"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
