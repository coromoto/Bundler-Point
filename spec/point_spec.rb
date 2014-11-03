require 'spec_helper'
require 'point'

describe Point do
  context "# almacenamiento de las coordenadas" do
    it "Se almacena correctamente la coordenada X" do
      p1 = Point::Point.new(1,1)
      expect(p1.x).to eq(1)
    end
    it "Se almacena correctamente la coordenada Y" do
      p1 = Point::Point.new(1,1)
      expect(p1.y).to eq(1)
    end
  end # context

  context "# producto por un escalar" do
    before :each do
      @p1 = Point::Point.new(1,1)
    end    
    
    it "la coordenada x y la coordenada y se multiplican por el valor" do
      p2 = @p1*5 
      expect(p2.x).to eq(5)
      expect(p2.y).to eq(5)
    end
    it "Si se multiplica por -1 se obtiene el opuesto" do
      p2 = @p1*-1 
      expect(p2.x).to eq(-1)
      expect(p2.y).to eq(-1)
    end
  end
  
  context "# opuesto de un punto" do
    it "la coordenada x y la coordenada y se multiplican por menos uno" do
      p1 = Point::Point.new(1,1)
      p2 = - p1 
      expect(p2.x).to eq(-1)
      expect(p2.y).to eq(-1)
    end
  end
  
  context "# suma de dos puntos " do
    it "coordenada x = original.x + otro.x, coordenada y = original.y + otro.y " do
      p1 = Point::Point.new(1,1) 
      p2 = p1 + p1
      expect(p2.x).to eq(2)
      expect(p2.y).to eq(2)
    end
  end
  
  context "# comparaciones entre dos puntos basada en su distancia al origen" do
    before :each do
       @p1 = Point::Point.new(1,1)
       @p2 = Point::Point.new(2,2)
    end
    it "El punto (1,1) es menor que el punto (2,2)" do
      expect(@p1 < @p2).to eq(true)
    end
    it "El punto (1,1) es menor o igual que el punto (2,2)" do
      expect(@p1 <= @p2).to eq(true)
    end
    it "El punto (2,2) es mayor que el punto (1,1)" do
      expect(@p2 > @p1).to eq(true)
    end
    it "El punto (2,2) es mayor o igual que el punto (1,1)" do
      expect(@p2 >= @p1).to eq(true)
    end
    it "El punto (1,1) es igual al punto (1,1)" do
      expect(@p1 == @p1).to eq(true)
    end
  end # context
end # describe
