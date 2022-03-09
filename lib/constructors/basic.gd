#############################################################################
##
#W  basic.gd          Algebraic Graph Theory package         Janoš Vidali
##
##
#Y  Copyright (C) 2020
##
##  Declaration file for functions that construct basic graphs. 
##

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

# Latin square graphs. AutGroup reference?
#############################################################################
##
#F  LatinSquare( <parms> )
##  
##  <#GAPDoc Label="LatinSquareGraph">
##  <ManSection>
##  <Func Name="LatinSquareGraph"
##   Arg='arg'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  para1
## 
##  <P/>
##  para2
## 
## 
## 
## 
##    <Example>
##      <![CDATA[
##gap> AdjFunGraph(arg);
##[ 16, 6, 2, 2 ]
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##

DeclareConstructor( "LatinSquareGraphCons", [IsObject, IsObject, IsBool]);
DeclareGlobalFunction( "LatinSquareGraph" );

# Complete Taylor graphs, i.e. complete bipartite graphs minus a matching.
#############################################################################
##
#F  AdjFunGraph( <parms> )
##  
##  <#GAPDoc Label="CompleteTaylorGraph">
##  <ManSection>
##  <Func Name="CompleteTaylorGraph"
##   Arg='arg'/>
##  <Returns>A .</Returns>
##
##  <Description>
##  para1
## 
##  <P/>
##  para2
## 
## 
## 
## 
##    <Example>
##      <![CDATA[
##gap> AdjFunGraph(arg);
##[ 16, 6, 2, 2 ]
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##

DeclareGlobalFunction( "CompleteTaylorGraph" );

# Haar graphs
#############################################################################
##
#F  AdjFunGraph( <parms> )
##  
##  <#GAPDoc Label="HaarGraph">
##  <ManSection>
##  <Func Name="HaarGraph"
##   Arg='arg'/>
##  <Returns>A .</Returns>
##
##  <Description>
##  para1
## 
##  <P/>
##  para2
## 
## 
## 
## 
##    <Example>
##      <![CDATA[
##gap> AdjFunGraph(arg);
##[ 16, 6, 2, 2 ]
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##

DeclareConstructor( "HaarGraphCons", [IsObject, IsInt, IsList]);
DeclareGlobalFunction( "HaarGraph" );

