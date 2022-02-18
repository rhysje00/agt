#############################################################################
##
#W  codegrph.gd          Algebraic Graph Theory package         Janoš Vidali
##
##
#Y  Copyright (C) 2020
##
##  Declaration file for functions that construct code graphs. 
##


# De Caen, Mathon and Moorhouse's Preparata graph Pr(t, e)
DeclareConstructor( "PreparataGraphCons", [IsObject, IsInt, IsInt]);
DeclareGlobalFunction( "PreparataGraph" );

# The coset graph of a Kasami code over an odd power extension
# of a binary field.
DeclareGlobalFunction( "KasamiGraph" );

# The coset graph of an extended Kasami code over an odd power extension
# of a binary field.
DeclareGlobalFunction( "ExtendedKasamiGraph" );

# The coset graph of a Kasami code over a quadratic extension
# of a binary field.
DeclareGlobalFunction( "QuadraticKasamiGraph" );

# The coset graph of an extended Kasami code over a quadratic extension
# of a binary field.
DeclareGlobalFunction( "ExtendedQuadraticKasamiGraph" );
