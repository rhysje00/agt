#############################################################################
##
#W  nmgrph.gi          Algebraic Graph Theory package         Janoš Vidali
##
##
#Y  Copyright (C) 2020
##
##  Implementation file for functions that construct named graphs.
##  
##


# The tetrahedron with v=4, k=3, lm=2.
InstallGlobalFunction( TetrahedronGraph,
function()
  return CompleteGraph(SymmetricGroup(4));
end );

# The octahedron with v=6, k=4, lm=2, mu=4.
InstallGlobalFunction( OctahedronGraph,
function()
  return CocktailPartyGraph(3);
end );

# The Petersen graph with v=10, k=3, lm=0, mu=1.
InstallGlobalFunction( PetersenGraph2,
function()
  return OddGraph(2);
end );

# The Clebsch graph with v=16, k=10, lm=6, mu=6.
InstallGlobalFunction( ClebschGraph,
function()
  return HalvedCubeGraph(5);
end );

# The Schlaefli graph with v=27, k=16, lm=10, mu=8.
InstallGlobalFunction( SchlaefliGraph,
function()
  return Graph(DirectProduct(SymmetricGroup(6), SymmetricGroup(2)),
          [[-3,-3,1,1,1,1,1,1], [3,-1,-1,-1,-1,-1,-1,3]],
          OnRoots, RootAdjacency);
end );

# The Hoffman-Singleton graph with v=50, k=7, lm=0, mu=1.
InstallGlobalFunction( HoffmanSingletonGraph2,
function()
  return List([function()
        local G, dp, p1, p2, p3, p4;
        G := Group((1, 2, 3, 4, 5));
        dp := DirectProduct(G, G, G, Group((1, 2)));
        p1 := Projection(dp, 1);
        p2 := Projection(dp, 2);
        p3 := Projection(dp, 3);
        p4 := Projection(dp, 4);
        return Graph(dp, Cartesian(GF(5), GF(5), [1, 2]),
            function(x, g)
                local g4, j, s, u, v;
                u := 5^Image(p2, g) * Z(5)^0;
                v := 5^Image(p3, g) * Z(5)^0;
                g4 := Image(p4, g);
                s := x[3]^2;
                j := [1, 2*x[3]];
                return [1^g4*(x[1]+x[2]*(u-s*v)+s*(u^2-v^2)/2)+5^Image(p1, g),
                    j[1^g4]*(x[2]+s*u+v), x[3]^g4];
            end, function(x, y)
                return (x{[2,3]} = y{[2,3]} and y[1] in [x[1]-x[3], x[1]+x[3]])
                    or x[3] <> y[3] and y[1] = x[1] + x[2]*y[2]*x[3]^2;
            end, true);
    end])[1]();
end );

# The Gewirtz graph with v=56, k=10, lm=0, mu=2.
InstallGlobalFunction( GewirtzGraph,
function()
  return Graph(MathieuGroup(21), [[1,2,3,7,10,20]],
                                    OnSets, DisjointSets);
end );

# The strongly regular Witt graph with v=77, k=16, lm=0, mu=4.
InstallGlobalFunction( WittStronglyRegularGraph,
function()
  return Graph(MathieuGroup(22),
                                    [[1,2,3,7,10,20]], OnSets, DisjointSets);
end );

# The graph with v=210, k=99, lm=48, mu=45 constructed by M. Klin
InstallGlobalFunction( KlinGraph,
function()
  return List([function()
        local G, H, N, V;
        H := Group([(1,2,3,4,5,6), (1,4)]);
        V := Set(List(SymmetricGroup(7), g -> H*g));
        N := Position(V, H*());
        G := EdgeOrbitsGraph(Action(SymmetricGroup(7), V, OnRight),
            List([(3,4,5,6,7), (2,4,6,3,5,7), (3,5,6,7), (2,4,5,6,7,3),
                        (2,3,5,6,7), (2,4,5,6), (2,3,5,6)],
                    g -> [N, Position(V, H*g)]));
        AssignVertexNames(G, V);
        return G;
    end])[1]();
end );

# The cube with intersection array {3, 2, 1; 1, 2, 3}
InstallGlobalFunction( CubeGraph,
function()
  return HammingGraph2(3, 2);
end );

# The Heawood graph with intersection array {3, 2, 2; 1, 1, 3}.
InstallGlobalFunction( HeawoodGraph,
function()
  return DesarguesianPlaneIncidenceGraph(2);
end );

# The icosahedron with intersection array {5, 2, 1; 1, 2, 5}.
InstallGlobalFunction( IcosahedronGraph,
function()
  return Graph(DirectProduct(AlternatingGroup(5),
                                                   Group((1, 2))),
                                     [(1,3,5,2,4)], function(p, g)
                                        return (p^g)^((-1)^(6^g));
                                     end, function(x, y)
                                        return Order(x*y) = 3;
                                     end);
end );

# The Sylvester graph with intersection array {5, 4, 2; 1, 1, 4}
InstallGlobalFunction( SylvesterGraph,
function()
  return Graph(SymmetricGroup(6),
                    [[1, [[[1,2], [3,4], [5,6]],
                          [[1,3], [2,5], [4,6]],
                          [[1,4], [2,6], [3,5]],
                          [[1,5], [2,4], [3,6]],
                          [[1,6], [2,3], [4,5]]]]],
                    function(x, g)
                        return [x[1]^g,
                            Set(List(x[2], l -> OnSetsSets(l, g)))];
                    end, function(x, y)
                        return x[1] <> y[1] and x[2] <> y[2] and
                            Set([x[1], y[1]]) in Intersection(x[2], y[2])[1];
                    end);
end );

# The Perkel graph with intersection array {6, 5, 2; 1, 1, 3}.
InstallGlobalFunction( PerkelGraph,
function() 
  return Graph(PSL(2, 19),
                    Elements(Filtered(ConjugacyClassesSubgroups(PSL(2, 19)),
                        x -> Size(x) = 57 and Order(x[1]) = 60)[1]),
                    ConjugateGroup, function(x, y)
                        return Order(Intersection(x, y)) = 10;
                    end, true);
end );

# The Gosset graph with intersection array {27, 10, 1; 1, 10, 27}.
InstallGlobalFunction( GossetGraph,
function()
  return Graph(DirectProduct(SymmetricGroup(8), SymmetricGroup(2)),
        [[-3,-3,1,1,1,1,1,1]], OnRoots, RootAdjacency);
end );

# The truncated Witt graph with intersection array {15, 14, 12; 1, 1, 9}.
InstallGlobalFunction( Witt23Graph,
function()
  return Graph(MathieuGroup(23), [[1,4,8,12,13,19,21,23]],
                                OnSets, DisjointSets);
end );

# The large Witt graph with intersection array {30, 28, 24; 1, 3, 15}.
InstallGlobalFunction( Witt24Graph,
function()
  return Graph(MathieuGroup(24), [[1,4,8,12,13,19,21,23]],
                                OnSets, DisjointSets);
end );

# The bipartite graph associated to Higman's design
# with intersection array {50, 49, 36; 1, 14, 50}.
InstallGlobalFunction( HigmanGraph,
function()
  return Graph(Stabilizer(MathieuGroup(24), [23, 24], OnSets),
                            [[1,4,8,12,13,19,21,23]], OnSets,
                            function (x, y)
                                return Length(Difference(Intersection(x, y),
                                                         [23, 24])) in [0, 4];
                            end);
end );

# The Coxeter graph with intersection array {3,2,2,1; 1,1,1,2}.
InstallGlobalFunction( CoxeterGraph,
function()
  return PolarGraphNOorth(1, 3, 7);
end );

# The doubly truncated Witt graph with intersection array {7,6,4,4; 1,1,1,6}.
InstallGlobalFunction( Witt22Graph,
function()
  return Graph(MathieuGroup(22), [[1,2,3,4,5,10,18,21]],
                                OnSets, DisjointSets);
end );

# The dodecahedron with intersection array {3,2,1,1,1; 1,1,1,2,3}.
InstallGlobalFunction( DodecahedronGraph,
function() 
  return List([function()
        local G, O, act, dp, p1, p2, u, v;
        dp := DirectProduct(AlternatingGroup(5), Group((1, 2)));
        p1 := Projection(dp, 1);
        p2 := Projection(dp, 2);
        act := function(t, g)
            return OnTuples(t{Permuted([1,2], Image(p2, g))}, Image(p1, g));
        end;
        u := [1, 2];
        v := [3, 4];
        O := Arrangements([1..5], 2);
        G := EdgeOrbitsGraph(Action(dp, O, act),
                             [Position(O, u), Position(O, v)]);
        AssignVertexNames(G, O);
        return G;
    end])[1]();
end );

# The Desargues graph with intersection array {3,2,2,1,1; 1,1,2,2,3}.
InstallGlobalFunction( DesarguesGraph,
function()
  return DoubledOddGraph(2);
end );

# The Biggs-Smith graph with intersection array {3,2,2,2,1,1,1; 1,1,1,1,1,1,3}.
InstallGlobalFunction( BiggsSmithGraph,
function()
  return Graph(PSL(2, 17),
                    Elements(Filtered(ConjugacyClassesSubgroups(PSL(2, 17)),
                        x -> Size(x) = 102 and Order(x[1]) = 24)[1]),
                    ConjugateGroup, function(x, y)
                        return Order(Intersection(x, y)) = 8;
                    end, true);
end );