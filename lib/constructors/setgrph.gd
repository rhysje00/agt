#############################################################################
##
#W  setgrph.gd          Algebraic Graph Theory package         Janoš Vidali
##
##
#Y  Copyright (C) 2020
##
##  Declaration file for functions that construct set graphs. 
##


# The Kneser graph on k-subsets of a set with n elements.
DeclareGlobalFunction( "KneserGraph" );

# The Odd graph of diameter d on 2*d+1 points.
DeclareGlobalFunction( "OddGraph" );

# The doubled Odd graph on 2*d+1 points.
DeclareGlobalFunction( "DoubledOddGraph" );

# The folded Johnson graph.
DeclareGlobalFunction( "FoldedJohnsonGraph" );

# The three Chang graphs with v=28, k=12, lm=6, mu=4
DeclareGlobalFunction( "ChangGraph" );
