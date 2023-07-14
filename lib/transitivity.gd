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
#O  IsVertexTransitiveGraph( <gamma> )
##  
##  <#GAPDoc Label="IsVertexTransitiveGraph">
##  <ManSection>
##  <Oper Name="IsVertexTransitiveGraph"
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
##gap> gamma:=CompleteGraph(Group(()),5);;
##gap> IsVertexTransitiveGraph(gamma);
##true
##gap> RemoveEdgeOrbit(gamma,[1,2]);
##gap> IsVertexTransitiveGraph(gamma);
##false
##      ]]>
##    </Example>
##  </Description>
##
##  </ManSection>
##  <#/GAPDoc>
##
DeclareOperation("IsVertexTransitiveGraph", [IsRecord]);

#############################################################################
##
#O  GraphPermutationRank( <gamma> )
##  
##  <#GAPDoc Label="GraphPermutationRank">
##  <ManSection>
##  <Oper Name="GraphPermutationRank"
##   Arg="gamma"/>
##  <Returns>An integer, or <K>fail</K>.</Returns>
##
##  <Description>
##  Given a graph <A>gamma</A>, this function returns the rank of 
##  <M>Aut(<A>gamma</A>)</M> if <A>gamma</A> is vertex-transitive, 
##  and <K>fail</K> otherwise.
##  <P/>
##  Let <M>\Gamma</M> be a vertex-transitive graph with automorphism group
##  <M>Aut(\Gamma)</M>. The <E>rank</E> of <M>Aut(\Gamma)</M> is the number of 
##  orbits of the stabiliser of any vertex of <M>Aut(\Gamma)</M>. 
##    <Example>
##      <![CDATA[
##gap> Diameter(JohnsonGraph(6,3));
##3
##gap> GraphPermutationRank(JohnsonGraph(6,3));
##4
##      ]]>
##    </Example>
##  </Description>
##
##  </ManSection>
##  <#/GAPDoc>
##
DeclareOperation("GraphPermutationRank", [IsRecord]);

#############################################################################
##
#O  IsVertexTransitiveGraph( <gamma> )
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
##   Arg="gamma"/>
##  <Returns><K>true</K> or <K>false</K>.</Returns>
##
##  <Description>
##  Given a graph <A>gamma</A>, this function returns <K>true</K> if 
##  <A>gamma</A> is edge-transitive, and <K>false</K> otherwise.
##  <P/>
##  Let <M>\Gamma</M> be a graph with automorphism group <M>Aut(\Gamma)</M>. 
##  Then <M>\Gamma</M> is <E>edge-transitive</E> if <M>Aut(\Gamma)</M> 
##  acts transitively on the edges of <M>\Gamma</M> (see <Cite Key="BH_2011"/>).
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
DeclareOperation("IsEdgeTransitiveGraph", [IsRecord]);

#############################################################################
##
#O  IsVertexTransitiveGraph( <gamma> )
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
DeclareOperation("GraphEdgeOrbits", [IsRecord]);

## Remove S from name and merge?
DeclareOperation("IsDistanceSTransitiveGraph", [IsRecord, IsInt]);
DeclareOperation("GraphDistanceSSetOrbits", [IsRecord, IsInt]);

DeclareOperation("IsDistanceTransitiveGraph", [IsRecord]);

DeclareOperation("IsArcTransitiveGraph", [IsRecord]);
DeclareOperation("GraphArcOrbits", [IsRecord]);
