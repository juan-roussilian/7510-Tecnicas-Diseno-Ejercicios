require 'spec_helper'

describe 'Departamento' do

  it 'Departamento con sensor de puerta activo esta comprometido' do
    sensor_puerta = SensorSimple.new(1)
    sensor_movimiento = SensorMovimiento.new(3)
    sensor_camara = SensorSimple.new(0)
    departamento = Departamento.new(sensor_puerta, sensor_movimiento, sensor_camara)
    expect(departamento.estado).to eq 'COMPROMETIDA'
  end
  it 'Departamento sin sensores activos esta asegurado' do
    sensor_puerta = SensorSimple.new(0)
    sensor_movimiento = SensorMovimiento.new(2)
    sensor_camara = SensorSimple.new(0)
    departamento = Departamento.new(sensor_puerta, sensor_movimiento, sensor_camara)
    expect(departamento.estado).to eq 'ASEGURADA'
  end

end
