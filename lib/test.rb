class Test

      def crearMatriz(num)
            matrix = Array.new(3, [])#{Array.new(3,0)}  #=> [[], [], []]

            for i in 0...3
                  for j in 0...3
                    matrix[i][j] = num
                  end
            end
            return matrix.to_s
      end
      
end