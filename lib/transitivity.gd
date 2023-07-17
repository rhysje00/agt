#############################################################################
##
#W  transitivity.gd       Algebraic Graph Theory package       Rhys J. Evans
##
##
#Y  Copyright (C) 2020
##
##  Declaration file for functions involving transitivity properties of 
##  graphs.
##

#############################################################################
##
#O  IsVertexTransitiveGraph( [<G>, ]<gamma> )
##  
##  <#GAPDoc Label="IsVertexTransitiveGraph">
##  <ManSection>
##  <Oper Name="IsVertexTransitiveGraph"
##   Arg="[G, ]gamma"/>
##  <Returns><K>true</K> or <K>false</K>.</Returns>
##
##  <Description>
##  Given a graph <A>gamma</A> with group of automorphisms <A>G</A>,
##  this function returns <K>true</K> if <A>gamma</A> is 
##  <A>G</A>-vertex-transitive, and <K>false</K> otherwise. Given a
##  graph <A>gamma</A> and no other argument, this functions acts as if
##  <C><A>G</A>=<A>gamma</A>.group</C> in the case in which two arguments 
##  are given.  
##  <P/>
##  Let <M>\Gamma</M> be a graph with group of automorphisms <M>G&lt;Aut(\Gamma)</M>. 
##  Then <M>\Gamma</M> is <M>G</M><E>-vertex-transitive</E> if <M>G</M> acts 
##  transitively on the vertices of <M>\Gamma</M>. The graph <M>\Gamma</M> is
##  <E>vertex-transitive</E> if it is <M>Aut(\Gamma)</M><E>-vertex-transitive</E>. 
##    <Example>
##      <![CDATA[
##gap> gamma:=CompleteGraph(Group(()),5);;
##gap> IsVertexTransitiveGraph(gamma);
##false
##gap> IsVertexTransitiveGraph(AutGroupGraph(gamma),gamma);
##true
##gap> RemoveEdgeOrbit(gamma,[1,2]);
##gap> IsVertexTransitiveGraph(AutGroupGraph(gamma),gamma);
##false
##      ]]>
##    </Example>
##  </Description>
##
##  </ManSection>
##  <#/GAPDoc>
##
DeclareOperation("IsVertexTransitiveGraph", [IsPermGroup, IsRecord]);
DeclareOperation("IsVertexTransitiveGraph", [IsRecord]);

#############################################################################
##
#O  GraphVertexOrbits( <gamma> )
##  
##  <#GAPDoc Label="GraphVertexOrbits">
##  <ManSection>
##  <Oper Name="GraphVertexOrbits"
##   Arg="[G, ]gamma"/>
##  <Returns>A list.</Returns>
##
##  <Description>
##  Given a graph <A>gamma</A> with group of automorphisms <A>G</A>, this 
##  function returns the orbits of <A>G</A> on the vertices of <A>gamma</A>.
##  Given a graph <A>gamma</A> and no other argument, this functions acts 
##  as if <C><A>G</A>=<A>gamma</A>.group</C> in the case in which two arguments 
##  are given.
##    <Example>
##      <![CDATA[
##gap> gamma:=CompleteGraph(Group([(1,2),(3,4,5)]),5);;
##gap> GraphVertexOrbits(gamma);
##[ [ 1, 2 ], [ 3, 4, 5 ] ]
##gap> GraphVertexOrbits(AutGroupGraph(gamma),gamma);
##[ [ 1, 2, 3, 4, 5 ] ]
##      ]]>
##    </Example>
##  </Description>
##
##  </ManSection>
##  <#/GAPDoc>
##
DeclareOperation("GraphVertexOrbits", [IsPermGroup, IsRecord]);
DeclareOperation("GraphVertexOrbits", [IsRecord]);

#############################################################################
##
#O  AGT_DistanceRelationSeedsIsVertexTransitiveGraph( <gamma> )
##  
##  <#GAPDoc Label="exTransitiveGraph">
##  <ManSection>
##  <Oper Name="rtexTransitiveGraph"
##   Arg="gamma"/>
##  <Returns><K>true</K> or <K>false</K>.</Returns>
##
##  <Description>
##  Given a graph <A>gamma</A>, this function returns <K>true</K> if 
##  <A>gamma</A> is vertex-transitive, and <K>false</K> otherwise.
##  <P/>
##  Let <M>\Gamma</M> be a graph with automorphism group <M>Aut(\Gamma)</M>. 
##  Then <M>\Gamma</M> is <E>vertex-transitive</E> if <M>Aut(\Gamma)</M> 
##  acts transitively on the vertices of <M>\Gamma</M> (see <Cite Key="BH_2011"/>).
##    <Example>
##      <![CDATA[
##gap> HoffmanCocliqueBound(HammingGraph(3,5));
##25
##gap> HoffmanCocliqueBound(HammingGraph(2,5));               
##5
##gap> parms:=SRGParameters(HammingGraph(2,5));
##[ 25, 8, 3, 2 ]
##gap> HoffmanCocliqueBound(parms);
##5
##      ]]>
##    </Example>
##  </Description>
##
##  </ManSection>
##  <#/GAPDoc>
##
DeclareOperation("AGT_DistanceRelationSeeds", [IsRecord, IsInt, IsBool]);

#############################################################################
##
#O  IsEdgeTransitiveGraph( <gamma> )
##  
##  <#GAPDoc Label="IsEdgeTransitiveGraph">
##  <ManSection>
##  <Oper Name="IsEdgeTransitiveGraph"
##   Arg="[G, ]gamma"/>
##  <Returns><K>true</K> or <K>false</K>.</Returns>
##
##  <Description>
##  Given a graph <A>gamma</A> with group of automorphisms <A>G</A>, this 
##  function returns <K>true</K> if <A>gamma</A> is <A>G</A>-edge-transitive,
##  and <K>false</K> otherwise.  Given a graph <A>gamma</A> and no other 
##  argument, this functions acts as if <C><A>G</A>=<A>gamma</A>.group</C> in
##  the case in which two arguments are given.
##  <P/>
##  Let <M>\Gamma</M> be a graph with group of automorphisms <M>G&lt;Aut(\Gamma)</M>. 
##  Then <M>\Gamma</M> is <M>G</M><E>-edge-transitive</E> if <M>G</M> acts 
##  transitively on the edges of <M>\Gamma</M>. The graph <M>\Gamma</M> is
##  <E>edge-transitive</E> if it is <M>Aut(\Gamma)</M><E>-edge-transitive</E>.
##    <Example>
##      <![CDATA[
##gap> gamma:=EdgeOrbitsGraph(Group([(1,2),(3,4,5)]),[[1,3],[3,1]]);;
##gap> IsVertexTransitiveGraph(gamma);
##false
##gap> IsEdgeTransitiveGraph(gamma);
##true
##      ]]>
##    </Example>
##  </Description>
##
##  </ManSection>
##  <#/GAPDoc>
##
DeclareOperation("IsEdgeTransitiveGraph", [IsPermGroup, IsRecord]);
DeclareOperation("IsEdgeTransitiveGraph", [IsRecord]);

#############################################################################
##
#O  GraphEdgeOrbits( <gamma> )
##  
##  <#GAPDoc Label="GraphEdgeOrbits">
##  <ManSection>
##  <Oper Name="GraphEdgeOrbits"
##   Arg="[G, ]gamma"/>
##  <Returns>A list.</Returns>
##
##  <Description>
##  Given a graph <A>gamma</A> with group of automorphisms <A>G</A>, this 
##  function returns the orbits of <A>G</A> on the edges of <A>gamma</A>.
##  Given a graph <A>gamma</A> and no other argument, this functions acts 
##  as if <C><A>G</A>=<A>gamma</A>.group</C> in the case in which two arguments 
##  are given.
##    <Example>
##      <![CDATA[
##gap> TODO
##      ]]>
##    </Example>
##  </Description>
##
##  </ManSection>
##  <#/GAPDoc>
##
DeclareOperation("GraphEdgeOrbits", [IsPermGroup, IsRecord]);
DeclareOperation("GraphEdgeOrbits", [IsRecord]);

#############################################################################
##
#O  IsSymmetricGraph( <gamma> )
##  
##  <#GAPDoc Label="IsSymmetricGraph">
##  <ManSection>
##  <Oper Name="IsSymmetricGraph"
##   Arg="[G, ]gamma"/>
##  <Returns><K>true</K> or <K>false</K>.</Returns>
##
##  <Description>
##  Given a graph <A>gamma</A> with group of automorphisms <A>G</A>, this 
##  function returns <K>true</K> if <A>gamma</A> is <A>G</A>-symmetric graph,
##  and <K>false</K> otherwise. Given a graph <A>gamma</A> and no other 
##  argument, this functions acts as if <C><A>G</A>=<A>gamma</A>.group</C>
##  in the case in which two arguments are given.
##  <P/>
##  Let <M>\Gamma</M> be a graph with group of automorphisms <M>G&lt;Aut(\Gamma)</M>. 
##  Then <M>\Gamma</M> is <M>G</M><E>-symmetric</E> if it is both 
##  <M>G</M>-vertex-transitive and <M>G</M>-edge-transitive (see 
##  <Ref Oper="IsVertexTransitiveGraph"/> and <Ref Oper="IsEdgeTransitiveGraph"/>).
##  The graph <M>\Gamma</M> is <E>symmetric</E> if it is 
##  <M>Aut(\Gamma)</M>-symmetric.
##    <Example>
##      <![CDATA[
##gap> TODO
##      ]]>
##    </Example>
##  </Description>
##
##  </ManSection>
##  <#/GAPDoc>
##
DeclareOperation("IsSymmetricGraph", [IsPermGroup, IsRecord]);
DeclareOperation("IsSymmetricGraph", [IsRecord]);

#############################################################################
##
#O  IsSemisymmetricGraph( <gamma> )
##  
##  <#GAPDoc Label="IsSemisymmetricGraph">
##  <ManSection>
##  <Oper Name="IsSemisymmetricGraph"
##   Arg="[G, ]gamma"/>
##  <Returns><K>true</K> or <K>false</K>.</Returns>
##
##  <Description>
##  Given a graph <A>gamma</A> with group of automorphisms <A>G</A>, this 
##  function returns <K>true</K> if <A>gamma</A> is <A>G</A>-semisymmetric graph,
##  and <K>false</K> otherwise. Given a graph <A>gamma</A> and no other 
##  argument, this functions acts as if <C><A>G</A>=<A>gamma</A>.group</C>
##  in the case in which two arguments are given.
##  <P/>
##  Let <M>\Gamma</M> be a graph with group of automorphisms <M>G&lt;Aut(\Gamma)</M>. 
##  Then <M>\Gamma</M> is <M>G</M><E>-semisymmetric</E> if it is regular  
##  and <M>G</M>-edge-transitive, but not <M>G</M>-vertex-transitive (see 
##  <Ref Func="IsRG"/>, <Ref Oper="IsEdgeTransitiveGraph"/> and 
##  <Ref Oper="IsVertexTransitiveGraph"/>). The graph <M>\Gamma</M> is 
##  <E>semisymmetric</E> if it is <M>Aut(\Gamma)</M>-semisymmetric.
##    <Example>
##      <![CDATA[
##gap> TODO
##      ]]>
##    </Example>
##  </Description>
##
##  </ManSection>
##  <#/GAPDoc>
##
DeclareOperation("IsSemisymmetricGraph", [IsPermGroup, IsRecord]);
DeclareOperation("IsSemisymmetricGraph", [IsRecord]);

#############################################################################
##
#O  IsArcTransitiveGraph( [G, ]<gamma> )
##  
##  <#GAPDoc Label="IsArcTransitiveGraph">
##  <ManSection>
##  <Oper Name="IsArcTransitiveGraph"
##   Arg="[G, ]gamma"/>
##  <Returns><K>true</K> or <K>false</K>.</Returns>
##
##  <Description>
##  Given a graph <A>gamma</A> with group of automorphisms <A>G</A>, this 
##  function returns <K>true</K> if <A>gamma</A> is <A>G</A>-arc-transitive,
##  and <K>false</K> otherwise. Given a graph <A>gamma</A> and no other 
##  argument, this functions acts as if <C><A>G</A>=<A>gamma</A>.group</C> in
##  the case in which two arguments are given.
##  <P/>
##  Let <M>\Gamma</M> be a graph with group of automorphisms <M>G&lt;Aut(\Gamma)</M>. 
##  Then <M>\Gamma</M> is <M>G</M><E>-arc-transitive</E> if <M>G</M> acts 
##  transitively on the arcs of <M>\Gamma</M>. The graph <M>\Gamma</M> is
##  <E>arc-transitive</E> if it is <M>Aut(\Gamma)</M>-arc-transitive.
##    <Example>
##      <![CDATA[
##gap> TODO
##      ]]>
##    </Example>
##  </Description>
##
##  </ManSection>
##  <#/GAPDoc>
##
DeclareOperation("IsArcTransitiveGraph", [IsPermGroup, IsRecord]);
DeclareOperation("IsArcTransitiveGraph", [IsRecord]);

#############################################################################
##
#O  GraphArcOrbits( <gamma> )
##  
##  <#GAPDoc Label="GraphArcOrbits">
##  <ManSection>
##  <Oper Name="GraphArcOrbits"
##   Arg="[G, ]gamma"/>
##  <Returns>A list.</Returns>
##
##  <Description>
##  Given a graph <A>gamma</A> with group of automorphisms <A>G</A>, this 
##  function returns the orbits of <A>G</A> on the arcs of <A>gamma</A>.
##  Given a graph <A>gamma</A> and no other argument, this functions acts 
##  as if <C><A>G</A>=<A>gamma</A>.group</C> in the case in which two arguments 
##  are given.
##    <Example>
##      <![CDATA[
##gap> TODO
##      ]]>
##    </Example>
##  </Description>
##
##  </ManSection>
##  <#/GAPDoc>
##
DeclareOperation("GraphArcOrbits", [IsPermGroup, IsRecord]);
DeclareOperation("GraphArcOrbits", [IsRecord]);

#############################################################################
##
#O  IsHalfArcTransitiveGraph( [G, ]<gamma> )
##  
##  <#GAPDoc Label="IsHalfArcTransitiveGraph">
##  <ManSection>
##  <Oper Name="IsHalfArcTransitiveGraph"
##   Arg="[G, ]gamma"/>
##  <Returns><K>true</K> or <K>false</K>.</Returns>
##
##  <Description>
##  Given a graph <A>gamma</A> with group of automorphisms <A>G</A>, this 
##  function returns <K>true</K> if <A>gamma</A> is <A>G</A>-half-arc-transitive,
##  and <K>false</K> otherwise. Given a graph <A>gamma</A> and no other 
##  argument, this functions acts as if <C><A>G</A>=<A>gamma</A>.group</C> in
##  the case in which two arguments are given.
##  <P/>
##  Let <M>\Gamma</M> be a graph with group of automorphisms <M>G&lt;Aut(\Gamma)</M>. 
##  Then <M>\Gamma</M> is <M>G</M><E>-half-arc-transitive</E> if it is
##  <M>G</M>-vertex-transitive and <M>G</M>-edge-transitive, but not 
##  <M>G</M>-arc-transitive (see <Ref Oper="IsVertexTransitiveGraph"/>,
##  <Ref Oper="IsEdgeTransitiveGraph"/>, and <Ref Oper="IsArcTransitiveGraph"/>). 
##  The graph <M>\Gamma</M> is <E>arc-transitive</E> if it is 
##  <M>Aut(\Gamma)</M>-arc-transitive.
##    <Example>
##      <![CDATA[
##gap> TODO
##      ]]>
##    </Example>
##  </Description>
##
##  </ManSection>
##  <#/GAPDoc>
##
DeclareOperation("IsHalfArcTransitiveGraph", [IsPermGroup, IsRecord]);
DeclareOperation("IsHalfArcTransitiveGraph", [IsRecord]);


#############################################################################
##
#O  IsDistanceTransitiveGraph( [<G>, ][<s>, ]<gamma> )
##  
##  <#GAPDoc Label="IsDistanceTransitiveGraph">
##  <ManSection>
##  <Oper Name="IsDistanceTransitiveGraph"
##   Arg="[G, ][s, ]gamma"/>
##  <Returns><K>true</K> or <K>false</K>.</Returns>
##
##  <Description>
##  Given a graph <A>gamma</A> with group of automorphisms <A>G</A>, and a 
##  positive integer <A>s</A>, this function returns <K>true</K> if    
##  <A>gamma</A> is <M>(<A>G</A>,<A>s</A>)</M>-distance-transitive, and 
##  <K>false</K> otherwise. If the positive integer <A>s</A> is not specified, 
##  this functions acts as if <A>s</A> is the diameter of <A>gamma</A>. If the 
##  group <A>G</A> is not specified, this functions acts as if 
##  <C><A>G</A>=<A>gamma</A>.group</C>.
##  <P/>
##  Let <M>\Gamma</M> be a graph with diameter <M>d</M> and group of automorphisms
##  <M>G&lt;Aut(\Gamma)</M>, and let <M>s</M> be a positive integer, <M>s\leqslant d</M>. 
##  Then <M>\Gamma</M> is <M>(G,s)</M><E>-distance-transitive</E> if for each integer
##  <M>i</M> such that <M>1\leqslant i\leqslant s</M>, <M>G</M> acts transitively on 
##  the set <M>S_{i}=\{(u,w):u,w\in V(\Gamma),d_{\Gamma}(u,w)=i\}</M>. The graph 
##  <M>\Gamma</M> with diameter <M>d</M> is <E>distance-transitive</E> if it is 
##  <M>(Aut(\Gamma),d)</M>-distance-transitive.
##    <Example>
##      <![CDATA[
##gap> TODO
##      ]]>
##    </Example>
##  </Description>
##
##  </ManSection>
##  <#/GAPDoc>
##
DeclareGlobalFunction( "IsDistanceTransitiveGraphNC");
DeclareOperation("IsDistanceTransitiveGraph", [IsPermGroup, IsPosInt, IsRecord]);
DeclareOperation("IsDistanceTransitiveGraph", [IsPermGroup, IsRecord]);
DeclareOperation("IsDistanceTransitiveGraph", [IsPosInt, IsRecord]);
DeclareOperation("IsDistanceTransitiveGraph", [IsRecord]);

#############################################################################
##
#O  GraphDistanceSetOrbits([<G>, ] <i>, <gamma> )
##  
##  <#GAPDoc Label="GraphDistanceSetOrbits">
##  <ManSection>
##  <Oper Name="GraphDistanceSetOrbits"
##   Arg="[G, ]i, gamma"/>
##  <Returns>A list.</Returns>
##
##  <Description>
##  Given a graph <A>gamma</A> with group of automorphisms <A>G</A>, and a positive
##  integer <A>i</A>, this function returns the orbits of <A>G</A> on the set of 
##  ordered pairs of vertices of <A>gamma</A> at distance <A>i</A>. If the group 
##  <A>G</A> is not specified, this functions acts as if 
##  <C><A>G</A>=<A>gamma</A>.group</C>.
##    <Example>
##      <![CDATA[
##gap> TODO
##      ]]>
##    </Example>
##  </Description>
##
##  </ManSection>
##  <#/GAPDoc>
##
DeclareOperation("GraphDistanceSetOrbits", [IsInt, IsRecord]);
DeclareOperation("GraphDistanceSetOrbits", [IsPermGroup, IsInt, IsRecord]);


#############################################################################
##
#O  GraphEdgeOrbits( <gamma> )
##  
##  <#GAPDoc Label="vvGraphEdgeOrbits">
##  <ManSection>
##  <Oper Name="vvGraphEdgeOrbits"
##   Arg="gamma"/>
##  <Returns>A list.</Returns>
##
##  <Description>
##  Given a graph <A>gamma</A>, this function returns the list of edge   
##  orbits of <A>gamma</A>.
##  <P/>
##  Let <M>\Gamma</M> be a graph with automorphism group <M>Aut(\Gamma)</M>. 
##  The <E>edge orbits</E> of <M>\Gamma</M> are the orbits of 
##  <M>Aut(\Gamma)</M> acting on the edges of <M>\Gamma</M>.
##    <Example>
##      <![CDATA[
##gap> TODO
##      ]]>
##    </Example>
##  </Description>
##
##  </ManSection>
##  <#/GAPDoc>
##
