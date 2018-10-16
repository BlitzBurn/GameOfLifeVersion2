public class CheckCells{
int edgeY=numberOfRows-1;
int edgeX=numberOfColumns-1;

  void checkGrid(){

    for(int y=0; y<numberOfRows; y++){
      for(int x=0; x<numberOfColumns; x++){

        int neighbors=0;

          if(x!=0 && y!=0){
            if((cells[x-1][y-1].alive==true)) {neighbors++;}
          }
          if(x!=0){
            if((cells[x-1][y].alive==true)) {neighbors++;}
          }
          if(x!=0 && y!=edgeY){
            if((cells[x-1][y+1].alive==true)) {neighbors++;}
          }
          if(y!=0){
            if((cells[x][y-1].alive==true)) {neighbors++;}
          }
          if(y!=edgeY){
            if((cells[x][y+1].alive==true)) {neighbors++;}
          }
          if(x!=edgeX && y!=0){
            if((cells[x+1][y-1].alive==true)) {neighbors++;}
          }
          if(x!=edgeX){
            if((cells[x+1][y].alive==true)) {neighbors++;}
          }
          if(x!=edgeX && y!=edgeY){
            if((cells[x+1][y+1].alive==true)) {neighbors++;}
          }



      if((cells[x][y].alive==true) && neighbors<2){
        cells[x][y].alive=false;
      }

      else if((cells[x][y].alive==true) && neighbors>3){
        cells[x][y].alive=false;
      }

      else if((cells[x][y].alive==false) && neighbors==3){
        cells[x][y].alive=true;
      }

      else if((cells[x][y].alive==true) && neighbors==2){
        cells[x][y].alive=true;
      }

      //cells=newCells;

      }
    }

  }//end of class


}
