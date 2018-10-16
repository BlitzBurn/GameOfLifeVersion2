GameObject cells[][];
GameObject newCells[][];

Controller controller;
CreateCells createCellsCall;

float cellSize=10;
int numberOfColumns;
int numberOfRows;
int fillPercentage=15;
//boolean gameRandom=true;

  void setup(){

    size(600, 600);
    ellipseMode(LEFT);
    frameRate(4);

    numberOfColumns= (int)Math.floor(width/cellSize);
    numberOfRows=(int)Math.floor(height/cellSize);

    checkCells = new CheckCells();
    controller= new Controller();
    createCellsCall = new CreateCells();


    cells = new GameObject[numberOfColumns][numberOfRows];
    newCells = new GameObject[numberOfColumns][numberOfRows];


    createCellsCall.createCells();


  }

  void draw(){
      background(1);
      controller.update();
//delay(1000);
  }



//  if(gameRandom==true){

       /*   for(int y=0; y<numberOfColumns; y++){
            for(int x=0; x<numberOfRows; x++){


              }

            }
          }
*/
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
