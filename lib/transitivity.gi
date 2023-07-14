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
InstallMethod(IsVertexTransitiveGraph,"grape vtg", true, [IsRecord], 0, 
function(gamma)
  
  if not IsGraph(gamma) then
    TryNextMethod();
  fi;

  return IsTransitive(AutGroupGraph(gamma), Vertices(gamma)); 
end );

#############################################################################
##
#O  GraphPermutationRank( <gamma> )
##  
InstallMethod(GraphPermutationRank,"grape vtg", true, [IsRecord], 0, 
function(gamma)

  if not IsGraph(gamma) then
    TryNextMethod();
  fi;
  
  if not IsVertexTransitiveGraph(gamma) then
    return fail;
  fi;

  return RankAction(AutGroupGraph(gamma)); 
end );

#############################################################################
##
#O  AGT_DistanceRelationSeeds( <gamma> )
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
InstallMethod(IsEdgeTransitiveGraph,"grape vtg", true, [IsRecord], 0, 
function(gamma)
  if not IsGraph(gamma) then
    TryNextMethod();
  fi;
  return Length(Orbits(AutGroupGraph(gamma),
                       AGT_DistanceRelationSeeds(gamma,1,false),
                       OnSets))
                                = 1; 
end );
