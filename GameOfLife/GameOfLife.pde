GameObject cells[][];
GameManager manager;

float cellSize=10;
int numberOfColumns;
int numberOfRows;
int fillPercentage=20;
boolean gameRandom=true;
  void setup(){

    size(600, 600);
    ellipseMode(LEFT);
    frameRate(40);

    numberOfColumns= (int)Math.floor(width/cellSize);
    numberOfRows=(int)Math.floor(height/cellSize);

    cells = new GameObject[numberOfColumns][numberOfRows];
    manager = new GameManager();

    for(int y=0; y<numberOfColumns; y++){
      for(int x=0; x<numberOfRows; x++){

        cells[x][y]= new GameObject(x*cellSize, y*cellSize, cellSize);

      }
    }

      //  if(gameRandom==true){

          for(int y=0; y<numberOfColumns; y++){
            for(int x=0; x<numberOfRows; x++){

              if(random(0,100)<fillPercentage){
                cells[x][y].alive=true;
              }

            }
          }

        //}

        // else if (gameRandom==false){
        //
        //   for(int y=0; y<numberOfColumns; y++){
        //     for(int x=0; x<numberOfRows; x++){
        //
        //     cells[x][y].alive=false;
        //
        //     }
        //   }
        //
        //     cells[20][20].alive=true;
        //     cells[21][20].alive=true;
        //     cells[24][20].alive=true;
        //     cells[25][20].alive=true;
        //     cells[26][20].alive=true;
        //     cells[21][18].alive=true;
        //     cells[23][19].alive=true;
        // }
  }

  void draw(){
  background(255);

      for(int y=0; y<numberOfColumns; y++){
        for(int x=0; x<numberOfColumns; x++){
          manager.update();
          cells[x][y].drawObject();
        }
      }
//delay(1000);


}
