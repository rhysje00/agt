#############################################################################
##
#W  nmgrph.gd          Algebraic Graph Theory package         Janoš Vidali
##
##
#Y  Copyright (C) 2020
##
##  Declaration file for functions that construct named graphs. 
##


# The tetrahedron with v=4, k=3, lm=2.
DeclareGlobalFunction( "TetrahedronGraph" );

# The octahedron with v=6, k=4, lm=2, mu=4.
DeclareGlobalFunction( "OctahedronGraph" );

# The Petersen graph with v=10, k=3, lm=0, mu=1.
DeclareGlobalFunction( "PetersenGraph2" );

# The Clebsch graph with v=16, k=10, lm=6, mu=6.
DeclareGlobalFunction( "ClebschGraph" );

# The Schlaefli graph with v=27, k=16, lm=10, mu=8.
DeclareGlobalFunction( "SchlaefliGraph" );

# The Hoffman-Singleton graph with v=50, k=7, lm=0, mu=1.
DeclareGlobalFunction( "HoffmanSingletonGraph2" );

# The Gewirtz graph with v=56, k=10, lm=0, mu=2.
DeclareGlobalFunction( "GewirtzGraph" );

# The strongly regular Witt graph with v=77, k=16, lm=0, mu=4.
DeclareGlobalFunction( "WittStronglyRegularGraph" );

# The graph with v=210, k=99, lm=48, mu=45 constructed by M. Klin
DeclareGlobalFunction( "KlinGraph" );

# The cube with intersection array {3, 2, 1; 1, 2, 3}
DeclareGlobalFunction( "CubeGraph" );

# The Heawood graph with intersection array {3, 2, 2; 1, 1, 3}.
DeclareGlobalFunction( "HeawoodGraph" );

# The icosahedron with intersection array {5, 2, 1; 1, 2, 5}.
DeclareGlobalFunction( "IcosahedronGraph" );

# The Sylvester graph with intersection array {5, 4, 2; 1, 1, 4}
DeclareGlobalFunction( "SylvesterGraph" );

# The Perkel graph with intersection array {6, 5, 2; 1, 1, 3}.
DeclareGlobalFunction( "PerkelGraph" );

# The Gosset graph with intersection array {27, 10, 1; 1, 10, 27}.
DeclareGlobalFunction( "GossetGraph" );

# The truncated Witt graph with intersection array {15, 14, 12; 1, 1, 9}.
DeclareGlobalFunction( "Witt23Graph" );

# The large Witt graph with intersection array {30, 28, 24; 1, 3, 15}.
DeclareGlobalFunction( "Witt24Graph" );

# The bipartite graph associated to Higman's design
# with intersection array {50, 49, 36; 1, 14, 50}.
DeclareGlobalFunction( "HigmanGraph" );

# The Coxeter graph with intersection array {3,2,2,1; 1,1,1,2}.
DeclareGlobalFunction( "CoxeterGraph" );

# The doubly truncated Witt graph with intersection array {7,6,4,4; 1,1,1,6}.
DeclareGlobalFunction( "Witt22Graph" );

# The dodecahedron with intersection array {3,2,1,1,1; 1,1,1,2,3}.
DeclareGlobalFunction( "DodecahedronGraph" );

# The Desargues graph with intersection array {3,2,2,1,1; 1,1,2,2,3}.
DeclareGlobalFunction( "DesarguesGraph" );

# The Biggs-Smith graph with intersection array {3,2,2,2,1,1,1; 1,1,1,1,1,1,3}.
DeclareGlobalFunction( "BiggsSmithGraph" );
