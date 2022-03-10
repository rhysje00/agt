#############################################################################
##
#W  setgrph.gd          Algebraic Graph Theory package         Janoš Vidali
##
##
#Y  Copyright (C) 2020
##
##  Declaration file for functions that construct set graphs. 
##

# TODO parms, invt
#############################################################################
##
#F  KneserGraph( [<filter>, ]<integer> <integer>[, <bool>] )
##  
##  <#GAPDoc Label="KneserGraph">
##  <ManSection>
##  <Func Name="KneserGraph"
##   Arg='[fil, ]n, k[, invt]'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given positive integers <A>n,k</A>, with <A>k&lt;n</A>, this function 
##  returns the Kneser graph on the <A>k</A>-subsets of <K>[1..n]</K>.
##  <P/>
##  If <A>fil</A> is not given, or is <K>IsObject</K>,  the resulting graph 
##  <K>gamma</K> may not have been constructed using its full automorphism
##  group, and <K>gamma.group</K> may be a strict subgroup of the 
##  automorphism group. If <A>fil</A> is <K>FullAutomorphismGroup</K>, then
##  we construct the full automorphism group and use it to construct the 
##  graph, and <K>gamma.group</K> is this group.
##  <P/>
##  Let <M>n,k</M> be positive integers where <M>k &lt;n</M>. The 
##  <E>Kneser graph</E> <M>K(n,k)</M> has vertex set the <M>k</M>-subsets
##  of <M>\{1\dots n\}</M>, and distinct vertices <M>X,Y</M> are adjacent
##  if and only if <M>X\cap Y = \emptyset</M>.
## 
##    <Example>
##      <![CDATA[
##gap> KneserGraph(6,2);
##rec( adjacencies := [ [ 10, 11, 12, 13, 14, 15 ] ], 
##  group := Group([ (1,6,10,13,15,5)(2,7,11,14,4,9)(3,8,12), (2,6)(3,7)(4,8)
##      (5,9) ]), isGraph := true, 
##  names := [ [ 1, 2 ], [ 1, 3 ], [ 1, 4 ], [ 1, 5 ], [ 1, 6 ], [ 2, 3 ], 
##      [ 2, 4 ], [ 2, 5 ], [ 2, 6 ], [ 3, 4 ], [ 3, 5 ], [ 3, 6 ], 
##      [ 4, 5 ], [ 4, 6 ], [ 5, 6 ] ], order := 15, 
##  representatives := [ 1 ], 
##  schreierVector := [ -1, 2, 2, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1 ] )
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareConstructor( "KneserGraphCons", [IsObject, IsInt, IsInt, IsBool]);
DeclareGlobalFunction( "KneserGraph" );

# TODO parms
#############################################################################
##
#F  OddGraph( [<filter>, ]<integer> )
##  
##  <#GAPDoc Label="OddGraph">
##  <ManSection>
##  <Func Name="OddGraph"
##   Arg='[fil, ]d'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given a positive integer <A>d</A>, this function returns the Odd graph 
##  of diameter <A>d</A>
##  <P/>
##  If <A>fil</A> is not given, or is <K>IsObject</K>,  the resulting graph 
##  <K>gamma</K> may not have been constructed using its full automorphism
##  group, and <K>gamma.group</K> may be a strict subgroup of the 
##  automorphism group. If <A>fil</A> is <K>FullAutomorphismGroup</K>, then
##  we construct the full automorphism group and use it to construct the 
##  graph, and <K>gamma.group</K> is this group.
##  <P/>
##  Let <M>d</M> be a positive integer. Then the <E>Odd graph</E> of 
##  diameter <M>d</M> is the graph <M>K(2d+1,d)</M>. (see 
##  <Ref Func="KneserGraph"/>).
##    <Example>
##      <![CDATA[
##gap> OddGraph(2);
##rec( adjacencies := [ [ 3, 5, 8 ] ], 
##  group := Group([ (1,2,3,5,7)(4,6,8,9,10), (2,4)(6,9)(7,10) ]), 
##  isGraph := true, 
##  names := [ [ 1, 2 ], [ 2, 3 ], [ 3, 4 ], [ 1, 3 ], [ 4, 5 ], [ 2, 4 ], 
##      [ 1, 5 ], [ 3, 5 ], [ 1, 4 ], [ 2, 5 ] ], order := 10, 
##  representatives := [ 1 ], 
##  schreierVector := [ -1, 1, 1, 2, 1, 1, 1, 1, 2, 2 ] )
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareGlobalFunction( "OddGraph" );

# TODO parms
#############################################################################
##
#F  DoubledOddGraph( [<filter>, ]<integer> )
##  
##  <#GAPDoc Label="DoubledOddGraph">
##  <ManSection>
##  <Func Name="DoubledOddGraph"
##   Arg='[fil, ]d'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given a positive integer <A>d</A>, this function returns the bipartite 
##  double of Odd graph of diameter <A>d</A> (see <Ref Func="OddGraph"/> and
##  <Ref Func="BipartiteDoubleGraph"/>).
##  <P/>
##  If <A>fil</A> is not given, or is <K>IsObject</K>,  the resulting graph 
##  <K>gamma</K> may not have been constructed using its full automorphism
##  group, and <K>gamma.group</K> may be a strict subgroup of the 
##  automorphism group. If <A>fil</A> is <K>FullAutomorphismGroup</K>, then
##  we construct the full automorphism group and use it to construct the 
##  graph, and <K>gamma.group</K> is this group.
##  <P/>
##  Let <M>d</M> be a positive integer. The assoicated doubled odd graph has
##  vertex set consisting of all subsets of <M>\{1\dots n\}</M> with sizes 
##  in <M>\{d,d+1\}</M>vertices, and distinct vertices <M>X,Y</M> are 
##  adjacent if and only if <M>X\subset Y</M> or <M>Y\subset X</M>.
##  This is isomorphic to the  bipartite double of the Odd
##  graph given by <Ref Func="OddGraph"/> and
##  <Ref Func="BipartiteDoubleGraph"/>.
##
## 
##    <Example>
##      <![CDATA[
##gap> DoubledOddGraph(2);
##rec( adjacencies := [ [ 2, 3, 4 ] ], 
##  group := Group([ (1,11,17,20,10)(2,12,18,9,4)(3,13,6,15,7)
##      (5,14,19,8,16), (5,11)(6,12)(7,13)(8,14)(9,15)(10,16), (1,18)(2,20)
##      (3,19)(4,17)(5,15)(6,16)(7,14)(8,13)(9,11)(10,12) ]), 
##  isGraph := true, 
##  names := [ [ 1, 2 ], [ 1, 2, 3 ], [ 1, 2, 4 ], [ 1, 2, 5 ], [ 1, 3 ], 
##      [ 1, 3, 4 ], [ 1, 3, 5 ], [ 1, 4 ], [ 1, 4, 5 ], [ 1, 5 ], [ 2, 3 ], 
##      [ 2, 3, 4 ], [ 2, 3, 5 ], [ 2, 4 ], [ 2, 4, 5 ], [ 2, 5 ], [ 3, 4 ], 
##      [ 3, 4, 5 ], [ 3, 5 ], [ 4, 5 ] ], order := 20, 
##  representatives := [ 1 ], 
##  schreierVector := [ -1, 3, 3, 3, 2, 3, 3, 2, 3, 1, 1, 3, 3, 1, 3, 2, 1, 
##      3, 1, 1 ] )
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareConstructor( "DoubledOddGraphCons", [IsObject, IsInt]);
DeclareGlobalFunction( "DoubledOddGraph" );

# TODO parms
#############################################################################
##
#F  FoldedJohnsonGraph( [<filter>, ]<integer> )
##  
##  <#GAPDoc Label="FoldedJohnsonGraph">
##  <ManSection>
##  <Func Name="FoldedJohnsonGraph"
##   Arg='[fil, ]d'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given an integer <A>d</A>, where <C>d&gt;2</C>, this function returns the
##  folded Johnson graph, defined on the Johnson graph <M>J(2d,d)</M>.
##  <P/>
##  If <A>fil</A> is not given, or is <K>IsObject</K>,  the resulting graph 
##  <K>gamma</K> may not have been constructed using its full automorphism
##  group, and <K>gamma.group</K> may be a strict subgroup of the 
##  automorphism group. If <A>fil</A> is <K>FullAutomorphismGroup</K>, then
##  we construct the full automorphism group and use it to construct the 
##  graph, and <K>gamma.group</K> is this group.
##  <P/>
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

DeclareConstructor("JohnsonGraphCons", [IsObject, IsInt, IsInt]);
DeclareConstructor("FoldedJohnsonGraphCons", [IsObject, IsInt]);
DeclareGlobalFunction( "FoldedJohnsonGraph" );

# The three Chang graphs with v=28, k=12, lm=6, mu=4
#############################################################################
##
#F  AdjFunGraph( <parms> )
##  
##  <#GAPDoc Label="ChangGraph">
##  <ManSection>
##  <Func Name="ChangGraph"
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

DeclareGlobalFunction( "ChangGraph" );
DeclareConstructor("ChangGraphCons", [IsObject, IsInt]);
