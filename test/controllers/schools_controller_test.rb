require 'test_helper'

class SchoolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @school = schools(:one)
  end

  test "should get index" do
    get schools_url
    assert_response :success
  end

  test "should get new" do
    get new_school_url
    assert_response :success
  end

  test "should create school" do
    assert_difference('School.count') do
      post schools_url, params: { school: { asistencia: @school.asistencia, comentarios: @school.comentarios, comuna_nom: @school.comuna_nom, dependencia: @school.dependencia, estado_apertura: @school.estado_apertura, fecha_inicio: @school.fecha_inicio, fecha_solicitud: @school.fecha_solicitud, modo_ingreso: @school.modo_ingreso, nombre_ee: @school.nombre_ee, oficio_salud: @school.oficio_salud, ok_salud: @school.ok_salud, ok_sostenedor: @school.ok_sostenedor, propuesta_retorno: @school.propuesta_retorno, rbd: @school.rbd, region_nom: @school.region_nom, respuesta_salud: @school.respuesta_salud, rex: @school.rex, tipo_ee: @school.tipo_ee } }
    end

    assert_redirected_to school_url(School.last)
  end

  test "should show school" do
    get school_url(@school)
    assert_response :success
  end

  test "should get edit" do
    get edit_school_url(@school)
    assert_response :success
  end

  test "should update school" do
    patch school_url(@school), params: { school: { asistencia: @school.asistencia, comentarios: @school.comentarios, comuna_nom: @school.comuna_nom, dependencia: @school.dependencia, estado_apertura: @school.estado_apertura, fecha_inicio: @school.fecha_inicio, fecha_solicitud: @school.fecha_solicitud, modo_ingreso: @school.modo_ingreso, nombre_ee: @school.nombre_ee, oficio_salud: @school.oficio_salud, ok_salud: @school.ok_salud, ok_sostenedor: @school.ok_sostenedor, propuesta_retorno: @school.propuesta_retorno, rbd: @school.rbd, region_nom: @school.region_nom, respuesta_salud: @school.respuesta_salud, rex: @school.rex, tipo_ee: @school.tipo_ee } }
    assert_redirected_to school_url(@school)
  end

  test "should destroy school" do
    assert_difference('School.count', -1) do
      delete school_url(@school)
    end

    assert_redirected_to schools_url
  end
end
