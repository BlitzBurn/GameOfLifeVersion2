public class CreateCells{

void createCells(){
  for(int y=0; y<numberOfColumns; y++){
    for(int x=0; x<numberOfRows; x++){

      cells[x][y]= new GameObject(x*cellSize, y*cellSize, cellSize);

              if(random(0,100)<fillPercentage){
              cells[x][y].alive=true;
              }
    }
  }
}

}
