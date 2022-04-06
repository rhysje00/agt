#############################################################################
##
#W  frmgrph.gd          Algebraic Graph Theory package         Janoš Vidali
##
##
#Y  Copyright (C) 2020
##
##  Declaration file for functions that construct forms graphs. 
##

#############################################################################
##
#F  BilinearFormsGraph( [<filter>, ]<int>, <int>, <int> )
##  
##  <#GAPDoc Label="BilinearFormsGraph">
##  <ManSection>
##  <Func Name="BilinearFormsGraph"
##   Arg='[fil, ]q, d, e'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given a prime power <A>q</A> and positive integers <A>d,e</A>, this 
##  function returns the bilinear forms graph 
##  <M>H_{<A>q</A>}(<A>d</A>,<A>e</A>)</M>.
##  <P/>
##  If <A>fil</A> is not given, or is <C>IsObject</C>,  the resulting graph 
##  <C>gamma</C> may not have been constructed using its full automorphism
##  group, and <C>gamma.group</C> may be a strict subgroup of the 
##  automorphism group. If <A>fil</A> is <C>FullAutomorphismGroup</C>, then
##  we construct the full automorphism group and use it to construct the 
##  graph, and <C>gamma.group</C> is this group. 
##  <P/>
##  Let <M>q</M> be a prime power and <M>d,e</M> be positive integers. The
##  <E>bilinear forms graph</E> <M>H_q(d,e)</M> is the graph with vertex-set
##  <M>M_{{d \times e}}(GF(q))</M>, and distinct vertices <M>A,B</M> are 
##  adjacent if and only if the rank of <M>A-B</M> is 1. 
##    <Example>
##      <![CDATA[
##gap> gamma:=BilinearFormsGraph(2,2,2);;
##gap> SRGParameters(gamma);
##[ 16, 9, 4, 6 ]
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareConstructor( "BilinearFormsGraphCons", [IsObject, IsInt, IsInt, IsInt]);
DeclareGlobalFunction( "BilinearFormsGraph" );

#############################################################################
##
#F  HermiteanFormsGraph( [<filter>, ]<int>, <int> )
##  
##  <#GAPDoc Label="HermiteanFormsGraph">
##  <ManSection>
##  <Func Name="HermiteanFormsGraph"
##   Arg='[fil, ]d, r'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given a prime power <A>r</A> and positive integer <A>d</A>, this 
##  function returns the hemritean forms graph 
##  <M>Q_{<A>q</A>}(<A>d</A>)</M>.
##  <P/>
##  Let <M>r</M> be a prime power and <M>d</M> be a positive integer. The
##  <E>hermitean forms graph</E> <M>Q_{r}(d)</M> is the graph with vertex-set
##  the hermitean matrices in <M>M_{d\times d}(GF(r^2))</M>, and 
##  distinct vertices <M>A,B</M> are adjacent if and only if the rank of 
##  <M>A-B</M> is 1. 
##    <Example>
##      <![CDATA[
##gap> gamma:=HermiteanFormsGraph(2,3);;
##gap> GlobalParameters(gamma);
##[ [ 0, 0, 20 ], [ 1, 1, 18 ], [ 6, 14, 0 ] ]
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareConstructor( "HermiteanFormsGraphCons", [IsObject, IsInt, IsInt]);
DeclareGlobalFunction( "HermiteanFormsGraph" );

#############################################################################
##
#E
