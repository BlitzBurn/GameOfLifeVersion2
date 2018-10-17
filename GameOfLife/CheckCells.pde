public class CheckCells{
int edgeY=numberOfRows-1;
int edgeX=numberOfColumns-1;

  void checkGrid(){

    for(int y=0; y<numberOfRows; y++){
      for(int x=0; x<numberOfColumns; x++){

        boolean checkResult=false;

        int neighbors=0;

          if(x!=0 && y!=0){
            if((oldCells[x-1][y-1].alive==true)) {neighbors++;}
          }
          if(x!=0){
            if((oldCells[x-1][y].alive==true)) {neighbors++;}
          }
          if(x!=0 && y!=edgeY){
            if((oldCells[x-1][y+1].alive==true)) {neighbors++;}
          }
          if(y!=0){
            if((oldCells[x][y-1].alive==true)) {neighbors++;}
          }
          if(y!=edgeY){
            if((oldCells[x][y+1].alive==true)) {neighbors++;}
          }
          if(x!=edgeX && y!=0){
            if((oldCells[x+1][y-1].alive==true)) {neighbors++;}
          }
          if(x!=edgeX){
            if((oldCells[x+1][y].alive==true)) {neighbors++;}
          }
          if(x!=edgeX && y!=edgeY){
            if((oldCells[x+1][y+1].alive==true)) {neighbors++;}
          }



      if((oldCells[x][y].alive==true) && neighbors<2){
        checkResult=false;
      }

      if((oldCells[x][y].alive==true) && neighbors>3){
        checkResult=false;
      }

      if((oldCells[x][y].alive==false) && neighbors==3){
        checkResult=true;
      }

      if((oldCells[x][y].alive==true) && neighbors==2){
        checkResult=true;
      }

      if((oldCells[x][y].alive==true) && neighbors==3){
        checkResult=true;
      }

        cells[x][y].alive=checkResult;

      }
    }

  }//end of class


}
