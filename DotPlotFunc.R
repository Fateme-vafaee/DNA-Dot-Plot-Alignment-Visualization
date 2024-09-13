library ("seqinr")
library(stringr)
library(ggplot2)
library(reshape)
DotPlotFunc=function(DNA_Seq1,DNA_Seq2,Window_Size)
{
#-------------- Input & Initial Values ----------------


L1=str_length(DNA_Seq1) 
L2=str_length(DNA_Seq2) 

Output=matrix(0,L1,L2)

#---------------------Match Sequence With Length Window Size---------
pattern=paste("(?<=.{",Window_Size,"})",sep="")

  first_DNA=strsplit(DNA_Seq1, pattern, perl = TRUE)[[1]]
  
  if(str_length(rev(first_DNA)[1])!= Window_Size )
    first_DNA=first_DNA[-length(first_DNA)]
match_Index=0
  for(i in 1:length(first_DNA))
    match_Index[i]=gregexpr(first_DNA[i],DNA_Seq2,perl=TRUE)

#-----------------Complete the Output Matrix ---------------
  row_index_match=1
  row_StartIndex_output=1
  row_EndIndex_output=row_StartIndex_output+Window_Size-1 
  
  for(row_index in 1:length(first_DNA))
  {

    if( match_Index[[row_index]][1]>0)
    {
      match_No=length(match_Index[[row_index]])
      
      for(i in 1:match_No)
      {
          if(Window_Size>1)
          {
            diag(Output[row_StartIndex_output:row_EndIndex_output, match_Index[[row_index]][i]:(match_Index[[row_index]][i]+Window_Size-1)])=1
          }else{
            Output[row_StartIndex_output, match_Index[[row_index]][i]]=1
          }
      }
    }
    
    row_StartIndex_output=row_StartIndex_output+Window_Size
    row_EndIndex_output=row_StartIndex_output+Window_Size-1 
  }
  
#---------------plot----------------  
  first_DNA=strsplit(DNA_Seq1, "(?<=.{1})", perl = TRUE)[[1]]
  second_DNA=strsplit(DNA_Seq2, "(?<=.{1})", perl = TRUE)[[1]]
  
  plotDat <- reshape::melt(Output)
  ones=which(plotDat[,3]==1)  
  plotDat=plotDat[ones,]
  plotDat1=plotDat[,1:2]

  
  plot(plotDat1[,1],plotDat1[,2],col="blue",xaxt = "n", pch=19, yaxt = "n",cex=1, xlab = "",ylab = "")
 
  axis(1, at=1:L1, labels=first_DNA,cex.axis=0.5 )
  axis(2, at=1:L2, labels=second_DNA,cex.axis=0.3 )
  grid(68,68)
}
  