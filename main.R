library ("seqinr")

DNA_Seq1=read.fasta("lnc1.fasta",as.string = TRUE,seqtype = "DNA",seqonly=TRUE)[[1]]
DNA_Seq2=read.fasta("lnc2.fasta",as.string = TRUE,seqtype = "DNA",seqonly=TRUE)[[1]]
Window_Size=2


source('DotPlotFunc.r')
DotPlotFunc(DNA_Seq1,DNA_Seq2,Window_Size)


#---------------------built in function ------------
first_DNA=strsplit(DNA_Seq1, "(?<=.{1})", perl = TRUE)[[1]]
second_DNA=strsplit(DNA_Seq2, "(?<=.{1})", perl = TRUE)[[1]]
dotPlot(first_DNA,second_DNA,wsize = Window_Size,nmatch = Window_Size,wstep = 1,)
