#############################################################################
##
#W  vctgrph.gd          Algebraic Graph Theory package         Janoš Vidali
##
##
#Y  Copyright (C) 2020
##
##  Declaration file for functions that construct vector graphs. 
##

# The Hamming graph H(d, e) of vectors with d elements
# over an alphabet with e elements.
DeclareConstructor( "HammingGraphCons", [IsObject, IsInt, IsInt]);
DeclareGlobalFunction( "HammingGraph2" );

# The d-dimensional hypercube
DeclareGlobalFunction( "HypercubeGraph" );
    
# The Doob graph Doob(n, d) of diameter 2*n+d
# as a box product of n copies of the Shrikhande graph and H(d, 4).
DeclareConstructor( "DoobGraphCons", [IsObject, IsInt, IsInt]);
DeclareGlobalFunction( "DoobGraph" );

# The halved d-cube.
DeclareConstructor( "HalvedCubeGraphCons", [IsObject, IsInt]);
DeclareGlobalFunction( "HalvedCubeGraph" );

# The folded d-cube.
DeclareConstructor( "FoldedCubeGraphCons", [IsObject, IsInt]);
DeclareGlobalFunction( "FoldedCubeGraph" );

# The folded halved 2d-cube.
DeclareConstructor( "FoldedHalvedCubeGraphCons", [IsObject, IsInt]);
DeclareGlobalFunction( "FoldedHalvedCubeGraph" );
DeclareSynonym("HalvedFoldedCubeGraph", FoldedHalvedCubeGraph);


# The Brouwer graph Br(q) of pairs of 3-dimensional vectors over F_q,
# with two pairs being adjacent whenever the difference of the first vectors
# equals the cross product of the second vectors.
DeclareConstructor( "BrouwerGraphCons", [IsObject, IsInt]);
DeclareGlobalFunction( "BrouwerGraph" );

# The Pasechnik graph Pa(q) as the extended bipartite double
# of the Brouwer graph Br(q).
DeclareConstructor( "PasechnikGraphCons", [IsObject, IsInt]);
DeclareGlobalFunction( "PasechnikGraph" );

# The additive symplectic cover of the complete graph on q^{2n} vertices.
DeclareConstructor("AdditiveSymplecticCoverGraphCons",
                    [IsObject, IsInt, IsInt, IsInt]);
DeclareGlobalFunction( "AdditiveSymplecticCoverGraph" );

# The multiplicative symplectic cover of the complete graph on q+1 vertices.
# It is distance-regular when m divides q-1 and either q or m is even.
DeclareConstructor("MultiplicativeSymplecticCoverGraphCons",
                    [IsObject, IsInt, IsInt]);
DeclareGlobalFunction( "MultiplicativeSymplecticCoverGraph" );

# The affine polar graph VO^{(+/-)}(d, q)
# with respect to a nondegenerate quadratic form.
DeclareGlobalFunction( "AffinePolarGraphVO" );

# The affine polar graph VNO^{(+/-)}(d, q)
# with respect to a nondegenerate quadratic form.
DeclareGlobalFunction( "AffinePolarGraphVNO" );
