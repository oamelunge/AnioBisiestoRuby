require './calculador_bisiestos'
require 'minitest/autorun'


class PrestamoTest < MiniTest::Unit::TestCase
  def llamar_calculador (anio)
    @calculadorAnioBisiesto = CalculadorBisiestos.new (anio)
    @calculadorAnioBisiesto.value?
  end

  def test_anio_bisiesto_tipico
    assert (llamar_calculador(1996))
  end
  def test_anio_normal
    assert !(llamar_calculador(2001))
  end

  def test_anio_normal_notipico
    assert !(llamar_calculador(1900))
  end

 def test_anio_bisiesto_notipico
   assert (llamar_calculador(2000))
 end

end


