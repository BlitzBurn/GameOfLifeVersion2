GameObject cells[][];
GameObject oldCells[][];

Controller controller;
CreateCells createCellsCall;

float cellSize=10;
int numberOfColumns;
int numberOfRows;
int fillPercentage=65;
int generations=0;

//game random ger ett slumpvalt bräde
boolean gameRandom=false;
//spawnAcorn skapar ett "Acorn"
boolean spawnAcorn=true;

  void setup(){

    size(600, 600);
    ellipseMode(LEFT);
    frameRate(4);

    numberOfColumns= (int)Math.floor(width/cellSize);
    numberOfRows=(int)Math.floor(height/cellSize);

    copyCells = new CopyCells();
    checkCells = new CheckCells();
    controller= new Controller();
    createCellsCall = new CreateCells();


    cells = new GameObject[numberOfColumns][numberOfRows];
    oldCells = new GameObject[numberOfColumns][numberOfRows];





  }

  void draw(){
      background(1);
      controller.update();
  }
