class BattleShip
  lineA = "|   |   |   |   |   | A"
  @@rowA = lineA.split(" ")
  lineB = "|   |   |   |   |   | B"
  @@rowB = lineB.split(" ")
  lineC = "|   |   |   |   |   | C"
  @@rowC = lineC.split(" ")
  lineD = "|   |   |   |   |   | D"
  @@rowD = lineD.split(" ")
  lineE = "|   |   |   |   |   | E"
  @@rowE = lineE.split(" ")
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
    puts @@rowA.join()
    puts "|---|---|---|---|---|  "
    fixLine("b")
    puts @@rowB.join()
    puts "|---|---|---|---|---|  "
    fixLine("c")
    puts @@rowC.join()
    puts "|---|---|---|---|---|  "
    fixLine("d")
    puts @@rowD.join()
    puts "|---|---|---|---|---|  "
    fixLine("e")
    puts @@rowE.join()
    puts "|---|---|---|---|---|  "
  end

  def rowMark row, col
    i = 0
    if row.upcase == "A" 
      @@rowA.each do
        if i == col.to_i - 1
          @@rowA[i] << " O "
        else
          @@rowA[i] << "   "
        end
        i += 1
      end
      @@rowA.delete_at(@@rowA.length - 2)
      @@rowA.insert(@@rowA.length - 1, "| ")
      lineA = @@rowA.join()
      @@rowA = lineA.split(" ")
    elsif row.upcase == "B" 
      @@rowB.each do
        if i == col.to_i - 1
          @@rowB[i] << " O "
        else
          @@rowB[i] << "   "
        end
        i += 1
      end
      @@rowB.delete_at(@@rowB.length - 2)
      @@rowB.insert(@@rowB.length - 1, "| ")
      lineB = @@rowB.join()
      @@rowB = lineB.split(" ")
    elsif row.upcase == "C" 
      @@rowC.each do
        if i == col.to_i - 1
          @@rowC[i] << " O "
        else
          @@rowC[i] << "   "
        end
        i += 1
      end
      @@rowC.delete_at(@@rowC.length - 2)
      @@rowC.insert(@@rowC.length - 1, "| ")
      lineC = @@rowC.join()
      @@rowC = lineC.split(" ")
    elsif row.upcase == "D" 
      @@rowD.each do
        if i == col.to_i - 1
          @@rowD[i] << " O "
        else
          @@rowD[i] << "   "
        end
        i += 1
      end
      @@rowD.delete_at(@@rowD.length - 2)
      @@rowD.insert(@@rowD.length - 1, "| ")
      lineD = @@rowD.join()
      @@rowD = lineD.split(" ")
    else
      @@rowE.each do
        if i == col.to_i - 1
          @@rowE[i] << " O "
        else
          @@rowE[i] << "   "
        end
        i += 1
      end
      @@rowE.delete_at(@@rowE.length - 2)
      @@rowE.insert(@@rowE.length - 1, "| ")
      lineE = @@rowE.join()
      @@rowE = lineE.split(" ")
    end
  end

  def fixLine row
    i = 0
    if row.upcase == "A"
      @@rowA.each do
        if @@rowA[i] == "|" && @@rowA[i+1] == "O"
          @@rowA[i] << " "
        elsif @@rowA[i] == "O"
          @@rowA[i] = "O "
        elsif @@rowA[i] == "|" && @@rowA[i+1] == row.upcase
          @@rowA[i] << " "
        elsif @@rowA[i] == "|"
          @@rowA[i] << "   "
        end
        i += 1
      end
      @@rowA
    elsif row.upcase == "B"
      @@rowB.each do
        if @@rowB[i] == "|" && @@rowB[i+1] == "O"
          @@rowB[i] << " "
        elsif @@rowB[i] == "O"
          @@rowB[i] = "O "
        elsif @@rowB[i] == "|" && @@rowB[i+1] == row.upcase
          @@rowB[i] << " "
        elsif @@rowB[i] == "|"
          @@rowB[i] << "   "
        end
        i += 1
      end
      @@rowB
    elsif row.upcase == "C"
      @@rowC.each do
        if @@rowC[i] == "|" && @@rowC[i+1] == "O"
          @@rowC[i] << " "
        elsif @@rowC[i] == "O"
          @@rowC[i] = "O "
        elsif @@rowC[i] == "|" && @@rowC[i+1] == row.upcase
          @@rowC[i] << " "
        elsif @@rowC[i] == "|"
          @@rowC[i] << "   "
        end
        i += 1
      end
      @@rowC
    elsif row.upcase == "D"
      @@rowD.each do
        if @@rowD[i] == "|" && @@rowD[i+1] == "O"
          @@rowD[i] << " "
        elsif @@rowD[i] == "O"
          @@rowD[i] = "O "
        elsif @@rowD[i] == "|" && @@rowD[i+1] == row.upcase
          @@rowD[i] << " "
        elsif @@rowD[i] == "|"
          @@rowD[i] << "   "
        end
        i += 1
      end
      @@rowD
    else
      @@rowE.each do
        if @@rowE[i] == "|" && @@rowE[i+1] == "O"
          @@rowE[i] << " "
        elsif @@rowE[i] == "O"
          @@rowE[i] = "O "
        elsif @@rowE[i] == "|" && @@rowE[i+1] == row.upcase
          @@rowE[i] << " "
        elsif @@rowE[i] == "|"
          @@rowE[i] << "   "
        end
        i += 1
      end
      @@rowE
    end
  end
end

game = BattleShip.new
game.rowMark("a", 5)
game.rowMark("b", 4)
game.rowMark("b", 3)
game.rowMark("d", 2)
game.rowMark("d", 1)
game.modGrid()





