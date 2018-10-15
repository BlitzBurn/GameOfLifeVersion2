CheckCells checkCells;
public class Controller{

  void update(){
   
    for(int y=0; y<numberOfRows; y++){
        for(int x=0; x<numberOfColumns; x++){
        
          checkCells.checkGrid();
          cells[x][y].draw();
          
        }
      }
    
    
    
  }


}
