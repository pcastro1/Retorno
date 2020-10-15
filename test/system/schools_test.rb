require "application_system_test_case"

class SchoolsTest < ApplicationSystemTestCase
  setup do
    @school = schools(:one)
  end

  test "visiting the index" do
    visit schools_url
    assert_selector "h1", text: "Schools"
  end

  test "creating a School" do
    visit schools_url
    click_on "New School"

    fill_in "Asistencia", with: @school.asistencia
    fill_in "Comentarios", with: @school.comentarios
    fill_in "Comuna nom", with: @school.comuna_nom
    fill_in "Dependencia", with: @school.dependencia
    fill_in "Estado apertura", with: @school.estado_apertura
    fill_in "Fecha inicio", with: @school.fecha_inicio
    fill_in "Fecha solicitud", with: @school.fecha_solicitud
    fill_in "Modo ingreso", with: @school.modo_ingreso
    fill_in "Nombre ee", with: @school.nombre_ee
    fill_in "Oficio salud", with: @school.oficio_salud
    fill_in "Ok salud", with: @school.ok_salud
    fill_in "Ok sostenedor", with: @school.ok_sostenedor
    fill_in "Propuesta retorno", with: @school.propuesta_retorno
    fill_in "Rbd", with: @school.rbd
    fill_in "Region nom", with: @school.region_nom
    fill_in "Respuesta salud", with: @school.respuesta_salud
    fill_in "Rex", with: @school.rex
    fill_in "Tipo ee", with: @school.tipo_ee
    click_on "Create School"

    assert_text "School was successfully created"
    click_on "Back"
  end

  test "updating a School" do
    visit schools_url
    click_on "Edit", match: :first

    fill_in "Asistencia", with: @school.asistencia
    fill_in "Comentarios", with: @school.comentarios
    fill_in "Comuna nom", with: @school.comuna_nom
    fill_in "Dependencia", with: @school.dependencia
    fill_in "Estado apertura", with: @school.estado_apertura
    fill_in "Fecha inicio", with: @school.fecha_inicio
    fill_in "Fecha solicitud", with: @school.fecha_solicitud
    fill_in "Modo ingreso", with: @school.modo_ingreso
    fill_in "Nombre ee", with: @school.nombre_ee
    fill_in "Oficio salud", with: @school.oficio_salud
    fill_in "Ok salud", with: @school.ok_salud
    fill_in "Ok sostenedor", with: @school.ok_sostenedor
    fill_in "Propuesta retorno", with: @school.propuesta_retorno
    fill_in "Rbd", with: @school.rbd
    fill_in "Region nom", with: @school.region_nom
    fill_in "Respuesta salud", with: @school.respuesta_salud
    fill_in "Rex", with: @school.rex
    fill_in "Tipo ee", with: @school.tipo_ee
    click_on "Update School"

    assert_text "School was successfully updated"
    click_on "Back"
  end

  test "destroying a School" do
    visit schools_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "School was successfully destroyed"
  end
end
