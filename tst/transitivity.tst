#############################################################################
##
#W  transitivity.tst      Algebraic Graph Theory package        Rhys J. Evans
##
##
#Y  Copyright (C) 2020
##
##  Test file for functions involving transitivity properties of graphs. 
##

# Start transitivity.tst
gap> START_TEST("AGT package: transitivity.tst");

# Loading package
gap> LoadPackage("agt",false);
true

# IsVertexTransitiveGraph
gap> gamma:=CompleteGraph(Group(()),5);;
gap> IsVertexTransitiveGraph(gamma);
false
gap> IsVertexTransitiveGraph(AutGroupGraph(gamma),gamma);
true
gap> RemoveEdgeOrbit(gamma,[1,2]);
gap> IsVertexTransitiveGraph(AutGroupGraph(gamma),gamma);
false

# GraphVertexOrbits
gap> gamma:=CompleteGraph(Group([(1,2),(3,4,5)]),5);;
gap> GraphVertexOrbits(gamma);
[ [ 1, 2 ], [ 3, 4, 5 ] ]
gap> GraphVertexOrbits(AutGroupGraph(gamma),gamma);
[ [ 1, 2, 3, 4, 5 ] ]

# IsEdgeTransitiveGraph
gap> gamma:=EdgeOrbitsGraph(Group([(1,2),(3,4,5)]),[[1,3],[3,1]]);;
gap> IsVertexTransitiveGraph(gamma);
false
gap> IsEdgeTransitiveGraph(gamma);
true

# GraphEdgeOrbits
# TODO

# IsSymmetricGraph
# TODO

# IsSemisymmetricGraph
# TODO

# IsArcTransitive

# GraphArcOrbits

# IsDistanceTransitiveGraph

# GraphDistanceOrbits

#
gap> STOP_TEST("AGT package: transitivity.tst",0);