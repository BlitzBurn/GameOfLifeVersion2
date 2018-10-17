CheckCells checkCells;
CopyCells copyCells;
public class Controller{

boolean gridCreated=false;

  void update(){

    if(gridCreated==false){
      createCellsCall.createCells();
      gridCreated=true;
    }

    copyCells.copyGrid();
    checkCells.checkGrid();

    for(int y=0; y<numberOfRows; y++){
        for(int x=0; x<numberOfColumns; x++){


          cells[x][y].draw();


        }
      }

        generations=generations+1;
        println(generations);
  }


}
