class CalculadorBisiestos
  def initialize anio
    @anio=anio
  end
  def value?()
    anio_bisiesto_tipico() && !(anio_normal_atipico())
  end
  private
  def anio_bisiesto_tipico()
    @anio % 4 == 0
  end
  private
  def anio_normal_atipico()
    (@anio % 100 == 0) && !(@anio % 400 ==0)
  end
end