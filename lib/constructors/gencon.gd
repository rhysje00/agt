#############################################################################
##
#W  gencon.gd          Algebraic Graph Theory package         Janoš Vidali
##
##
#Y  Copyright (C) 2020
##
##  Declaration file for functions that construct general graphs. 
##


# The graph obtained from an adjacency function on the vertex set.
DeclareGlobalFunction( "AdjFunGraph" );

# A generic product graph.
DeclareGlobalFunction( "ProductGraph" );

# The box product of two or more graphs.
DeclareGlobalFunction( "BoxProductGraph" );

# The cross product of two or more graphs.
DeclareGlobalFunction( "CrossProductGraph" );

# The strong product of two or more graphs.
DeclareGlobalFunction( "StrongProductGraph" );

# The bipartite double of a graph.
DeclareGlobalFunction( "BipartiteDoubleGraph" );

# The extended bipartite double of a graph.
DeclareGlobalFunction( "ExtendedBipartiteDoubleGraph" );

# The halved graph of a bipartite graph. The optional second argument
# allows choosing between the first and second halves.
DeclareGlobalFunction( "HalvedGraph" );

# The antipodal quotient of an antipodal cover.
DeclareGlobalFunction( "AntipodalQuotientGraph" );

# A graph with the set of d-dimensional subspaces of V filtered by S
# as the vertex set, acted upon by the matrix group G,
# with two subspaces being adjacent iff their intersection has dimension d-1.
DeclareGlobalFunction( "SubspaceGraph" );

# The clique (dual geometry) graph of a collinearity graph. The optional second
# argument allows choosing a connected component of the resulting graph.
DeclareGlobalFunction( "CliqueGraph" );

# The incidence graph of a collinearity graph.
DeclareGlobalFunction( "IncidenceGraph" );
