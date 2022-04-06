#############################################################################
##
#W  vctgrph.gd          Algebraic Graph Theory package         Janoš Vidali
##
##
#Y  Copyright (C) 2020
##
##  Declaration file for functions that construct vector graphs. 
##

#############################################################################
##
#F  HammingGraph2( [<filter>, ]<integer>, <integer> )
##  
##  <#GAPDoc Label="HammingGraph2">
##  <ManSection>
##  <Func Name="HammingGraph2"
##   Arg='[fil, ]d, e'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given positive integers <A>d,e</A>, this function returns the Hamming 
##  graph <M>H(<A>d</A>,<A>e</A>)</M>.
##  <P/>
##  If <A>fil</A> is not given, or is <C>IsObject</C>,  the resulting graph 
##  <C>gamma</C> may not have been constructed using its full automorphism
##  group, and <C>gamma.group</C> may be a strict subgroup of the 
##  automorphism group. If <A>fil</A> is <C>FullAutomorphismGroup</C>, then
##  we construct the full automorphism group and use it to construct the 
##  graph, and <C>gamma.group</C> is this group.
##  <P/>  
##  Let <M>d,e</M> be positive integers. The <E>Hamming graph</E> 
##  <M>H(d,e)</M> is the graph with vertex-set <M>\{1,...,e\}^d</M>, and
##  distinct vertices <M>x,y</M> are adjacent if and only if they differ 
##  in exactly one coordinate.
##    <Example>
##      <![CDATA[
##gap> HammingGraph2(4,2);
##rec( adjacencies := [ [ 2, 3, 5, 9 ] ], 
##  group := <permutation group with 6 generators>, isGraph := true, 
##  names := [ [ 1, 1, 1, 1 ], [ 1, 1, 1, 2 ], [ 1, 1, 2, 1 ], [ 1, 1, 2, 2 ], 
##      [ 1, 2, 1, 1 ], [ 1, 2, 1, 2 ], [ 1, 2, 2, 1 ], [ 1, 2, 2, 2 ], 
##      [ 2, 1, 1, 1 ], [ 2, 1, 1, 2 ], [ 2, 1, 2, 1 ], [ 2, 1, 2, 2 ], 
##      [ 2, 2, 1, 1 ], [ 2, 2, 1, 2 ], [ 2, 2, 2, 1 ], [ 2, 2, 2, 2 ] ], 
##  order := 16, representatives := [ 1 ], 
##  schreierVector := [ -1, 4, 3, 4, 2, 4, 3, 4, 1, 4, 3, 4, 2, 4, 3, 4 ] )
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareConstructor( "HammingGraphCons", [IsObject, IsInt, IsInt]);
DeclareGlobalFunction( "HammingGraph2" );

#############################################################################
##
#F  HypercubeGraph( [<filter>, ]<integer> )
##  
##  <#GAPDoc Label="HypercubeGraph">
##  <ManSection>
##  <Func Name="HypercubeGraph"
##   Arg='[fil, ]d'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given a positive integer <A>d</A>, this function returns the 
##  <A>d</A>-dimensional hypercube graph.
##  <P/>
##  If <A>fil</A> is not given, or is <C>IsObject</C>,  the resulting graph 
##  <C>gamma</C> may not have been constructed using its full automorphism
##  group, and <C>gamma.group</C> may be a strict subgroup of the 
##  automorphism group. If <A>fil</A> is <C>FullAutomorphismGroup</C>, then
##  we construct the full automorphism group and use it to construct the 
##  graph, and <C>gamma.group</C> is this group.
##  <P/>  
##  Let <M>d</M> be a positive integer. The <E><M>d</M>-dimensional hypercube
##  graph</E> is the graph with vertex-set <M>\{1,2\}^d</M>, and
##  distinct vertices <M>x,y</M> are adjacent if and only if they differ 
##  in exactly one coordinate (i.e. the Hamming graph <M>H(d,2)</M> 
##  <Ref Func="HammingGraph2"/>).
##    <Example>
##      <![CDATA[
##gap> HypercubeGraph(3);
##rec( adjacencies := [ [ 2, 3, 5 ] ], 
##  group := Group([ (1,5)(2,6)(3,7)(4,8), (1,3)(2,4)(5,7)(6,8), (1,2)(3,4)(5,6)
##      (7,8), (2,5,3)(4,6,7), (3,5)(4,6) ]), isGraph := true, 
##  names := [ [ 1, 1, 1 ], [ 1, 1, 2 ], [ 1, 2, 1 ], [ 1, 2, 2 ], [ 2, 1, 1 ], 
##      [ 2, 1, 2 ], [ 2, 2, 1 ], [ 2, 2, 2 ] ], order := 8, 
##  representatives := [ 1 ], schreierVector := [ -1, 3, 2, 3, 1, 3, 2, 3 ] )
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareGlobalFunction( "HypercubeGraph" );
    
#############################################################################
##
#F  DoobGraph( [<filter>, ]<integer>, <integer> )
##  
##  <#GAPDoc Label="DoobGraph">
##  <ManSection>
##  <Func Name="DoobGraph"
##   Arg='[fil, ]n, d'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given positive integers <A>n,d</A>, this function returns the Doob graph
##  <M>D(<A>n</A>,<A>d</A>)</M>.
##  <P/>
##  If <A>fil</A> is not given, or is <C>IsObject</C>,  the resulting graph 
##  <C>gamma</C> may not have been constructed using its full automorphism
##  group, and <C>gamma.group</C> may be a strict subgroup of the 
##  automorphism group. If <A>fil</A> is <C>FullAutomorphismGroup</C>, then
##  we construct the full automorphism group and use it to construct the 
##  graph, and <C>gamma.group</C> is this group.
##  <P/>  
##  Let <M>n,d</M> be positive integers. The <E>Doob graph</E> <M>D(n,d)</M>
##  is the graph box product of <M>n</M> copies of the Shrikhande graph and
##  the Hamming graph <M>H(d,4)</M>. (See <Ref Func="BoxProductGraph"/>, 
##  <Ref Func="ShrikhandeGraph"/> and <Ref Func="HammingGraph2"/>.)
##    <Example>
##      <![CDATA[
##gap> gamma:=DoobGraph(2,1);;
##gap> GlobalParameters(gamma);
##[ [ 0, 0, 15 ], [ 1, 2, 12 ], [ 2, 4, 9 ], [ 3, 6, 6 ], [ 4, 8, 3 ], 
##  [ 5, 10, 0 ] ]
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareConstructor( "DoobGraphCons", [IsObject, IsInt, IsInt]);
DeclareGlobalFunction( "DoobGraph" );

#############################################################################
##
#F  HalvedCubeGraph( [<filter>, ]<integer> )
##  
##  <#GAPDoc Label="HalvedCubeGraph">
##  <ManSection>
##  <Func Name="HalvedCubeGraph"
##   Arg='[fil, ]d'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given a positive integer <A>d</A>, this function returns the halved 
##  <A>d</A>-cube graph.
##  <P/>
##  If <A>fil</A> is not given, or is <C>IsObject</C>,  the resulting graph 
##  <C>gamma</C> may not have been constructed using its full automorphism
##  group, and <C>gamma.group</C> may be a strict subgroup of the 
##  automorphism group. If <A>fil</A> is <C>FullAutomorphismGroup</C>, then
##  we construct the full automorphism group and use it to construct the 
##  graph, and <C>gamma.group</C> is this group.
##  <P/>  
##  Let <M>d</M> be a positive integer. The <E>halved <M>d</M>-cube</E> is
##  the halved graph of the <M>d</M>-dimensional hypercube graph. (See  
##  <Ref Func="HalvedGraph"/> and <Ref Func="HypercubeGraph"/>.)
##    <Example>
##      <![CDATA[
##gap> HalvedCubeGraph(4);
##rec( adjacencies := [ [ 2, 3, 4, 5, 6, 7 ] ], 
##  group := Group([ (3,5)(4,6), (2,5,3)(4,6,7), (2,7)(4,5), (2,7)(3,6), 
##      (1,2,5,8,7,4)(3,6) ]), isGraph := true, isSimple := true, 
##  names := [ [ 1, 1, 1, 1 ], [ 1, 1, 2, 2 ], [ 1, 2, 1, 2 ], [ 1, 2, 2, 1 ], 
##      [ 2, 1, 1, 2 ], [ 2, 1, 2, 1 ], [ 2, 2, 1, 1 ], [ 2, 2, 2, 2 ] ], 
##  order := 8, representatives := [ 1 ], 
##  schreierVector := [ -1, 5, 1, 3, 2, 4, 3, 5 ] )
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareConstructor( "HalvedCubeGraphCons", [IsObject, IsInt]);
DeclareGlobalFunction( "HalvedCubeGraph" );

#############################################################################
##
#F  FoldedCubeGraph( [<filter>, ]<integer> )
##  
##  <#GAPDoc Label="FoldedCubeGraph">
##  <ManSection>
##  <Func Name="FoldedCubeGraph"
##   Arg='[fil, ]d'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given a positive integer <A>d</A>, this function returns the folded 
##  <A>d</A>-cube graph.
##  <P/>
##  If <A>fil</A> is not given, or is <C>IsObject</C>,  the resulting graph 
##  <C>gamma</C> may not have been constructed using its full automorphism
##  group, and <C>gamma.group</C> may be a strict subgroup of the 
##  automorphism group. If <A>fil</A> is <C>FullAutomorphismGroup</C>, then
##  we construct the full automorphism group and use it to construct the 
##  graph, and <C>gamma.group</C> is this group.
##  <P/>  
##  Let <M>d</M> be a positive integer. The <E>folded <M>d</M>-cube</E> is
##  the antipodal quotient graph of the <M>d</M>-dimensional hypercube graph.  
##  (See <Ref Func="AntipodalQuotientGraph"/> and <Ref Func="HypercubeGraph"/>.)
##    <Example>
##      <![CDATA[
##gap> FoldedCubeGraph(4);
##rec( adjacencies := [ [ 2, 3, 5, 8 ] ], 
##  group := Group([ (1,2)(3,4)(5,6)(7,8), (1,3)(2,4)(5,7)(6,8), (1,5)(2,6)(3,7)
##      (4,8), (2,3)(6,7), (2,3,5)(4,7,6), (2,8)(3,5), (2,5)(3,8), (1,8)(2,7)
##      (3,6)(4,5) ]), isGraph := true, 
##  names := [ [ [ 1, 1, 1, 1 ], [ 2, 2, 2, 2 ] ], 
##      [ [ 1, 2, 2, 2 ], [ 2, 1, 1, 1 ] ], [ [ 1, 2, 1, 1 ], [ 2, 1, 2, 2 ] ], 
##      [ [ 1, 1, 2, 2 ], [ 2, 2, 1, 1 ] ], [ [ 1, 1, 2, 1 ], [ 2, 2, 1, 2 ] ], 
##      [ [ 1, 2, 1, 2 ], [ 2, 1, 2, 1 ] ], [ [ 1, 2, 2, 1 ], [ 2, 1, 1, 2 ] ], 
##      [ [ 1, 1, 1, 2 ], [ 2, 2, 2, 1 ] ] ], order := 8, 
##  representatives := [ 1 ], schreierVector := [ -1, 1, 2, 2, 3, 3, 8, 8 ] )
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareConstructor( "FoldedCubeGraphCons", [IsObject, IsInt]);
DeclareGlobalFunction( "FoldedCubeGraph" );

#############################################################################
##
#F  FoldedHalvedCubeGraph( [<filter>, ]<integer> )
##  
##  <#GAPDoc Label="FoldedHalvedCubeGraph">
##  <ManSection>
##  <Func Name="FoldedHalvedCubeGraph"
##   Arg='[fil, ]d'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given a integer <A>d</A> with <A>d&gt;2</A>, this function returns the 
##  folded halved <M>2<A>d</A></M>-cube graph.
##  <P/>
##  If <A>fil</A> is not given, or is <C>IsObject</C>,  the resulting graph 
##  <C>gamma</C> may not have been constructed using its full automorphism
##  group, and <C>gamma.group</C> may be a strict subgroup of the 
##  automorphism group. If <A>fil</A> is <C>FullAutomorphismGroup</C>, then
##  we construct the full automorphism group and use it to construct the 
##  graph, and <C>gamma.group</C> is this group.
##  <P/>  
##  Let <M>d</M> be a positive integer. The <E>folded halved 
##  <M>d</M>-cube</E> is the antipodal quotient of the halved graph of the
##  <M>d</M>-dimensional hypercube graph.  
##  (See <Ref Func="AntipodalQuotientGraph"/>, <Ref Func="HalvedGraph"/> and 
##  <Ref Func="HypercubeGraph"/>.)
##    <Example>
##      <![CDATA[
##gap> gamma:=FoldedHalvedCubeGraph(4);;
##gap> GlobalParameters(gamma);
##[ [ 0, 0, 28 ], [ 1, 12, 15 ], [ 12, 16, 0 ] ]
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareConstructor( "FoldedHalvedCubeGraphCons", [IsObject, IsInt]);
DeclareGlobalFunction( "FoldedHalvedCubeGraph" );
DeclareSynonym("HalvedFoldedCubeGraph", FoldedHalvedCubeGraph);


# TODO ref
#############################################################################
##
#F  BrouwerGraph( [<filter>, ]<integer> )
##  
##  <#GAPDoc Label="BrouwerGraph">
##  <ManSection>
##  <Func Name="BrouwerGraph"
##   Arg='[fil, ]q'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given a prime power <A>q</A>, this function returns the Brouwer graph 
##  <M>Br(q)</M>.
##  <P/>
##  If <A>fil</A> is not given, or is <C>IsObject</C>,  the resulting graph 
##  <C>gamma</C> may not have been constructed using its full automorphism
##  group, and <C>gamma.group</C> may be a strict subgroup of the 
##  automorphism group. If <A>fil</A> is <C>FullAutomorphismGroup</C>, then
##  we construct the full automorphism group and use it to construct the 
##  graph, and <C>gamma.group</C> is this group.
##  <P/>  
##  Let <M>q</M> be a prime power. The <E>Brouwer graph</E> <M>Br(q)</M>
##  is the graph with vertex-set <M>GF(q)^3 \times GF(q)^3</M>,
##  and distinct vertices <M>(x_1,y_2),(x_2,y_2)</M> are adjacent if and 
##  only if <M>x_1-y_1=x_2\times y_2</M> (where <M>\times</M> is the cross
##  product of vectors). 
##    <Example>
##      <![CDATA[
##gap> gamma:=BrouwerGraph(2);;
##gap> GlobalParameters(gamma);
##[ [ 0, 0, 7 ], [ 1, 0, 6 ], [ 2, 0, 5 ], [ 3, 4, 0 ] ]
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareConstructor( "BrouwerGraphCons", [IsObject, IsInt]);
DeclareGlobalFunction( "BrouwerGraph" );

#############################################################################
##
#F  PasechnikGraph( [<filter>, ]<integer> )
##  
##  <#GAPDoc Label="PasechnikGraph">
##  <ManSection>
##  <Func Name="PasechnikGraph"
##   Arg='[fil, ]q'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given a prime power <A>q</A>, this function returns the Pasechnik graph 
##  <M>Pa(q)</M>.
##  <P/>
##  Let <M>q</M> be a prime power. The <E>Pasechnik graph</E> <M>Pa(q)</M>
##  can be constructed as the extended bipartite double of the Brouwer 
##  graph <M>Br(q)</M>. (See <Ref Func="ExtendedBipartiteDoubleGraph"/>
##  and <Ref Func="BrouwerGraph"/>.)
##    <Example>
##      <![CDATA[
##gap> gamma:=PasechnikGraph(3);;
##gap> GlobalParameters(gamma);
##[ [ 0, 0, 27 ], [ 1, 0, 26 ], [ 3, 0, 24 ], [ 8, 0, 19 ], [ 27, 0, 0 ] ]
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareConstructor( "PasechnikGraphCons", [IsObject, IsInt]);
DeclareGlobalFunction( "PasechnikGraph" );

# The additive symplectic cover of the complete graph on q^{2n} vertices.
# TODO need reference and/or definition, and to include second usage
#############################################################################
##
#F  AdditiveSymplecticCoverGraph( [<filter>, ]<integer>, <integer>[, <integer>] )
#F  AdditiveSymplecticCoverGraph( [<filter>, ]<graph>[, <integer>] )
##  
##  <#GAPDoc Label="AdditiveSymplecticCoverGraph">
##  <ManSection>
##  <Func Name="AdditiveSymplecticCoverGraph"
##   Arg='[fil, ]q, n[, h]'/>
##  <Func Name="AdditiveSymplecticCoverGraph"
##   Arg='[fil, ]gamma[, h]' Label="for a graph"/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given a prime power <A>q</A> and positive integer <A>n</A>, this function 
##  returns the additive symplectic cover graph associated with the symplectic
##  invariant bilinear form acting on <M>GF(<A>q</A>)^{2<A>n</A>}</M>. 
##  If <A>h</A> is a non-negative integer, this function returns the additive
##  symplectic cover graph defined as above, modulo a <A>h</A>-dimensional 
##  subspace of <M>GF(<A>q</A>)</M>.
##  <P/>
##  If <A>fil</A> is not given, or is <C>IsObject</C>,  the resulting graph 
##  <C>gamma</C> may not have been constructed using its full automorphism
##  group, and <C>gamma.group</C> may be a strict subgroup of the 
##  automorphism group. If <A>fil</A> is <C>FullAutomorphismGroup</C>, then
##  we construct the full automorphism group and use it to construct the 
##  graph, and <C>gamma.group</C> is this group.
##  <P/>
##  Let <M>q</M> be a prime power and <M>n</M> and positive integer. Let
##  <M>K</M> be a <M>h</M>-dimensional subspace of <M>GF(q)</M>, and 
##  denote the cosets of <M>K</M> in <M>GF(q)</M> by <M>\overline{K}</M>.
##  Let <M>B</M> be the symplectic invariant bilinear form acting on 
##  <M>GF(q)^{2n}</M>. 
##  <P/>
##  Then the <E>additive symplectic cover graph</E> with respect to these is the 
##  graph with vertex-set <M>\overline{K} \times GF(q)^{2n}</M>, and distinct 
##  vertices <M>(a+K,x),(b+K,y)</M> are adjacent if and only if <M>B(x,y)\in a-b+K</M>.
##    <Example>
##      <![CDATA[
##gap> gamma:=AdditiveSymplecticCoverGraph(2,2);;
##gap> GlobalParameters(gamma);
##[ [ 0, 0, 15 ], [ 1, 6, 8 ], [ 8, 6, 1 ], [ 15, 0, 0 ] ]
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareConstructor("AdditiveSymplecticCoverGraphCons",
                    [IsObject, IsInt, IsInt, IsInt]);
DeclareGlobalFunction( "AdditiveSymplecticCoverGraph" );

# The multiplicative symplectic cover of the complete graph on q+1 vertices.
# It is distance-regular when m divides q-1 and either q or m is even.
# TODO need reference and/or definition, 
#############################################################################
##
#F  MultiplicativeSymplecticCoverGraph( [<filter>, ]<integer>, <integer> )
##  
##  <#GAPDoc Label="MultiplicativeSymplecticCoverGraph">
##  <ManSection>
##  <Func Name="MultiplicativeSymplecticCoverGraph"
##   Arg='[fil, ]q, m'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given a prime power <A>q</A> and positive integer <A>m</A>, this function 
##  returns the multiplicative symplectic cover graph associated with the symplectic
##  invariant bilinear form acting on <M>GF(<A>q</A>)^2</M> and  
##  multiplicative subgroup of <M>GF(<A>q</A>)</M> of order <A>m</A>.
##  <P/>
##  If <A>fil</A> is not given, or is <C>IsObject</C>,  the resulting graph 
##  <C>gamma</C> may not have been constructed using its full automorphism
##  group, and <C>gamma.group</C> may be a strict subgroup of the 
##  automorphism group. If <A>fil</A> is <C>FullAutomorphismGroup</C>, then
##  we construct the full automorphism group and use it to construct the 
##  graph, and <C>gamma.group</C> is this group.
##  <P/>
##  Let <M>q</M> be a prime power and <M>m</M> and positive integer. Let
##  <M>K</M> be a multiplicative subgroup of <M>GF(q)</M> of order <M>m</M> 
##  Let <M>B</M> be the symplectic invariant bilinear form acting on 
##  <M>GF(q)^2</M>. 
##  <P/>
##  Then the <E>multiplicative symplectic cover graph</E> with respect to these is the 
##  graph with vertex-set <M>K.GF(q)^2 \setminus \{(0,0)\}</M>, and distinct 
##  vertices <M>Kx,Ky</M> are adjacent if and only if <M>B(x,y)\in K</M>.
##    <Example>
##      <![CDATA[
##gap> gamma:=MultiplicativeSymplecticCoverGraph(9,4);;
##gap> GlobalParameters(gamma);
##[ [ 0, 0, 9 ], [ 1, 4, 4 ], [ 4, 4, 1 ], [ 9, 0, 0 ] ]
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareConstructor("MultiplicativeSymplecticCoverGraphCons",
                    [IsObject, IsInt, IsInt]);
DeclareGlobalFunction( "MultiplicativeSymplecticCoverGraph" );

#############################################################################
##
#F  AffinePolarGraphVO( [<integer>, ]<integer>, <integer> )
##  
##  <#GAPDoc Label="AffinePolarGraphVO">
##  <ManSection>
##  <Func Name="AffinePolarGraphVO"
##   Arg='[e, ]d, q'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given a prime power <A>q</A> and positive integer <A>d</A>, this function 
##  returns the affine polar graph <M>VO_{<A>d</A>}(<A>q</A>)</M>. If 
##  <A>e</A> is given and lies in <C>[0,-1,1]</C>, then this function returns
##  the affine polar graph <M>VO_{<A>d</A>}^{<A>e</A>}(<A>q</A>)</M> with 
##  respect to a parabolic, elliptic and hyperbolic quadratic form, 
##  repectively. If <A>e</A> is not given, the function works as if 
##  <A>e</A> is <C>0</C>.
##  <P/>
##  Let <M>q</M> be a prime power and <M>d</M> and positive integer. Let
##  <M>Q</M> be a nondegenerate quadratic form acting on  
##  <M>GF(q)^d</M>. If <M>Q</M> is parabolic let <M>e=0</M>, 
##  elliptic let <M>e=-1</M> or hyperbolic let <M>e=1</M>. 
##  <P/>
##  The <E>affine polar graph</E> <M>VO_{d}^{e}(q)</M> is the graph with 
##  vertex-set <M>GF(q)^d</M>, and distinct vertices <M>x,y</M>
##  are adjacent if and only if <M>Q(x-y)=0</M>.
##    <Example>
##      <![CDATA[
##gap> AffinePolarGraphVO(1,2,4);
##rec( adjacencies := [ [ 2, 3, 4, 5, 9, 13 ] ], 
##  group := <permutation group with 7 generators>, isGraph := true, 
##  names := [ [ 0*Z(2), 0*Z(2) ], [ 0*Z(2), Z(2)^0 ], [ 0*Z(2), Z(2^2) ], 
##      [ 0*Z(2), Z(2^2)^2 ], [ Z(2)^0, 0*Z(2) ], [ Z(2)^0, Z(2)^0 ], 
##      [ Z(2)^0, Z(2^2) ], [ Z(2)^0, Z(2^2)^2 ], [ Z(2^2), 0*Z(2) ], 
##      [ Z(2^2), Z(2)^0 ], [ Z(2^2), Z(2^2) ], [ Z(2^2), Z(2^2)^2 ], 
##      [ Z(2^2)^2, 0*Z(2) ], [ Z(2^2)^2, Z(2)^0 ], [ Z(2^2)^2, Z(2^2) ], 
##      [ Z(2^2)^2, Z(2^2)^2 ] ], order := 16, representatives := [ 1 ], 
##  schreierVector := [ -1, 6, 7, 1, 4, 6, 7, 7, 5, 6, 7, 1, 5, 6, 7, 1 ] )
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareGlobalFunction( "AffinePolarGraphVO" );

#############################################################################
##
#F  AffinePolarGraphVNO( [<integer>, ]<integer>, <integer> )
##  
##  <#GAPDoc Label="AffinePolarGraphVNO">
##  <ManSection>
##  <Func Name="AffinePolarGraphVNO"
##   Arg='[e, ]d, q'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given a prime power <A>q</A> and positive integer <A>d</A>, this function 
##  returns the affine polar graph <M>VNO_{2<A>d</A>}(<A>q</A>)</M>. If 
##  <A>e</A> is given and lies in <C>[0,-1,1]</C>, then this function returns
##  the affine polar graph <M>VNO_{<A>d</A>}^{<A>e</A>}(<A>q</A>)</M> with 
##  respect to a parabolic, elliptic and hyperbolic quadratic form, 
##  repectively. If <A>e</A> is not given, the function works as if 
##  <A>e</A> is <C>0</C>.
##  <P/>
##  Let <M>q</M> be a prime power and <M>d</M> and positive integer. Let
##  <M>Q</M> be a nondegenerate quadratic form acting on  
##  <M>GF(q)^d</M>. If <M>Q</M> is parabolic let <M>e=0</M>, 
##  elliptic let <M>e=-1</M> or hyperbolic let <M>e=1</M>. 
##  <P/>
##  The <E>affine polar graph</E> <M>VNO_{d}^{e}(q)</M> is the graph with 
##  vertex-set <M>GF(q)^d</M>, and distinct vertices <M>x,y</M>
##  are adjacent if and only if <M>Q(x-y)</M> is a nonzero square.
##    <Example>
##      <![CDATA[
##gap> gamma:=AffinePolarGraphVNO(1,4,3);;
##gap> SRGParameters(gamma);
##[ 81, 24, 9, 6 ]
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareGlobalFunction( "AffinePolarGraphVNO" );

#############################################################################
##
#E
