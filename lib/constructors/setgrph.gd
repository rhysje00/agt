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
##  returns the Kneser graph on the <A>k</A>-subsets of <C>[1..n]</C>.
##  <P/>
##  The optional argument <A>fil</A>, if used, can only take value 
##  <C>FullAutomorphismGroup</C>. The vertex naming of this function behaves as 
##  described in <Ref Filt="FullAutomorphismGroup"/>.
##  <P/>
##  Let <M>n,k</M> be positive integers where <M>k &lt;n</M>. The 
##  <E>Kneser graph</E> <M>K(n,k)</M> has vertex-set the <M>k</M>-subsets
##  of <M>\{1,...,n\}</M>, and distinct vertices <M>X,Y</M> are adjacent
##  if and only if <M>X\cap Y = \emptyset</M>.
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
##  The optional argument <A>fil</A>, if used, can only take value 
##  <C>FullAutomorphismGroup</C>. The vertex naming of this function behaves as 
##  described in <Ref Filt="FullAutomorphismGroup"/>.
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
##  The optional argument <A>fil</A>, if used, can only take value 
##  <C>FullAutomorphismGroup</C>. The vertex naming of this function behaves as 
##  described in <Ref Filt="FullAutomorphismGroup"/>.
##  <P/>
##  Let <M>d</M> be a positive integer. The assoicated doubled odd graph has
##  vertex-set consisting of all subsets of <M>\{1,...,n\}</M> with sizes 
##  in <M>\{d,d+1\}</M>vertices, and distinct vertices <M>X,Y</M> are 
##  adjacent if and only if <M>X\subset Y</M> or <M>Y\subset X</M>.
##  This is isomorphic to the  bipartite double of the Odd
##  graph given by <Ref Func="OddGraph"/> and
##  <Ref Func="BipartiteDoubleGraph"/>.
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
##  The optional argument <A>fil</A>, if used, can only take value 
##  <C>FullAutomorphismGroup</C>. The vertex naming of this function behaves as 
##  described in <Ref Filt="FullAutomorphismGroup"/>.
##  <P/>
##  Let <M>d</M> be an integer where <M>d&gt;2</M>. The <E>folded Johnson
##  graph</E> <M>\overline{J}(2d,d)</M> is the antipodal quotient of the
##  Johnson graph <M>J(2d,d)</M> (see <Ref Func="AntipodalQuotientGraph"/>).
##    <Example>
##      <![CDATA[
##gap> FoldedJohnsonGraph(3);
##rec( adjacencies := [ [ 2, 3, 4, 5, 6, 7, 8, 9, 10 ] ], 
##  group := Group([ (1,2,3)(4,5,6,8,9,7), (2,4)(5,7)(8,10) ]), 
##  isGraph := true, 
##  names := [ [ [ 1, 2, 3 ], [ 4, 5, 6 ] ], [ [ 1, 5, 6 ], [ 2, 3, 4 ] ], 
##      [ [ 1, 2, 6 ], [ 3, 4, 5 ] ], [ [ 1, 3, 4 ], [ 2, 5, 6 ] ], 
##      [ [ 1, 3, 6 ], [ 2, 4, 5 ] ], [ [ 1, 2, 4 ], [ 3, 5, 6 ] ], 
##      [ [ 1, 4, 5 ], [ 2, 3, 6 ] ], [ [ 1, 4, 6 ], [ 2, 3, 5 ] ], 
##      [ [ 1, 2, 5 ], [ 3, 4, 6 ] ], [ [ 1, 3, 5 ], [ 2, 4, 6 ] ] ], 
##  order := 10, representatives := [ 1 ], 
##  schreierVector := [ -1, 1, 1, 2, 1, 1, 2, 1, 1, 2 ] )
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareConstructor("JohnsonGraphCons", [IsObject, IsInt, IsInt]);
DeclareConstructor("FoldedJohnsonGraphCons", [IsObject, IsInt]);
DeclareGlobalFunction( "FoldedJohnsonGraph" );

#TODO check ref matches our def
#############################################################################
##
#F  ChangGraph( [<filter>, ]<integer> )
##  
##  <#GAPDoc Label="ChangGraph">
##  <ManSection>
##  <Func Name="ChangGraph"
##   Arg='[fil, ]i'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given an integer <A>i</A> in <C>[1,2,3]</C>, this function returns the 
##  <M><A>i</A>^{th}</M> Chang graph.
##  <P/>
##  The optional argument <A>fil</A>, if used, can only take value 
##  <C>FullAutomorphismGroup</C>. The vertex naming of this function behaves as 
##  described in <Ref Filt="FullAutomorphismGroup"/>.
##  <P/>  
##  There are four pairwise non-isomorphic strongly regular graphs with 
##  parameters <M>(28,12,6,4)</M>. They are the triangular graph
##  <M>T(8)</M> (<Ref Func="TriangularGraph"/>) and the <E>Chang graphs</E>
##  (see <Cite Key="C_1958"/> and <Cite Key="C_1959"/>).
##    <Example>
##      <![CDATA[
##gap> ChangGraph(1);
##rec( 
##  adjacencies := [ [ 2, 3, 5, 6, 7, 8, 9, 10, 12, 13, 17, 22 ], 
##      [ 8, 9, 12, 13, 14, 16, 18, 20, 21, 26, 27, 28 ] ], 
##  group := <permutation group of size 384 with 6 generators>, 
##  isGraph := true, isSimple := true, 
##  names := [ [ 1, 2 ], [ 1, 3 ], [ 1, 4 ], [ 1, 5 ], [ 1, 6 ], [ 1, 7 ], 
##      [ 1, 8 ], [ 2, 3 ], [ 2, 4 ], [ 2, 5 ], [ 2, 6 ], [ 2, 7 ], 
##      [ 2, 8 ], [ 3, 4 ], [ 3, 5 ], [ 3, 6 ], [ 3, 7 ], [ 3, 8 ], 
##      [ 4, 5 ], [ 4, 6 ], [ 4, 7 ], [ 4, 8 ], [ 5, 6 ], [ 5, 7 ], 
##      [ 5, 8 ], [ 6, 7 ], [ 6, 8 ], [ 7, 8 ] ], order := 28, 
##  representatives := [ 1, 4 ], 
##  schreierVector := [ -1, 5, 6, -2, 2, 5, 6, 1, 5, 3, 1, 1, 1, 1, 5, 2, 1, 
##      4, 6, 1, 4, 6, 3, 3, 3, 4, 5, 6 ] )
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareGlobalFunction( "ChangGraph" );
DeclareConstructor("ChangGraphCons", [IsObject, IsInt]);

#############################################################################
##
#E
