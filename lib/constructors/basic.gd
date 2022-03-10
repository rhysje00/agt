#############################################################################
##
#W  basic.gd          Algebraic Graph Theory package         Janoš Vidali
##
##
#Y  Copyright (C) 2020
##
##  Declaration file for functions that construct basic graphs. 
##

#TODO info on srg parms etc
#############################################################################
##
#F  CompleteMultipartiteGraph2( [<filter>, ]<list>  )
#F  CompleteMultipartiteGraph2( [<filter>, ]<int>, <int>  )
##  
##  <#GAPDoc Label="CompleteMultipartiteGraph2">
##  <ManSection>
##  <Func Name="CompleteMultipartiteGraph2"
##   Arg='[fil, ]sizes'/>
##  <Func Name="CompleteMultipartiteGraph2"
##   Arg='[fil, ]nparts, sparts' Label="for equal part sizes"/>
##  <Returns>A graph.</Returns>
##	
##  <Description>
##  Given a list of positive integers <A>sizes</A>, this function returns the
##  complete multipartite graph with part sizes <A>sizes</A>. Given positive
##  integers <A>nparts,sparts</A>, functions returns the complete
##  multipartite graph with <A>nparts</A> parts, each of size <A>sparts</A>.
##  <P/>
##  If <A>fil</A> is not given, or is <K>IsObject</K>,  the resulting graph 
##  <K>gamma</K> may not have been constructed using its full automorphism
##  group, and <K>gamma.group</K> may be a strict subgroup of the 
##  automorphism group. If <A>fil</A> is <K>FullAutomorphismGroup</K>, then
##  we construct the full automorphism group and use it to construct the 
##  graph, and <K>gamma.group</K> is this group.
##  <P/>
##  The resulting graph will have vertex names pairs of positive integers,
##  with first entry denoting the part the vertex is contained in, and the
##  second entry denoting the number of the vertex in its part.
##
##    <Example>
##      <![CDATA[
##gap> CompleteMultipartiteGraph2(3,4);
##rec( adjacencies := [ [ 5, 6, 7, 8, 9, 10, 11, 12 ] ], 
##  group := Group([ (1,2,3,4), (1,2), (1,5)(2,6)(3,7)(4,8), (1,5,9)
##      (2,6,10)(3,7,11)(4,8,12) ]), isGraph := true, 
##  names := [ [ 1, 1 ], [ 1, 2 ], [ 1, 3 ], [ 1, 4 ], [ 2, 1 ], 
##      [ 2, 2 ], [ 2, 3 ], [ 2, 4 ], [ 3, 1 ], [ 3, 2 ], [ 3, 3 ], 
##      [ 3, 4 ] ], order := 12, representatives := [ 1 ], 
##  schreierVector := [ -1, 1, 1, 1, 3, 3, 3, 3, 4, 4, 4, 4 ] )
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareConstructor( "CompleteMultipartiteGraphCons", [IsObject, IsInt, IsInt]);
DeclareGlobalFunction( "CompleteMultipartiteGraph2" );

#TODO info on parms
#############################################################################
##
#F  CycleGraph( <int> )
##  
##  <#GAPDoc Label="CycleGraph">
##  <ManSection>
##  <Func Name="CycleGraph"
##   Arg='int'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given an integer <A>int</A> greater than 1, this function returns the  
##  cycle graph with <A>int</A> vertices.
##  <P/>
##  The resulting graph <K>gamma</K> will have vertex names <K>[1..int]</K>, 
##  and vertices <M>x,y</M> are adjacent if and only if 
##  <M>x-y\equiv\pm 1\;(mod\;<A>int</A>)</M>.
## 
##    <Example>
##      <![CDATA[
##gap> CycleGraph(5);
##rec( adjacencies := [ [ 2, 5 ] ], 
##  group := Group([ (1,2,3,4,5), (2,5)(3,4) ]), isGraph := true, 
##  names := [ 1 .. 5 ], order := 5, representatives := [ 1 ], 
##  schreierVector := [ -1, 1, 1, 1, 2 ] )
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareGlobalFunction( "CycleGraph" );

#############################################################################
##
#F  CocktailPartyGraph( <int> )
##  
##  <#GAPDoc Label="CocktailPartyGraph">
##  <ManSection>
##  <Func Name="CocktailPartyGraph"
##   Arg='int'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given a positive integer <A>int</A>, this graph returns the Cocktail 
##  party graph with <A>int</A> parts. 
##  <P/>
##  The Cocktail party graphs are the complete multipartite graphs with all
##  parts of size 2 (see <Ref Func="CompleteMultipartiteGraph2"/>).
## 
##    <Example>
##      <![CDATA[
##gap> CocktailPartyGraph(4);
##rec( adjacencies := [ [ 3, 4, 5, 6, 7, 8 ] ], 
##  group := Group([ (1,2), (1,3)(2,4), (1,3,5,7)(2,4,6,8) ]), 
##  isGraph := true, 
##  names := [ [ 1, 1 ], [ 1, 2 ], [ 2, 1 ], [ 2, 2 ], [ 3, 1 ], 
##      [ 3, 2 ], [ 4, 1 ], [ 4, 2 ] ], order := 8, 
##  representatives := [ 1 ], 
##  schreierVector := [ -1, 1, 2, 2, 3, 3, 3, 3 ] )
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareGlobalFunction( "CocktailPartyGraph" );

#############################################################################
##
#F  PaleyGraph( <int> )
##  
##  <#GAPDoc Label="PaleyGraph">
##  <ManSection>
##  <Func Name="PaleyGraph"
##   Arg='int'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given <A>int</A>, postive power of an odd prime, this function returns the  
##  Paley graph of order <A>int</A>.
##  <P/>
##  Let <M>q</M> be a positive power of an odd prime number. Then the   
##  <E>Paley graph</E> of order <M>q</M>,<M>P_q</M> is the graph with vertex set 
##  <M>\mathbb{F}_q</M>, and distinct vertices <M>x,y</M> are adjacent if 
##  and only if <M>x-y</M> is a square. Therefore, this graph is undirected
##  if and only if <M>q\equiv 1\;(mod\; 4)</M>. When 
##  <M>q\equiv 1\;(mod\; 4)</M>, <M>P_q</M> is strongly regular with parameters
##  <M>(q,(q-1)/2,(q-5)/4,(q-1)/4)</M>.
##    <Example>
##      <![CDATA[
##gap> PaleyGraph(9);
##rec( adjacencies := [ [ 2, 3, 5, 8 ] ], 
##  group := Group([ (1,2,3)(4,5,9)(6,8,7), (1,4,7)(2,5,6)(3,9,8), 
##      (2,5,3,8)(4,6,7,9), (4,6)(5,8)(7,9) ]), isGraph := true, 
##  names := [ 0*Z(3), Z(3)^0, Z(3), Z(3^2), Z(3^2)^2, Z(3^2)^3, 
##      Z(3^2)^5, Z(3^2)^6, Z(3^2)^7 ], order := 9, 
##  representatives := [ 1 ], 
##  schreierVector := [ -1, 1, 1, 2, 2, 3, 2, 3, 2 ] )
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareGlobalFunction( "PaleyGraph" );

#TODO AutGroup reference? Info on parms
#############################################################################
##
#F  LatinSquareGraph( <matrix> )
#F  LatinSquareGraph( [<filter>, ]<group>[, <bool>] )
##  
##  <#GAPDoc Label="LatinSquareGraph">
##  <ManSection>
##  <Func Name="LatinSquareGraph"
##   Arg='mat'/>
##  <Func Name="LatinSquareGraph"
##   Arg='[fil, ]grp' Label="for groups"/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given a matrix <A>mat</A>, this function returns the Latin Square graph
##  associated to <A>mat</A>. Given a group <A>grp</A>, this function 
##  returns the Latin square graph associated to the Cayley table of 
##  <A>grp</A>.
##  <P/>
##  If <A>fil</A> is not given, or is <K>IsObject</K>,  the resulting graph 
##  <K>gamma</K> may not have been constructed using its full automorphism
##  group, and <K>gamma.group</K> may be a strict subgroup of the 
##  automorphism group. If <A>fil</A> is <K>FullAutomorphismGroup</K>, then
##  we construct the full automorphism group and use it to construct the 
##  graph, and <K>gamma.group</K> is this group.
##  <P/>
##  Let <M>M</M> be an <M>n\times m</M> matrix. Then <E>Latin square graph</E>
##  associated with <M>M</M> is the graph with vertex set 
##  <M>\{1..n\}\times \{1..m\}</M>, and distinct vertices <M>(i,j),(k,\ell)</M>
##  are adjcacent if and only if either
##  <List>
##    <Item><M>i=k</M>, or </Item>
##    <Item><M>j=\ell</M>, or</Item>
##    <Item><M>M_{i,j}=M_{k,\ell}</M>.</Item>
##  </List>
##  When associated to a Cayley table of a group <M>G</M>, the matrix is  
##  indexed by <M>G\times G</M>, and the graph has vertex set <M>G\times G</M>.
##  <P/>
##  TODO invt change (no effect on matrix input)
##    <Example>
##      <![CDATA[
##gap> LatinSquareGraph(CyclicGroup(4));
##rec( adjacencies := [ [ 2, 3, 4, 5, 6, 9, 12, 13, 15 ] ], 
##  group := <permutation group with 8 generators>, isGraph := true, 
##  names := [ [ <identity> of ..., <identity> of ... ], 
##      [ <identity> of ..., f2 ], [ <identity> of ..., f1 ], 
##      [ <identity> of ..., f1*f2 ], [ f2, <identity> of ... ], 
##      [ f2, f2 ], [ f2, f1 ], [ f2, f1*f2 ], [ f1, <identity> of ... ], 
##      [ f1, f2 ], [ f1, f1 ], [ f1, f1*f2 ], [ f1*f2, <identity> of ... ],
##      [ f1*f2, f2 ], [ f1*f2, f1 ], [ f1*f2, f1*f2 ] ], order := 16, 
##  representatives := [ 1 ], 
##  schreierVector := [ -1, 4, 3, 8, 2, 4, 3, 8, 1, 4, 3, 7, 2, 4, 7, 8 ] )
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareConstructor( "LatinSquareGraphCons", [IsObject, IsObject, IsBool]);
DeclareGlobalFunction( "LatinSquareGraph" );

#TODO info on parms
#############################################################################
##
#F  CompleteTaylorGraph( <integer> )
##  
##  <#GAPDoc Label="CompleteTaylorGraph">
##  <ManSection>
##  <Func Name="CompleteTaylorGraph"
##   Arg='int'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given an integer <A>int</A> greater than 1, this function returns the 
##  complete Taylor graph with <A>2*int</A> vertices.
##  <P/>
##  Let <M>n</M> be an integer greater than 1. The <E>complete Taylor graph</E>
##  with parts of size <M>n</M> (a.k.a the <M>n</M>-crown graph) is the
##  bipartite graph with parts <M>\{x_1\dots x_n,\},\{y_1\dots y_n\}</M>,
##  and vertices <M>x_i,y_j</M> are adjacent if and only if <M>i\not=j</M>.
##  <P/>
##  The graph returned by this function has vertex set consisting of pairs 
##  of integers. The first entry corresponds to the part the vertex is 
##  contained in, the second entry is its index in the part.
##    <Example>
##      <![CDATA[
##gap> CompleteTaylorGraph(3);
##rec( adjacencies := [ [ 5, 6 ] ], 
##  group := Group([ (1,2)(4,5), (1,2,3)(4,5,6), (1,4)(2,5)(3,6) ]), 
##  isGraph := true, isSimple := true, 
##  names := [ [ 1, 1 ], [ 1, 2 ], [ 1, 3 ], [ 2, 1 ], [ 2, 2 ], [ 2, 3 ] ], 
##  order := 6, representatives := [ 1 ], 
##  schreierVector := [ -1, 1, 2, 3, 3, 3 ] )
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareGlobalFunction( "CompleteTaylorGraph" );

#TODO why have a filter?
#############################################################################
##
#F  HaarGraph( [<filter>, ]<integer>[, <list>] )
##  
##  <#GAPDoc Label="HaarGraph">
##  <ManSection>
##  <Func Name="HaarGraph"
##   Arg='[fil, ]int[, list]'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given an integer <A>int</A>, this graph returns the Haar graph of 
##  <A>int</A>. If <A>list</A> is given, this function returns the cyclic
##  cyclic Haar graph with symbol <A>list</A>
##  <P/>
##  TODO insert definition(s) or reference.
## 
## 
## 
## 
##    <Example>
##      <![CDATA[
##gap> HaarGraph(11);
##rec( adjacencies := [ [ 5, 6, 8 ] ], 
##  group := Group([ (1,2,3,4)(5,6,7,8), (1,5)(2,8)(3,7)(4,6) ]), 
##  isGraph := true, 
##  names := [ [ 1, 1 ], [ 1, 2 ], [ 1, 3 ], [ 1, 4 ], [ 2, 1 ], [ 2, 2 ], 
##      [ 2, 3 ], [ 2, 4 ] ], order := 8, representatives := [ 1 ], 
##  schreierVector := [ -1, 1, 1, 1, 2, 1, 2, 2 ] )
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareConstructor( "HaarGraphCons", [IsObject, IsInt, IsList]);
DeclareGlobalFunction( "HaarGraph" );

