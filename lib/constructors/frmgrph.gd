#############################################################################
##
#W  frmgrph.gd          Algebraic Graph Theory package         Janoš Vidali
##
##
#Y  Copyright (C) 2020
##
##  Declaration file for functions that construct forms graphs. 
##




# The bilinear forms graph H_q(d, e) of matrices over GF(r^2).
DeclareConstructor( "BilinearFormsGraphCons", [IsObject, IsInt, IsInt, IsInt]);
DeclareGlobalFunction( "BilinearFormsGraph" );

# The Hermitean forms graph Her(d, r) of Hermitean matrices over GF(r^2).
DeclareConstructor( "HermiteanFormsGraphCons", [IsObject, IsInt, IsInt]);
DeclareGlobalFunction( "HermiteanFormsGraph" );
