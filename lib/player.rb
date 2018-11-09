class Player
      attr_accessor :name, :color, :score, :mark

      def init(name, color, mark, score)
            @score = score
            @name = name
            @color = color
            @mark = mark
      end

      def winPoint
            @score = @score + 1
      end

      def setScore(new_score)
            @score = new_score;
      end
end