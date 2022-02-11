#############################################################################
##
#W  auxfunc.gd          Algebraic Graph Theory package         Janoš Vidali
##
##
#Y  Copyright (C) 2020
##
##  Declaration file for functions involving auxiliary functions
##  for graphs. 
##

# A bijective map from elements of F_q to integers from [0..q-1].
DeclareGlobalFunction( "FFEToInt" );

# A bijective map from integers from [0..q-1] to elements of F_q.
DeclareGlobalFunction( "IntToFFE" );

# Transforms a matrix over GF(r) to a Hermitean matrix over GF(r^2).
DeclareGlobalFunction( "ToHermitean" );

DeclareGlobalFunction( "ToExceptionalMatrix" );

# Read a file into a list of lines.
DeclareGlobalFunction( "ReadLines" );

