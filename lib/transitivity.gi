#############################################################################
##
#W  transitivity.gi       Algebraic Graph Theory package        Rhys J. Evans
##
##
#Y  Copyright (C) 2020
##
##  Implementation file for functions involving transitivity properties  of
##  graphs. 
##


#############################################################################
##
#O  IsVertexTransitiveGraph( <gamma> )
##  
InstallMethod(IsVertexTransitiveGraph,"grape graph and group of automorphisms", true, [IsPermGroup, IsRecord], 0, 
function(G, gamma)
  
  if not IsGraph(gamma) then
    TryNextMethod();
  fi;

  return IsTransitive(G, Vertices(gamma)); 
end );

InstallMethod(IsVertexTransitiveGraph,"grape graph", true, [IsRecord], 0, 
function(gamma)
  
  if not IsGraph(gamma) then
    TryNextMethod();
  fi;

  return IsTransitive(gamma.group, Vertices(gamma)); 
end );

#############################################################################
##
#O  GraphVertexOrbits( [<G>, ]<gamma> )
##  
InstallMethod(GraphVertexOrbits,"grape graph and group of automorphisms", true, [IsPermGroup, IsRecord], 0, 
function(G, gamma)

  if (not IsGraph(gamma)) or (LargestMovedPoint(G) > OrderGraph(gamma)) then
    TryNextMethod();
  fi;
  
  return OrbitsDomain(G,Vertices(gamma));
end );

InstallMethod(GraphVertexOrbits,"grape graph", true, [IsRecord], 0, 
function(gamma)
  local seeds;  

  if not IsGraph(gamma) then
    TryNextMethod();
  fi;
  
  return OrbitsDomain(gamma.group,Vertices(gamma));
end );

#############################################################################
##
#O  AGT_DistanceRelationSeeds( <gamma>, <int>, <bool> )
##  
InstallMethod(AGT_DistanceRelationSeeds,"grape vtg", true, [IsRecord, IsInt, IsBool], 0, 
function(gamma,i,ordered)
  if not IsGraph(gamma) then
    TryNextMethod();
  fi;
  
  if i=0 then
    TryNextMethod();
  fi;
  
  if i=1 then
    if ordered then
      return Union(List(gamma.representatives,x->List(Adjacency(gamma,x),
                                                   y->[x,y])));
    else
      return Union(List(gamma.representatives,x->List(Adjacency(gamma,x),
                                                   y->Set([x,y]))));
    fi;
  else
    if ordered then
      return Union(List(gamma.representatives,
                        x->List(DistanceSet(gamma,i,x),
                                y->[x,y])));
    else
      return Union(List(gamma.representatives,
                        x->List(DistanceSet(gamma,i,x),
                                y->Set([x,y]))));
    fi;
  fi;                                     
end );

#############################################################################
##
#O  IsEdgeTransitiveGraph( <gamma> )
##
InstallMethod(IsEdgeTransitiveGraph,"grape vtg", true, [IsPermGroup, IsRecord], 0, 
function(G,gamma)
  local edge, seeds, delta;
  if not IsGraph(gamma) then
    TryNextMethod();
  fi;

  delta:=NewGroupGraph(G,gamma);

  seeds:= AGT_DistanceRelationSeeds(delta,1,false);
  edge:= seeds[1];

  return IsSubset(Orbit(delta.group,edge,OnSets),seeds); 
end );


InstallMethod(IsEdgeTransitiveGraph,"grape vtg", true, [IsRecord], 0, 
function(gamma)
  local edge, seeds;
  if not IsGraph(gamma) then
    TryNextMethod();
  fi;

  seeds:= AGT_DistanceRelationSeeds(gamma,1,false);
  edge:= seeds[1];

  return IsSubset(Orbit(gamma.group,edge,OnSets),seeds); 
end );

#############################################################################
##
#O  GraphEdgeOrbits( [<G>, ]<gamma> )
##  
InstallMethod(GraphEdgeOrbits,"grape vtg", true, [IsPermGroup, IsRecord], 0, 
function(G,gamma)
  if not IsGraph(gamma) then
    TryNextMethod();
  fi;
  
  return OrbitsDomain(G,UndirectedEdges(gamma),OnSets);
end );

InstallMethod(GraphEdgeOrbits,"grape vtg", true, [IsRecord], 0, 
function(gamma)
  if not IsGraph(gamma) then
    TryNextMethod();
  fi;
  
  return OrbitsDomain(gamma.group,UndirectedEdges(gamma),OnSets);
end );

#############################################################################
##
#O  IsSymmetricGraph( <gamma> )
##  
InstallMethod(IsSymmetricGraph, "grape vtg", true, [IsPermGroup, IsRecord], 0,
function(G, gamma)
  if not IsGraph(gamma) then
    TryNextMethod();
  fi;
  return IsVertexTransitiveGraph(G, gamma) and IsEdgeTransitiveGraph(G, gamma); 
end );

InstallMethod(IsSymmetricGraph, "grape vtg", true, [IsRecord], 0,
function(gamma)
  if not IsGraph(gamma) then
    TryNextMethod();
  fi;
  return IsVertexTransitiveGraph(gamma) and IsEdgeTransitiveGraph(gamma); 
end );

#############################################################################
##
#O  IsSemisymmetricGraph( <gamma> )
##  
InstallMethod(IsSemisymmetricGraph,"grape vtg", true, [IsPermGroup, IsRecord], 0, 
function(G,gamma)
  if not IsGraph(gamma) then
    TryNextMethod();
  fi;
  return IsRG(gamma) and IsEdgeTransitiveGraph(G, gamma) and 
                         (not IsVertexTransitiveGraph(G, gamma)) ; 
end );

InstallMethod(IsSemisymmetricGraph,"grape vtg", true, [IsRecord], 0, 
function(gamma)
  if not IsGraph(gamma) then
    TryNextMethod();
  fi;
  return IsRG(gamma) and IsEdgeTransitiveGraph(gamma) and 
                         (not IsVertexTransitiveGraph(gamma)) ; 
end );

#############################################################################
##
#O  IsArcTransitiveGraph( [<G>, ]<gamma> )
##
InstallMethod(IsArcTransitiveGraph,"grape vtg", true, [IsPermGroup, IsRecord], 0, 
function(G,gamma)
  local arc, seeds, delta;
  if not IsGraph(gamma) then
    TryNextMethod();
  fi;

  delta:=NewGroupGraph(G,gamma);

  seeds:= AGT_DistanceRelationSeeds(delta,1,true);
  arc:= seeds[1];

  return IsSubset(Orbit(delta.group,arc,OnPairs),seeds); 
end );

InstallMethod(IsArcTransitiveGraph,"grape vtg", true, [IsRecord], 0, 
function(gamma)
  local arc, seeds;
  if not IsGraph(gamma) then
    TryNextMethod();
  fi;

  seeds:= AGT_DistanceRelationSeeds(gamma,1,true);
  arc:= seeds[1];

  return IsSubset(Orbit(gamma.group,arc,OnPairs),seeds); 
end );

#############################################################################
##
#O  GraphArcOrbits( [<G>, ]<gamma> )
##  
InstallMethod(GraphArcOrbits,"grape vtg", true, [IsPermGroup, IsRecord], 0, 
function(G,gamma)
  if not IsGraph(gamma) then
    TryNextMethod();
  fi;
  
  return OrbitsDomain(G,DirectedEdges(gamma),OnPairs);
end );

InstallMethod(GraphEdgeOrbits,"grape vtg", true, [IsRecord], 0, 
function(gamma)
  if not IsGraph(gamma) then
    TryNextMethod();
  fi;
  
  return OrbitsDomain(gamma.group,DirectedEdges(gamma),OnPairs);
end );

#############################################################################
##
#O  IsDistanceTransitiveGraph( [<G>, ][<s>, ]<gamma> )
##  
InstallGlobalFunction(IsDistanceTransitiveGraphNC, 
function(G,s,gamma)
  local i, arc, seeds, delta;

  delta:=NewGroupGraph(G,gamma);

  for i in [1..s] do
    seeds:= AGT_DistanceRelationSeeds(delta,i,true);
    arc:= seeds[1];
    if not IsSubset(Orbit(delta.group,arc,OnPairs),seeds) then
      return false;
    fi; 
  od;

  return true; 
end );

InstallMethod(IsDistanceTransitiveGraph,"grape vtg", true, [IsPermGroup, IsPosInt, IsRecord], 0, 
function(G,s,gamma)
  local diam;
  if (not IsGraph(gamma)) then
    TryNextMethod();
  fi;

  diam:=Diameter(gamma);
  if (diam < 1) or (s > diam) then
    TryNextMethod();
  fi;
  
  return IsDistanceTransitiveGraphNC(G,s,gamma); 
end );


InstallMethod(IsDistanceTransitiveGraph,"grape vtg", true, [IsPermGroup, IsRecord], 0, 
function(G,gamma)
  local diam;
  if (not IsGraph(gamma)) then
    TryNextMethod();
  fi;

  diam:=Diameter(gamma);
  if diam < 1 then
    TryNextMethod();
  fi;

  return IsDistanceTransitiveGraphNC(G,diam,gamma); 
end );

InstallMethod(IsDistanceTransitiveGraph,"grape vtg", true, [IsPosInt, IsRecord], 0, 
function(s,gamma)
  local diam;
  if (not IsGraph(gamma)) then
    TryNextMethod();
  fi;

  diam:=Diameter(gamma);
  if (diam < 1) or (s > diam) then
    TryNextMethod();
  fi;

  return IsDistanceTransitiveGraphNC(gamma.group,s,gamma); 
end );

InstallMethod(IsDistanceTransitiveGraph,"grape vtg", true, [IsRecord], 0, 
function(gamma)
  local diam;
  if (not IsGraph(gamma)) then
    TryNextMethod();
  fi;

  diam:=Diameter(gamma);
  if diam < 1 then
    TryNextMethod();
  fi;

  return IsDistanceTransitiveGraphNC(gamma.group,diam,gamma); 
end );

#############################################################################
##
#O  GraphDistanceSetOrbits( [<G>, ]<i>, <gamma> )
##  
InstallMethod(GraphDistanceSetOrbits,"grape vtg", true, [IsPermGroup, IsPosInt, IsRecord], 0, 
function(G,i,gamma)
  local diam,seeds;
  if (not IsGraph(gamma)) then
    TryNextMethod();
  fi;

  diam:=Diameter(gamma);
  if (diam < 1) or (i > diam) then
    return [];
  fi;
  
  seeds:=AGT_DistanceRelationSeeds(gamma,i,true);

  return Orbits(G,seeds,OnPairs); 
end );

InstallMethod(GraphDistanceSetOrbits,"grape vtg", true, [IsPosInt, IsRecord], 0, 
function(i,gamma)
  local diam,seeds;
  if (not IsGraph(gamma)) then
    TryNextMethod();
  fi;

  diam:=Diameter(gamma);
  if (diam < 1) or (i > diam) then
    return [];
  fi;
  
  seeds:=AGT_DistanceRelationSeeds(gamma,i,true);

  return Orbits(gamma.group,seeds,OnPairs); 
end );
