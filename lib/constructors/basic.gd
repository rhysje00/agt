#############################################################################
##
#W  basic.gd          Algebraic Graph Theory package         Janoš Vidali
##
##
#Y  Copyright (C) 2020
##
##  Declaration file for functions that construct basic graphs. 
##


# Complete multipartite graphs.
DeclareGlobalFunction( "CompleteMultipartiteGraph2" );

# Cycle graphs.
DeclareGlobalFunction( "CycleGraph" );

# Cocktail party graphs.
DeclareGlobalFunction( "CocktailPartyGraph" );

# Paley graphs.
# For q = 1 (mod 4) a prime power, the graph is strongly regular.
# For q = 3 (mod 4) a prime power, the graph is directed.
DeclareGlobalFunction( "PaleyGraph" );

# Latin square graphs.
DeclareGlobalFunction( "LatinSquareGraph" );

# Complete Taylor graphs, i.e. complete bipartite graphs minus a matching.
DeclareGlobalFunction( "CompleteTaylorGraph" );