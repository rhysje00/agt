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
true
gap> RemoveEdgeOrbit(gamma,[1,2]);
gap> IsVertexTransitiveGraph(gamma);
false

# GraphPermutationRank
gap> Diameter(JohnsonGraph(6,3));
3
gap> GraphPermutationRank(JohnsonGraph(6,3));
4

# IsEdgeTransitiveGraph
gap> gamma:=EdgeOrbitsGraph(Group([(1,2),(3,4,5)]),[[1,3],[3,1]]);;
gap> IsVertexTransitiveGraph(gamma);
false
gap> IsEdgeTransitiveGraph(gamma);
true

#
gap> STOP_TEST("AGT package: transitivity.tst",0);