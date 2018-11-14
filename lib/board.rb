require './lib/dot'
require './lib/line'

class Board

      attr_accessor :rows, :columns
      
      def init(rows,columns)
            @rows = rows
            @columns = columns
            @space = 40
            @dots = Array[]

      end

      def getRows
            return @rows
      end

      def getColumns
            return @columns
      end

end