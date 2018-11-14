class Line

      attr_accessor :x1, :x2, :y1, :y2, :isVisible
      
      def init(posx1,posx2,posy1,posy2)
            @x1=posx1
            @x2=posx2
            @y1=posy1
            @y2=posy2
            @isVisible = false
      end

      def getX1
            return @x1
      end

      def getX2
            return @x2
      end

      def getY1
            return @y1
      end

      def getY2
            return @y2
      end

      def getVisible
            return @isVisible
      end

      def getPos
            return @x1.to_s + "_" + @x2.to_s + "_" + @y1.to_s + "_" + @y2.to_s
      end
      

end