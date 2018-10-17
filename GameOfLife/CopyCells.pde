public class CopyCells{


void copyGrid(){

  for(int y=0; y<numberOfRows; y++){
    for(int x=0; x<numberOfColumns; x++){

      if (cells[x][y].alive==true){
        oldCells[x][y].alive=true;
      }

      else{
        oldCells[x][y].alive=false;
      }

    }
  }

}

}
