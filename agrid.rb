module Battleship
  class Grid
    lineA = "|   |   |   |   |   | A"
    @@yA = lineA.split(" ")
    lineB = "|   |   |   |   |   | B"
    @@yB = lineB.split(" ")
    lineC = "|   |   |   |   |   | C"
    @@yC = lineC.split(" ")
    lineD = "|   |   |   |   |   | D"
    @@yD = lineD.split(" ")
    lineE = "|   |   |   |   |   | E"
    @@yE = lineE.split(" ")
    def buildGrid
      puts "  1   2   3   4   5    "
      puts "|---|---|---|---|---|  "
      puts "|   |   |   |   |   | A"
      puts "|---|---|---|---|---|  "
      puts "|   |   |   |   |   | B"
      puts "|---|---|---|---|---|  "
      puts "|   |   |   |   |   | C"
      puts "|---|---|---|---|---|  "
      puts "|   |   |   |   |   | D"
      puts "|---|---|---|---|---|  "
      puts "|   |   |   |   |   | E"
      puts "|---|---|---|---|---|  "
    end

    def modGrid
      puts "  1   2   3   4   5    "
      puts "|---|---|---|---|---|  "
      fixLine("a")
      puts @@yA.join()
      puts "|---|---|---|---|---|  "
      fixLine("b")
      puts @@yB.join()
      puts "|---|---|---|---|---|  "
      fixLine("c")
      puts @@yC.join()
      puts "|---|---|---|---|---|  "
      fixLine("d")
      puts @@yD.join()
      puts "|---|---|---|---|---|  "
      fixLine("e")
      puts @@yE.join()
      puts "|---|---|---|---|---|  "
    end

    def rowMark y, x
      i = 0
      if y.upcase == "A" 
        @@yA.each do
          if i == x.to_i - 1
            @@yA[i] << " O "
          else
            @@yA[i] << "   "
          end
          i += 1
        end
        @@yA.delete_at(@@yA.length - 2)
        @@yA.insert(@@yA.length - 1, "| ")
        lineA = @@yA.join()
        @@yA = lineA.split(" ")
      elsif y.upcase == "B" 
        @@yB.each do
          if i == x.to_i - 1
            @@yB[i] << " O "
          else
            @@yB[i] << "   "
          end
          i += 1
        end
        @@yB.delete_at(@@yB.length - 2)
        @@yB.insert(@@yB.length - 1, "| ")
        lineB = @@yB.join()
        @@yB = lineB.split(" ")
      elsif y.upcase == "C" 
        @@yC.each do
          if i == x.to_i - 1
            @@yC[i] << " O "
          else
            @@yC[i] << "   "
          end
          i += 1
        end
        @@yC.delete_at(@@yC.length - 2)
        @@yC.insert(@@yC.length - 1, "| ")
        lineC = @@yC.join()
        @@yC = lineC.split(" ")
      elsif y.upcase == "D" 
        @@yD.each do
          if i == x.to_i - 1
            @@yD[i] << " O "
          else
            @@yD[i] << "   "
          end
          i += 1
        end
        @@yD.delete_at(@@yD.length - 2)
        @@yD.insert(@@yD.length - 1, "| ")
        lineD = @@yD.join()
        @@yD = lineD.split(" ")
      else
        @@yE.each do
          if i == x.to_i - 1
            @@yE[i] << " O "
          else
            @@yE[i] << "   "
          end
          i += 1
        end
        @@yE.delete_at(@@yE.length - 2)
        @@yE.insert(@@yE.length - 1, "| ")
        lineE = @@yE.join()
        @@yE = lineE.split(" ")
      end
    end

    def fixLine y
      i = 0
      if y.upcase == "A"
        @@yA.each do
          if @@yA[i] == "|" && @@yA[i+1] == "O"
            @@yA[i] << " "
          elsif @@yA[i] == "O"
            @@yA[i] = "O "
          elsif @@yA[i] == "|" && @@yA[i+1] == y.upcase
            @@yA[i] << " "
          elsif @@yA[i] == "|"
            @@yA[i] << "   "
          end
          i += 1
        end
        @@yA
      elsif y.upcase == "B"
        @@yB.each do
          if @@yB[i] == "|" && @@yB[i+1] == "O"
            @@yB[i] << " "
          elsif @@yB[i] == "O"
            @@yB[i] = "O "
          elsif @@yB[i] == "|" && @@yB[i+1] == y.upcase
            @@yB[i] << " "
          elsif @@yB[i] == "|"
            @@yB[i] << "   "
          end
          i += 1
        end
        @@yB
      elsif y.upcase == "C"
        @@yC.each do
          if @@yC[i] == "|" && @@yC[i+1] == "O"
            @@yC[i] << " "
          elsif @@yC[i] == "O"
            @@yC[i] = "O "
          elsif @@yC[i] == "|" && @@yC[i+1] == y.upcase
            @@yC[i] << " "
          elsif @@yC[i] == "|"
            @@yC[i] << "   "
          end
          i += 1
        end
        @@yC
      elsif y.upcase == "D"
        @@yD.each do
          if @@yD[i] == "|" && @@yD[i+1] == "O"
            @@yD[i] << " "
          elsif @@yD[i] == "O"
            @@yD[i] = "O "
          elsif @@yD[i] == "|" && @@yD[i+1] == y.upcase
            @@yD[i] << " "
          elsif @@yD[i] == "|"
            @@yD[i] << "   "
          end
          i += 1
        end
        @@yD
      else
        @@yE.each do
          if @@yE[i] == "|" && @@yE[i+1] == "O"
            @@yE[i] << " "
          elsif @@yE[i] == "O"
            @@yE[i] = "O "
          elsif @@yE[i] == "|" && @@yE[i+1] == y.upcase
            @@yE[i] << " "
          elsif @@yE[i] == "|"
            @@yE[i] << "   "
          end
          i += 1
        end
        @@yE
      end
    end
  end
end

# game = buildGrid.new
# game.yMark("a", 5)
# game.yMark("b", 4)
# game.yMark("b", 3)
# game.yMark("d", 2)
# game.yMark("d", 1)
# game.modGrid()