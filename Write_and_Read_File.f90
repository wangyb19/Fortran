      Program Write_and_Read_File
      Implicit None
      Integer :: i, j
      Real, Parameter :: Pi = 3.1415926
      Real :: X(101), Y_Sin(101), Y_Cos(101)
      Open (Unit=10,File='Data.csv')
      Write(10,*) "# Data of two line -- Sin(2X) and Cos(2X)"
      Write(10,200) "X","X_Sin","X_Cos"
200   Format(A14,", ",A14,", ",A14)
      DO i = 1,101,1
        X(i) = 0.0+10.0/100*(i-1)
        Y_Sin(i) = Sin(2.0*X(i))
        Y_Cos(i) = Cos(2.0*X(i))
        Write(10,100) X(i), Y_Sin(i),Y_Cos(i)
100   Format(E14.4, ", ",E14.4, ", ",E14.4)
      End DO

      End Program Write_and_Read_File