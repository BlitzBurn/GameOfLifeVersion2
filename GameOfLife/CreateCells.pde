public class CreateCells{

void createCells(){


  if(gameRandom==true){
    for(int y=0; y<numberOfRows; y++){
      for(int x=0; x<numberOfColumns; x++){

      cells[x][y]= new GameObject(x*cellSize, y*cellSize, cellSize);
      oldCells[x][y]= new GameObject(x*cellSize, y*cellSize, cellSize);

              if(random(0,100)<fillPercentage){
              cells[x][y].alive=true;
              oldCells[x][y].alive=true;
              }
    }
  }
}

if(spawnAcorn==true){
  for(int y=0; y<numberOfRows; y++){
    for(int x=0; x<numberOfColumns; x++){
      cells[x][y]= new GameObject(x*cellSize, y*cellSize, cellSize);
      oldCells[x][y]= new GameObject(x*cellSize, y*cellSize, cellSize);



     }
   }

     float randomAcorn=random(1,40);
     int acornVariable=int(randomAcorn);
     cells[10+acornVariable][10+acornVariable].alive=true;
     cells[11+acornVariable][10+acornVariable].alive=true;
     cells[11+acornVariable][8+acornVariable].alive=true;
     cells[13+acornVariable][9+acornVariable].alive=true;
     cells[14+acornVariable][10+acornVariable].alive=true;
     cells[15+acornVariable][10+acornVariable].alive=true;
     cells[16+acornVariable][10+acornVariable].alive=true;


}

}
}
