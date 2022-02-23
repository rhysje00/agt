#############################################################################
##
#W  gencon.gd          Algebraic Graph Theory package         Janoš Vidali
##
##
#Y  Copyright (C) 2020
##
##  Declaration file for functions that construct general graphs. 
##

#############################################################################
##
#F  AdjFunGraph( <V>, <func> )
##  
##  <#GAPDoc Label="AdjFunGraph">
##  <ManSection>
##  <Func Name="AdjFunGraph"
##   Arg='V, func'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given a list <A>V</A> and a boolean function <A>func</A> defining a relation
##  on <A>V</A>, this function returns the graph with vertex set <A>V</A>,
##  and edge set consisting of all pairs of distinct vertices <K>x,y</K>, 
##  such that <K>func(x,y)=true</K> 
## 
##    <Example>
##      <![CDATA[
##gap> AdjFunGraph([24..33],function(x,y) return Gcd(x,y)=1; end);
##rec( 
##  adjacencies := [ [ 2, 6, 8 ], [ 1, 3, 4, 5, 6, 8, 9, 10 ], 
##      [ 2, 4, 6, 8, 10 ], [ 2, 3, 5, 6, 8, 9 ], [ 2, 4, 6, 8, 10 ], 
##      [ 1, 2, 3, 4, 5, 7, 8, 9, 10 ], [ 6, 8 ], 
##      [ 1, 2, 3, 4, 5, 6, 7, 9, 10 ], [ 2, 4, 6, 8, 10 ], 
##      [ 2, 3, 5, 6, 8, 9 ] ], group := Group(()), isGraph := true, 
##  names := [ 24 .. 33 ], order := 10, 
##  representatives := [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ], 
##  schreierVector := [ -1, -2, -3, -4, -5, -6, -7, -8, -9, -10 ] )
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareGlobalFunction( "AdjFunGraph" );

# A generic product graph.
#############################################################################
##
#F  ProductGraph( [<filter>, ]<graphs>, <func> )
##  
##  <#GAPDoc Label="ProductGraph">
##  <ManSection>
##  <Func Name="ProductGraph"
##   Arg='[fil, ]Gs, func'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  This is a general function to construct a graph with vertices consisting
##  of the cartesian product of vertices from a list of graphs.
##  <P/>
##  First suppose <A>fil</A> is not given, or is <K>IsObject</K>. Then <A>Gs</A>
##  should be a list of graphs, <A>func</A> should be a boolean function defining a 
##  relation on the cartesian product of the lists <K>[1..Gs[i].order]</K>. 
##  Then this function returns the graph with vertex set the cartesian product of
##  of the lists <K>[1..Gs[i].order]</K>, and vertices <K>x,y</K> are 
##  adjacent if and only if <K>func(x,y)=true</K>. The vertex names of the resulting
##  graph are the cartesian product of the vertex names of each graph in <A>Gs</A> 
##  <P/>
##  If <A>fil</A> is <K>NoVertexNames</K> this function constructs the same graph,
##  but the vertex names of the resulting graph are the cartesian of the lists
##  <K>[1..Gs[i].order]</K>.
##    <Example>
##      <![CDATA[
##gap> g:=CompleteGraph(SymmetricGroup(3));;
##gap> h:=HammingGraph(2,2);;
##gap> ProductGraph([g,h],function(x,y) return (x<>y) and (x[1]=y[1] or x[2]=y[2]); 
##> end);
##rec( adjacencies := [ [ 2, 3, 4, 5, 9 ] ], 
##  group := Group([ (1,5,9)(2,6,10)(3,7,11)(4,8,12), (1,5)(2,6)(3,7)(4,8), (1,3)(2,4)
##(5,7)(6,8)(9,11)(10,12), (1,2)(3,4)(5,6)(7,8)(9,10)(11,12), (2,3)(6,7)(10,11) ]), 
##  isGraph := true, names := [ [ 1, [ 1, 1 ] ], [ 1, [ 1, 2 ] ], [ 1, [ 2, 1 ] ], 
##  [ 1, [ 2, 2 ] ], [ 2, [ 1, 1 ] ], [ 2, [ 1, 2 ] ], [ 2, [ 2, 1 ] ], 
##  [ 2, [ 2, 2 ] ], [ 3, [ 1, 1 ] ], [ 3, [ 1, 2 ] ], [ 3, [ 2, 1 ] ], 
##  [ 3, [ 2, 2 ] ] ], order := 12, representatives := [ 1 ], 
##  schreierVector := [ -1, 4, 3, 4, 1, 4, 3, 4, 1, 4, 3, 4 ] )
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareConstructor("ProductGraphCons", [IsObject, IsList, IsFunction]);
DeclareGlobalFunction( "ProductGraph" );

#############################################################################
##
#F  PowerGraph( [<filter>, ]<graph>, <int>, <func> )
##  
##  <#GAPDoc Label="PowerGraph">
##  <ManSection>
##  <Func Name="PowerGraph"
##   Arg='[fil, ]gamma, n, func'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  This is a general function to construct a graph with vertices consisting
##  of the <A>n</A>-tuples of vertices from of a graph.
##  <P/>
##  First suppose <A>fil</A> is not given, or is <K>IsObject</K>. Then <A>gamma</A>
##  should be a graph, and <A>func</A> should be a boolean function defining a 
##  relation on the <A>n</A>-tuples of elements of <K>[1..gamma.order]</K>. 
##  Then this function returns the graph with vertex set consisting of the 
##  <A>n</A>-tuples of elements of <K>[1..gamma.order]</K>, and vertices <K>x,y</K> 
##  are adjacent if and only if <K>func(x,y)=true</K>. The vertex names of the 
##  resulting graph are the <A>n</A>-tuples of the vertex names of <A>gamma</A>. 
##  <P/>
##  If <A>fil</A> is <K>NoVertexNames</K> this function constructs the same graph,
##  but the vertex names of the resulting graph are the <A>n</A>-tuples of elements
##  of <K>[1..gamma.order]</K>.
##    <Example>
##      <![CDATA[
##gap> h:=HammingGraph(2,2);;
##gap> PowerGraph(h,2,function(x,y) return (x<>y) and (x[1]=y[1] or x[2]=y[2]); 
##> end);
##rec( adjacencies := [ [ 2, 3, 4, 5, 9, 13 ] ], 
##     group := <permutation group with 7 generators>, 
##      isGraph := true, names := [ [ [ 1, 1 ], [ 1, 1 ] ], [ [ 1, 1 ], [ 1, 2 ] ], 
##      [ [ 1, 1 ], [ 2, 1 ] ], [ [ 1, 1 ], [ 2, 2 ] ], [ [ 1, 2 ], [ 1, 1 ] ],
##      [ [ 1, 2 ], [ 1, 2 ] ], [ [ 1, 2 ], [ 2, 1 ] ], [ [ 1, 2 ], [ 2, 2 ] ],
##      [ [ 2, 1 ], [ 1, 1 ] ], [ [ 2, 1 ], [ 1, 2 ] ], [ [ 2, 1 ], [ 2, 1 ] ], 
##      [ [ 2, 1 ], [ 2, 2 ] ], [ [ 2, 2 ], [ 1, 1 ] ], [ [ 2, 2 ], [ 1, 2 ] ],
##      [ [ 2, 2 ], [ 2, 1 ] ], [ [ 2, 2 ], [ 2, 2 ] ] ], order := 16,
##     representatives := [ 1 ], 
##     schreierVector := [ -1, 5, 4, 5, 2, 5, 4, 5, 1, 5, 4, 5, 2, 5, 4, 5 ] )
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareConstructor("PowerGraphCons", [IsObject, IsRecord, IsInt, IsFunction]);
DeclareGlobalFunction( "PowerGraph" );

#############################################################################
##
#F  BoxProductGraph( [<filter>, ]<graphs> )
##  
##  <#GAPDoc Label="BoxProductGraph">
##  <ManSection>
##  <Func Name="BoxProductGraph"
##   Arg='[fil, ]G1,G2,...'/>
##  <Func Name="BoxProductGraph"
##   Arg='[fil, ]Gs' Label="for a list"/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given graphs <A>G1,G2,...</A> or list of graphs <A>Gs</A>, this function returns
##  the box product of the given graphs. 
##  <P/>
##  If <A>fil</A> is not given, or is <K>IsObject</K>,  the resulting graph will 
##  have vertex names consisting of the elements of the cartesian product of 
##  lists <K>Gi.names</K>. If <A>fil</A> is <K>NoVertexNames</K>, the resulting 
##  graph will have vertex names consisting of the elements of the cartesian 
##  product of lists <K>[1..Gi.order]</K>.
##  <P/>
##  Let <M>\Gamma,\Delta</M> be graphs. The <E>box product</E> of the graphs 
##  <M>\Gamma</M> and <M>\Delta</M> is the graph <M>\Gamma\square \Delta</M> with 
##  vertex set <M>V(\Gamma)\times V(\Delta)</M>, such that two distinct vertices 
##  <M>(x_1,y_1),(x_2,y_2)</M> are adjacent if and only if either
##  <List>
##    <Item><M>x_1=x_2</M> and <M>y_1,y_2</M> are adjacent vertices in <M>\Delta</M>, or </Item>
##    <Item><M>y_1=y_2</M> and <M>x_1,x_2</M> are adjacent vertices in <M>\Gamma</M>.</Item>
##  </List>
## 
##    <Example>
##      <![CDATA[
##gap> h:=HammingGraph(2,2);;
##gap> BoxProductGraph(h,h);
##rec( adjacencies := [ [ 2, 3, 5, 9 ] ], 
##  group := <permutation group with 6 generators>, isGraph := true, 
##  names := [ [ [ 1, 1 ], [ 1, 1 ] ], [ [ 1, 1 ], [ 1, 2 ] ], 
##      [ [ 1, 1 ], [ 2, 1 ] ], [ [ 1, 1 ], [ 2, 2 ] ], 
##      [ [ 1, 2 ], [ 1, 1 ] ], [ [ 1, 2 ], [ 1, 2 ] ], 
##      [ [ 1, 2 ], [ 2, 1 ] ], [ [ 1, 2 ], [ 2, 2 ] ], 
##      [ [ 2, 1 ], [ 1, 1 ] ], [ [ 2, 1 ], [ 1, 2 ] ], 
##      [ [ 2, 1 ], [ 2, 1 ] ], [ [ 2, 1 ], [ 2, 2 ] ], 
##      [ [ 2, 2 ], [ 1, 1 ] ], [ [ 2, 2 ], [ 1, 2 ] ], 
##      [ [ 2, 2 ], [ 2, 1 ] ], [ [ 2, 2 ], [ 2, 2 ] ] ], 
##  order := 16, representatives := [ 1 ], 
##  schreierVector := [ -1, 5, 4, 5, 2, 5, 4, 5, 1, 5, 4, 5, 2, 5, 4, 
##      5 ] )
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareGlobalFunction( "BoxProductGraph" );

#############################################################################
##
#F  BoxPowerGraph( [<filter>, ]<graph>, <int> )
##  
##  <#GAPDoc Label="BoxPowerGraph">
##  <ManSection>
##  <Func Name="BoxPowerGraph"
##   Arg='[fil, ]gamma, n'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given a graph <A>gamma</A> and positive integer <A>n</A>, this function returns
##  <A>n</A>th power of <A>gamma</A>, with respect to the box product operation
##  (see <Ref Func="BoxProductGraph"/>). 
##  <P/>
##  If <A>fil</A> is not given, or is <K>IsObject</K>,  the resulting graph will 
##  have vertex names consisting of the <A>n</A>-tuples of elements of  
##  <K>gamma.names</K>. If <A>fil</A> is <K>NoVertexNames</K>, the resulting 
##  graph will have vertex names consisting of the elements of the cartesian 
##  product of lists <K>[1..gamma.order]</K>.
##    <Example>
##      <![CDATA[
##gap> h:=HammingGraph(2,2);;
##gap> BoxPowerGraph(h,2);
##rec( adjacencies := [ [ 2, 3, 5, 9 ] ], 
##  group := <permutation group with 7 generators>, isGraph := true, 
##  names := [ [ [ 1, 1 ], [ 1, 1 ] ], [ [ 1, 1 ], [ 1, 2 ] ], 
##      [ [ 1, 1 ], [ 2, 1 ] ], [ [ 1, 1 ], [ 2, 2 ] ], 
##      [ [ 1, 2 ], [ 1, 1 ] ], [ [ 1, 2 ], [ 1, 2 ] ], 
##      [ [ 1, 2 ], [ 2, 1 ] ], [ [ 1, 2 ], [ 2, 2 ] ], 
##      [ [ 2, 1 ], [ 1, 1 ] ], [ [ 2, 1 ], [ 1, 2 ] ], 
##      [ [ 2, 1 ], [ 2, 1 ] ], [ [ 2, 1 ], [ 2, 2 ] ], 
##      [ [ 2, 2 ], [ 1, 1 ] ], [ [ 2, 2 ], [ 1, 2 ] ], 
##      [ [ 2, 2 ], [ 2, 1 ] ], [ [ 2, 2 ], [ 2, 2 ] ] ], order := 16, 
##  representatives := [ 1 ], 
##  schreierVector := [ -1, 5, 4, 5, 2, 5, 4, 5, 1, 5, 4, 5, 2, 5, 4, 
##      5 ] )
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareGlobalFunction( "BoxPowerGraph" );

#############################################################################
##
#F  CrossProductGraph( [<filter>, ]<graphs> )
##  
##  <#GAPDoc Label="CrossProductGraph">
##  <ManSection>
##  <Func Name="CrossProductGraph"
##   Arg='[fil, ]G1, G2,...'/>
##  <Func Name="CrossProductGraph"
##   Arg='[fil, ]Gs' Label="for a list"/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given graphs <A>G1,G2,...</A> or list of graphs <A>Gs</A>, this function returns
##  the cross product of the given graphs. 
##  <P/>
##  If <A>fil</A> is not given, or is <K>IsObject</K>,  the resulting graph will 
##  have vertex names consisting of the elements of the cartesian product of 
##  lists <K>Gi.names</K>. If <A>fil</A> is <K>NoVertexNames</K>, the resulting 
##  graph will have vertex names consisting of the elements of the cartesian 
##  product of lists <K>[1..Gi.order]</K>.
##  <P/>
##  Let <M>\Gamma,\Delta</M> be graphs. The <E>cross product</E> of the graphs 
##  <M>\Gamma</M> and <M>\Delta</M> (also known as the tensor product) is the graph 
##  <M>\Gamma\times \Delta</M> with vertex set <M>V(\Gamma)\times V(\Delta)</M>, 
##  such that two distinct vertices <M>(x_1,y_1),(x_2,y_2)</M> are adjacent if
##  and only if <M>x_1,x_2</M> are adjacent in <M>\Gamma</M> and <M>y_1,y_2</M> are
##  adjacent in <M>\Delta</M>.
## 
##    <Example>
##      <![CDATA[
##gap> h:=HammingGraph(2,2);;
##gap> CrossProductGraph(h,h);
##rec( adjacencies := [ [ 6, 7, 10, 11 ] ], 
##  group := <permutation group with 6 generators>, isGraph := true, 
##  names := [ [ [ 1, 1 ], [ 1, 1 ] ], [ [ 1, 1 ], [ 1, 2 ] ], 
##      [ [ 1, 1 ], [ 2, 1 ] ], [ [ 1, 1 ], [ 2, 2 ] ], 
##      [ [ 1, 2 ], [ 1, 1 ] ], [ [ 1, 2 ], [ 1, 2 ] ], 
##      [ [ 1, 2 ], [ 2, 1 ] ], [ [ 1, 2 ], [ 2, 2 ] ], 
##      [ [ 2, 1 ], [ 1, 1 ] ], [ [ 2, 1 ], [ 1, 2 ] ], 
##      [ [ 2, 1 ], [ 2, 1 ] ], [ [ 2, 1 ], [ 2, 2 ] ], 
##      [ [ 2, 2 ], [ 1, 1 ] ], [ [ 2, 2 ], [ 1, 2 ] ], 
##      [ [ 2, 2 ], [ 2, 1 ] ], [ [ 2, 2 ], [ 2, 2 ] ] ], order := 16, 
##  representatives := [ 1 ], 
##  schreierVector := [ -1, 5, 4, 5, 2, 5, 4, 5, 1, 5, 4, 5, 2, 5, 4, 
##      5 ] )
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareGlobalFunction( "CrossProductGraph" );

#############################################################################
##
#F  CrossPowerGraph( [<filter, ]<graph>, <int> )
##  
##  <#GAPDoc Label="CrossPowerGraph">
##  <ManSection>
##  <Func Name="CrossPowerGraph"
##   Arg='[fil, ]gamma, n'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given a graph <A>gamma</A> and positive integer <A>n</A>, this function returns
##  <A>n</A>th power of <A>gamma</A>, with respect to the cross product operation
##  (see <Ref Func="CrossProductGraph"/>). 
##  <P/>
##  If <A>fil</A> is not given, or is <K>IsObject</K>,  the resulting graph will 
##  have vertex names consisting of the <A>n</A>-tuples of elements of  
##  <K>gamma.names</K>. If <A>fil</A> is <K>NoVertexNames</K>, the resulting 
##  graph will have vertex names consisting of the elements of the cartesian 
##  product of lists <K>[1..gamma.order]</K>.
##
##    <Example>
##      <![CDATA[
##gap> h:=HammingGraph(2,2);;
##gap> CrossPowerGraph(h,2);
##rec( adjacencies := [ [ 6, 7, 10, 11 ] ], 
##  group := <permutation group with 7 generators>, isGraph := true, 
##  names := [ [ [ 1, 1 ], [ 1, 1 ] ], [ [ 1, 1 ], [ 1, 2 ] ], 
##      [ [ 1, 1 ], [ 2, 1 ] ], [ [ 1, 1 ], [ 2, 2 ] ], 
##      [ [ 1, 2 ], [ 1, 1 ] ], [ [ 1, 2 ], [ 1, 2 ] ], 
##      [ [ 1, 2 ], [ 2, 1 ] ], [ [ 1, 2 ], [ 2, 2 ] ], 
##      [ [ 2, 1 ], [ 1, 1 ] ], [ [ 2, 1 ], [ 1, 2 ] ], 
##      [ [ 2, 1 ], [ 2, 1 ] ], [ [ 2, 1 ], [ 2, 2 ] ], 
##      [ [ 2, 2 ], [ 1, 1 ] ], [ [ 2, 2 ], [ 1, 2 ] ], 
##      [ [ 2, 2 ], [ 2, 1 ] ], [ [ 2, 2 ], [ 2, 2 ] ] ], order := 16, 
##  representatives := [ 1 ], 
##  schreierVector := [ -1, 5, 4, 5, 2, 5, 4, 5, 1, 5, 4, 5, 2, 5, 4, 
##      5 ] )
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareGlobalFunction( "CrossPowerGraph" );

#############################################################################
##
#F  StrongProductGraph( [<filter>, ]<graphs> )
##  
##  <#GAPDoc Label="StrongProductGraph">
##  <ManSection>
##  <Func Name="StrongProductGraph"
##   Arg='[fil, ]G1, G2,...'/>
##  <Func Name="StrongProductGraph"
##   Arg='[fil, ]Gs' Label="for a list"/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given graphs <A>G1,G2,...</A> or list of graphs <A>Gs</A>, this function returns
##  the strong product of the given graphs. 
##  <P/>
##  If <A>fil</A> is not given, or is <K>IsObject</K>,  the resulting graph will 
##  have vertex names consisting of the elements of the cartesian product of 
##  lists <K>Gi.names</K>. If <A>fil</A> is <K>NoVertexNames</K>, the resulting 
##  graph will have vertex names consisting of the elements of the cartesian 
##  product of lists <K>[1..Gi.order]</K>.
##  <P/>
##  Let <M>\Gamma,\Delta</M> be graphs. The <E>strong product</E> of the graphs 
##  <M>\Gamma</M> and <M>\Delta</M> is the graph <M>\Gamma\boxtimes \Delta</M> with
##  vertex set <M>V(\Gamma)\times V(\Delta)</M>, such that two distinct vertices
##  <M>(x_1,y_1),(x_2,y_2)</M> are adjacent if and only if either
##  <List>
##    <Item><M>x_1=x_2</M> and <M>y_1,y_2</M> are adjacent vertices in <M>\Delta</M>, or </Item>
##    <Item><M>y_1=y_2</M> and <M>x_1,x_2</M> are adjacent vertices in <M>\Gamma</M>, or</Item>
##    <Item><M>x_1,x_2</M> are adjacent in <M>\Gamma</M> and <M>y_1,y_2</M> are
##             adjacent in <M>\Delta</M>.</Item>
##  </List>
## 
##    <Example>
##      <![CDATA[
##gap> h:=HammingGraph(2,2);;
##gap> StrongProductGraph(h,h);
##rec( adjacencies := [ [ 2, 3, 5, 6, 7, 9, 10, 11 ] ], 
##  group := <permutation group with 6 generators>, isGraph := true, 
##  names := [ [ [ 1, 1 ], [ 1, 1 ] ], [ [ 1, 1 ], [ 1, 2 ] ], 
##      [ [ 1, 1 ], [ 2, 1 ] ], [ [ 1, 1 ], [ 2, 2 ] ], 
##      [ [ 1, 2 ], [ 1, 1 ] ], [ [ 1, 2 ], [ 1, 2 ] ], 
##      [ [ 1, 2 ], [ 2, 1 ] ], [ [ 1, 2 ], [ 2, 2 ] ], 
##      [ [ 2, 1 ], [ 1, 1 ] ], [ [ 2, 1 ], [ 1, 2 ] ], 
##      [ [ 2, 1 ], [ 2, 1 ] ], [ [ 2, 1 ], [ 2, 2 ] ], 
##      [ [ 2, 2 ], [ 1, 1 ] ], [ [ 2, 2 ], [ 1, 2 ] ], 
##      [ [ 2, 2 ], [ 2, 1 ] ], [ [ 2, 2 ], [ 2, 2 ] ] ], order := 16, 
##  representatives := [ 1 ], 
##  schreierVector := [ -1, 5, 4, 5, 2, 5, 4, 5, 1, 5, 4, 5, 2, 5, 4, 
##      5 ] )
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareGlobalFunction( "StrongProductGraph" );

#############################################################################
##
#F  StrongPowerGraph( [<filter, ]<graph>, <int> )
##  
##  <#GAPDoc Label="StrongPowerGraph">
##  <ManSection>
##  <Func Name="StrongPowerGraph"
##   Arg='[fil, ]gamma, n'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given a graph <A>gamma</A> and positive integer <A>n</A>, this function returns
##  <A>n</A>th power of <A>gamma</A>, with respect to the strong product operation
##  (see <Ref Func="StrongProductGraph"/>). 
##  <P/>
##  If <A>fil</A> is not given, or is <K>IsObject</K>,  the resulting graph will 
##  have vertex names consisting of the <A>n</A>-tuples of elements of  
##  <K>gamma.names</K>. If <A>fil</A> is <K>NoVertexNames</K>, the resulting 
##  graph will have vertex names consisting of the elements of the cartesian 
##  product of lists <K>[1..gamma.order]</K>.
##    <Example>
##      <![CDATA[
##gap> h:=HammingGraph(2,2);;
##gap> StrongPowerGraph(h,2);
##rec( adjacencies := [ [ 2, 3, 5, 6, 7, 9, 10, 11 ] ], 
##  group := <permutation group with 7 generators>, isGraph := true, 
##  names := [ [ [ 1, 1 ], [ 1, 1 ] ], [ [ 1, 1 ], [ 1, 2 ] ], 
##      [ [ 1, 1 ], [ 2, 1 ] ], [ [ 1, 1 ], [ 2, 2 ] ], 
##      [ [ 1, 2 ], [ 1, 1 ] ], [ [ 1, 2 ], [ 1, 2 ] ], 
##      [ [ 1, 2 ], [ 2, 1 ] ], [ [ 1, 2 ], [ 2, 2 ] ], 
##      [ [ 2, 1 ], [ 1, 1 ] ], [ [ 2, 1 ], [ 1, 2 ] ], 
##      [ [ 2, 1 ], [ 2, 1 ] ], [ [ 2, 1 ], [ 2, 2 ] ], 
##      [ [ 2, 2 ], [ 1, 1 ] ], [ [ 2, 2 ], [ 1, 2 ] ], 
##      [ [ 2, 2 ], [ 2, 1 ] ], [ [ 2, 2 ], [ 2, 2 ] ] ], order := 16, 
##  representatives := [ 1 ], 
##  schreierVector := [ -1, 5, 4, 5, 2, 5, 4, 5, 1, 5, 4, 5, 2, 5, 4, 
##      5 ] )
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareGlobalFunction( "StrongPowerGraph" );

#############################################################################
##
#F  GraphJoin( [<filter>, ]<graphs> )
##  
##  <#GAPDoc Label="GraphJoin">
##  <ManSection>
##  <Func Name="GraphJoin"
##   Arg='[fil, ]G1, G2,...'/>
##  <Func Name="GraphJoin"
##   Arg='[fil, ]Gs' Label="for a list"/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given graphs <A>G1,G2,...</A> or list of graphs <A>Gs</A>, this function returns
##  the graph join of the given graphs. 
##  <P/>
##  Each vertex of the resulting graph will correspond to a unique vertex from the 
##  union of vertex sets of the given graphs. If <A>fil</A> is not given, or is 
##  <K>IsObject</K>, the vertex corresponding to a vertex in <K>Gi</K> with name
##  <K>name</K> will be named <K>[i,name]</K> in our new graph. If <A>fil</A> is 
##  <K>NoVertexNames</K>, this vertex have vertex name <K>[i,j]</K>, where
##  <K>VertexName(Gi,j)=name</K>.
##  <P/>
##  Let <M>\Gamma,\Delta</M> be graphs. The <E>graph join</E> of the graphs 
##  <M>\Gamma</M> and <M>\Delta</M> is the graph <M>\Gamma + \Delta</M> with
##  vertex set <M>V(\Gamma)\cup V(\Delta)</M>, such that two distinct vertices
##  <M>x,y</M> are adjacent if and only if either
##  <List>
##    <Item><M>x</M> and <M>y</M> are vertices from different graphs, or </Item>
##    <Item><M>x</M> and <M>y</M> are vertices from the same graph, and are
##          adjacent in that graph.</Item>
##  </List>
## 
##    <Example>
##      <![CDATA[
##gap> h:=HammingGraph(2,2);;
##gap> GraphJoin(h,h);
##rec( adjacencies := [ [ 2, 3, 5, 6, 7, 8 ], [ 1, 2, 3, 4, 6, 7 ] ], 
##  group := Group([ (1,3)(2,4), (1,2)(3,4), (2,3), (5,7)(6,8), (5,6)
##      (7,8), (6,7) ]), isGraph := true, 
##  names := [ [ 1, [ 1, 1 ] ], [ 1, [ 1, 2 ] ], [ 1, [ 2, 1 ] ], 
##      [ 1, [ 2, 2 ] ], [ 2, [ 1, 1 ] ], [ 2, [ 1, 2 ] ], 
##      [ 2, [ 2, 1 ] ], [ 2, [ 2, 2 ] ] ], order := 8, 
##  representatives := [ 1, 5 ], 
##  schreierVector := [ -1, 2, 1, 2, -2, 5, 4, 5 ] )
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareConstructor("GraphJoinCons", [IsObject, IsList]);
DeclareGlobalFunction( "GraphJoin" );

#############################################################################
##
#F  BipartiteDoubleGraph( <graph> )
##  
##  <#GAPDoc Label="BipartiteDoubleGraph">
##  <ManSection>
##  <Func Name="BipartiteDoubleGraph"
##   Arg='gamma'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given a graph <A>gamma</A>, this function returns the bipartite double cover
##  of <A>gamma</A>. 
##  <P/>
##  Let <M>\Gamma</M> be a graph. The <E>bipartite double cover</E> of 
##  <M>\Gamma</M> is the graph with vertex set <M>V(\Gamma)\times \{-,+\}</M>, 
##  and distinct vertices <M>(x,\circ),(y,*)</M> are adjacent if and only if 
##  <M>\circ\not=*</M> and <M>x,y</M> are adjacent in <M>\Gamma.</M> 
##
##    <Example>
##      <![CDATA[
##gap> h:=HammingGraph(2,2);;
##gap> BipartiteDoubleGraph(h);
##rec( adjacencies := [ [ 6, 7 ] ], 
##  group := Group([ (1,3)(2,4)(5,7)(6,8), (1,2)(3,4)(5,6)(7,8), (2,3)
##      (6,7), (1,5)(2,6)(3,7)(4,8) ]), 
##  halfDuality := function( x ) ... end, 
##  halfPrimality := function( x ) ... end, isGraph := true, 
##  names := [ [ [ 1, 1 ], "+" ], [ [ 1, 2 ], "+" ], [ [ 2, 1 ], "+" ],
##      [ [ 2, 2 ], "+" ], [ [ 1, 1 ], "-" ], [ [ 1, 2 ], "-" ], 
##      [ [ 2, 1 ], "-" ], [ [ 2, 2 ], "-" ] ], order := 8, 
##  representatives := [ 1 ], 
##  schreierVector := [ -1, 2, 1, 2, 4, 4, 4, 4 ] )
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareGlobalFunction( "BipartiteDoubleGraph" );

#############################################################################
##
#F  ExtendedBipartiteDoubleGraph( <graph> )
##  
##  <#GAPDoc Label="ExtendedBipartiteDoubleGraph">
##  <ManSection>
##  <Func Name="ExtendedBipartiteDoubleGraph"
##   Arg='gamma'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given a graph <A>gamma</A>, this function returns the extended 
##  bipartite double cover of <A>gamma</A>. 
##  <P/>
##  Let <M>\Gamma</M> be a graph. The <E>extended bipartite double cover</E> of 
##  <M>\Gamma</M> is the graph with vertex set <M>V(\Gamma)\times \{-,+\}</M>, 
##  and distinct vertices <M>(x,\circ),(y,*)</M> are adjacent if and only if
##  <M>\circ=*</M> or <M>x,y</M> are adjacent in <M>\Gamma.</M> 
## 
##    <Example>
##      <![CDATA[
##gap> h:=HammingGraph(2,2);;
##gap> ExtendedBipartiteDoubleGraph(h);
##rec( adjacencies := [ [ 5, 6, 7 ] ], 
##  group := Group([ (1,2)(3,4)(5,6)(7,8), (1,3)(2,4)(5,7)(6,8), (2,3)
##      (6,7), (1,5)(2,6)(3,7)(4,8) ]), 
##  halfDuality := function( x ) ... end, 
##  halfPrimality := function( x ) ... end, isGraph := true, 
##  names := [ [ [ 1, 1 ], "+" ], [ [ 2, 1 ], "+" ], [ [ 1, 2 ], "+" ],
##      [ [ 2, 2 ], "+" ], [ [ 1, 1 ], "-" ], [ [ 2, 1 ], "-" ], 
##      [ [ 1, 2 ], "-" ], [ [ 2, 2 ], "-" ] ], order := 8, 
##  representatives := [ 1 ], 
##  schreierVector := [ -1, 1, 2, 2, 4, 4, 4, 4 ] )
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareConstructor("ExtendedBipartiteDoubleGraphCons", [IsObject, IsRecord]);
DeclareGlobalFunction( "ExtendedBipartiteDoubleGraph" );

#############################################################################
##
#F  HalvedGraph( <graph>[, <int>] )
##  
##  <#GAPDoc Label="HalvedGraph">
##  <ManSection>
##  <Func Name="HalvedGraph"
##   Arg='gamma[, n]'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given a connected bipartite graph <A>gamma</A>, this function returns a 
##  halved graph of <A>gamma</A>. The optional input <A>n</A> should take a 
##  value from <K>[1,2]</K>, and determines the part of the bipartition for which
##  the halved graph is defined.
##  <P/>
##  Let <M>\Gamma</M> be a connected bipartite graph with bipartition <M>U,W</M>.
##  The <E>halved graph</E> of <M>\Gamma</M> with respect to <M>U</M> is the 
##  graph with vertex set <M>U</M>, and distinct vertices <M>x,y</M> are adjacent
##  if and only if <M>x,y</M> are at graph distance 2 in <M>\Gamma.</M> 
## 
##    <Example>
##      <![CDATA[
##gap> h:=CycleGraph(8);;
##gap> HalvedGraph(h);
##rec( adjacencies := [ [ 2, 4 ] ], 
##  group := Group([ (2,4), (1,2)(3,4) ]), isGraph := true, 
##  isSimple := true, names := [ 1, 3, 5, 7 ], order := 4, 
##  representatives := [ 1 ], schreierVector := [ -1, 2, 2, 1 ] )
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareGlobalFunction( "HalvedGraph" );

#############################################################################
##
#F  AntipodalQuotientGraph( [<filter>, ]<graph> )
##  
##  <#GAPDoc Label="AntipodalQuotientGraph">
##  <ManSection>
##  <Func Name="AntipodalQuotientGraph"
##   Arg='[fil, ]gamma'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given a distance-regular graph <A>gamma</A> which is an antipodal cover, 
##  this function returns the anitpodal quotient graph of <A>gamma</A>.
##  <P/>
##  Each vertex of the resulting graph will correspond to a subset of vertices
##  of <A>gamma</A>. If <A>fil</A> is not given, or is <K>IsObject</K>, the vertex 
##  name of a given vertex in the resulting graph will be the corresponding subset
##  of vertex names of <A>gamma</A>. If <A>fil</A> is <K>NoVertexNames</K>, vertices 
##  will have vertex names consisting of subsets of the integers 
##  <K>[1..gamma.order]</K>.
##  <P/>
##  Let <M>\Gamma</M> be a distance-regular graph with diameter <M>d</M>. For
##  any <M>u\in V(\Gamma)</M>, let <M>\Gamma_d\left[u\right]</M> denote the set
##  of vertices at distance <M>d</M> from <M>u</M>, and <M>u</M> itself. 
##  Then <M>\Gamma</M> is <E>antipodal</E> if for all <M>u\in V(\Gamma)</M>,
##  the set <M>\Gamma_d\left[u\right]</M> consists of vertices which are pairwise
##  at distance <M>d</M>. The <E>antipodal quotient</E> of <M>\Gamma</M> is 
##  the graph with vertex set <M>\{\Gamma_d\left[u\right]:u\in V(\Gamma)\}</M>,
##  and distinct vertices are adjacent if there is an edge between them in 
##  <M>\Gamma</M>.
## 
##    <Example>
##      <![CDATA[
##gap> h:=CycleGraph(8);;
##gap> AntipodalQuotientGraph(h);
##rec( adjacencies := [ [ 2, 4 ] ], group := Group([ (1,2,3,4), (2,4) ]), 
##  isGraph := true, names := [ [ 1, 5 ], [ 2, 6 ], [ 3, 7 ], [ 4, 8 ] ], 
##  order := 4, representatives := [ 1 ], schreierVector := [ -1, 1, 1, 2 ] )
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareConstructor("AntipodalQuotientGraphCons", [IsObject, IsRecord]);
DeclareGlobalFunction( "AntipodalQuotientGraph" );

#############################################################################
##
#F  SubspaceGraph( <mtrxgrp>, <subspcs>, <vctspc>, <int>[, <act>, <invt>] )
##  
##  <#GAPDoc Label="SubspaceGraph">
##  <ManSection>
##  <Func Name="SubspaceGraph"
##   Arg='G, S, V, d[, A, invt]'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  This is a general function to construct a graph with vertex set
##  a subset of <A>d</A>-dimensional subspaces <A>S</A> of a vector space <A>V</A>, 
##  and distinct vertices are adjacent if and only if their intersection has
##  dimension <A>d-1</A>.
##  <P/>
##  This function accepts the following arguments.
##  <List>
##    <Mark><A>G</A></Mark>
##    <Item>A subgroup of the matrix group of invertible linear 
##          transformations acting on vector space <A>V</A>.</Item>
##    <Mark><A>S</A></Mark>
##    <Item>This argument can be either
##      <List>
##        <Item>a list of <A>d</A>-dimensional subspaces of <A>V</A>, or</Item>
##        <Item>a function which acts as a filter on the set of 
##              <A>d</A>-dimensional subspaces of <A>V</A>.</Item>
##      </List>
##    </Item>
##    <Mark><A>V</A></Mark>
##    <Item>A finite vector space.</Item>
##    <Mark><A>d</A></Mark>
##    <Item>A positive integer of size at most the dimension of <A>V</A>.</Item>
##    <Mark><A>A</A></Mark>
##    <Item>If <A>A</A> is given, it must define a group action of <A>G</A> on 
##          the subspaces <A>S</A>. The resulting graph will be defined by this
##          action. If <A>A</A> is not given, the action of <A>G</A> on 
##          the subspaces <A>S</A> is assumed to be the natural action.</Item>
##    <Mark><A>invt</A></Mark>
##    <Item>If <A>invt</A> is given, it must take a boolean value. If <A>invt</A>
##          is <K>true</K>, the subspaces <A>S</A> will be to be invariant under 
##          the action of <A>G</A>. Otherwise, this is not assumed. 
##    </Item>
##  </List>
## 
##    <Example>
##      <![CDATA[
##gap> q:=2;; n:=4;; d:=2;; V:=GF(q)^n;; S:=Elements;; G:=GL(n,q);;
##gap> gamma:=SubspaceGraph(G,S,V,d);;
##gap> SRGParameters(gamma);
##[ 35, 18, 9, 9 ]
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareGlobalFunction( "SubspaceGraph" );

#############################################################################
##
#F  CliqueGraph( [<filter>, ]<graph>[, <list>] )
##  
##  <#GAPDoc Label="CliqueGraph">
##  <ManSection>
##  <Func Name="CliqueGraph"
##   Arg='[fil, ]gamma[, ls]'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  TODO
##  Given a collinearity graph <A>gamma</A> of a partial geometry (true?), this function 
##  returns the clique graph of <A>gamma</A>.
##  <P/>
##  Each vertex of the resulting graph will correspond to a subset of vertices
##  of <A>gamma</A>. If <A>fil</A> is not given, or is <K>IsObject</K>, the vertex 
##  name of a given vertex in the resulting graph will be the corresponding subset
##  of <E>dual</E> vertex names of <A>gamma</A> (this needs to be explained better).
##  If <A>fil</A> is <K>NoVertexNames</K>, vertices 
##  will have vertex names consisting of subsets of the integers 
##  <K>[1..gamma.order]</K>.
##  <P/>
##  If <A>ls</A> is given, it must be an positive integer or list of positive 
##  integers. Then the resulting graph will be defined on the orbit of the lines
##  <K>Cliques(gamma){ls}</K> under gamma.group.
##  <P/>
##  Let <M>P</M> be a partial geometry with collinearity graph <A>gamma</A>. 
##  The <E>clique graph</E> of <M>P</M> is the graph with vertex set the lines of 
##  <M>P</M>, and distinct vertices are adjacent if they intersect at a single 
##  point. As the maximal cliques of <M>\Gamma</M> are the lines in <M>P</M>,
##  we can construct this graph by using <M>\Gamma</M>.
## 
##    <Example>
##      <![CDATA[
##gap> K7:=CompleteGraph(SymmetricGroup(7));;
##gap> P:=PartialLinearSpaces(K7,2,2)[1];;
##gap> CliqueGraph(gamma);
##rec( adjacencies := [ [ 2, 4, 9, 21 ] ], 
##  duality := function( x ) ... end, 
##  group := Group([ (1,2)(3,6)(5,10)(7,14)(9,18)(11,17)(15,16)
##      (19,21), (1,2,4)(3,6,13)(5,10,8)(7,15,17)(9,18,12)(11,16,14)
##      (19,20,21), (1,2,4)(3,7,16)(5,11,15)(6,8,17)(9,19,20)
##      (10,13,14)(12,21,18), (1,3,8,17,18,11,20)(2,5,12,21,6,7,16)
##      (4,9,13,14,10,19,15) ]), isGraph := true, 
##  names := [ [ 1, [ 1, 2, 3 ] ], [ 2, [ 1, 2, 3 ] ], 
##      [ 4, [ 1, 4, 5 ] ], [ 3, [ 1, 2, 3 ] ], [ 5, [ 1, 4, 5 ] ], 
##      [ 4, [ 2, 4, 6 ] ], [ 7, [ 2, 5, 7 ] ], [ 7, [ 3, 4, 7 ] ], 
##      [ 1, [ 1, 4, 5 ] ], [ 6, [ 2, 4, 6 ] ], [ 5, [ 2, 5, 7 ] ], 
##      [ 3, [ 3, 4, 7 ] ], [ 4, [ 3, 4, 7 ] ], [ 7, [ 1, 6, 7 ] ], 
##      [ 5, [ 3, 5, 6 ] ], [ 6, [ 3, 5, 6 ] ], [ 6, [ 1, 6, 7 ] ], 
##      [ 2, [ 2, 4, 6 ] ], [ 2, [ 2, 5, 7 ] ], [ 3, [ 3, 5, 6 ] ], 
##      [ 1, [ 1, 6, 7 ] ] ], order := 21, 
##  primality := function( x ) ... end, representatives := [ 1 ], 
##  schreierVector := [ -1, 1, 4, 2, 4, 1, 3, 4, 4, 1, 3, 4, 2, 1, 
##      2, 3, 3, 1, 3, 4, 3 ] )
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareConstructor("CliqueGraphCons", [IsObject, IsRecord, IsList]);
DeclareGlobalFunction( "CliqueGraph" );

#############################################################################
##
#F  IncidenceGraph( [<filter>, ]<graph>[, <list>] )
##  
##  <#GAPDoc Label="IncidenceGraph">
##  <ManSection>
##  <Func Name="IncidenceGraph"
##   Arg='[fil, ]gamma[, ls]'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  TODO
##  Given a collinearity graph <A>gamma</A> of a partial geometry (true?), this function 
##  returns the incidence graph of <A>gamma</A>.
##  <P/>
##  Each vertex of the resulting graph will correspond to a vertex or subset of 
##  vertices of <A>gamma</A>. If <A>fil</A> is not given, or is <K>IsObject</K>, 
##  the vertex name of a given vertex in the resulting graph will be the <E>dual</E>  ##  of the corresponding vertex name(s) of <A>gamma</A> (this needs to be explained better).
##  If <A>fil</A> is <K>NoVertexNames</K>, vertices 
##  will have vertex names consisting of integers and subsets of the integers 
##  <K>[1..gamma.order]</K>.
##  <P/>
##  If <A>ls</A> is given, it must be an positive integer or list of positive 
##  integers. Then the resulting graph will be defined on the orbit of the lines
##  <K>Cliques(gamma){ls}</K> under gamma.group.
##  <P/>
##  Let <M>P</M> be a partial geometry with collinearity graph <A>gamma</A>. 
##  The <E>incidence graph</E> of <M>P</M> is the graph with vertex set the union
##  of the points and lines of <M>P</M>, and distinct vertices are adjacent if 
##  they are incident. As the maximal cliques of <M>\Gamma</M> are the lines of
##  <M>P</M>, we can construct this graph by using <M>\Gamma</M>.
## 
##    <Example>
##      <![CDATA[
##gap> K7:=CompleteGraph(SymmetricGroup(7));;
##gap> P:=PartialLinearSpaces(K7,2,2)[1];;
##gap> IncidenceGraph(P);    
##rec( adjacencies := [ [ 15, 23, 35 ], [ 15, 16, 18 ], [ 1, 8 ] ], 
##  group := <permutation group with 4 generators>, 
##  halfDuality := function( x ) ... end, 
##  halfPrimality := function( x ) ... end, isGraph := true, 
##  names := [ 1, 2, 4, 3, 5, 7, 6, [ 1, 2, 3 ], [ 1, 4, 5 ], 
##      [ 2, 4, 6 ], [ 2, 5, 7 ], [ 3, 4, 7 ], [ 1, 6, 7 ], 
##      [ 3, 5, 6 ], [ 1, [ 1, 2, 3 ] ], [ 2, [ 1, 2, 3 ] ], 
##      [ 4, [ 1, 4, 5 ] ], [ 3, [ 1, 2, 3 ] ], [ 5, [ 1, 4, 5 ] ], 
##      [ 4, [ 2, 4, 6 ] ], [ 7, [ 2, 5, 7 ] ], [ 7, [ 3, 4, 7 ] ], 
##      [ 1, [ 1, 4, 5 ] ], [ 6, [ 2, 4, 6 ] ], [ 5, [ 2, 5, 7 ] ], 
##      [ 3, [ 3, 4, 7 ] ], [ 4, [ 3, 4, 7 ] ], [ 7, [ 1, 6, 7 ] ], 
##      [ 5, [ 3, 5, 6 ] ], [ 6, [ 3, 5, 6 ] ], [ 6, [ 1, 6, 7 ] ], 
##      [ 2, [ 2, 4, 6 ] ], [ 2, [ 2, 5, 7 ] ], [ 3, [ 3, 5, 6 ] ], 
##      [ 1, [ 1, 6, 7 ] ] ], order := 35, 
##  representatives := [ 1, 8, 15 ], 
##  schreierVector := [ -1, 1, 4, 2, 4, 3, 1, -2, 4, 1, 3, 4, 1, 2, 
##      -3, 1, 4, 2, 4, 1, 3, 4, 4, 1, 3, 4, 2, 1, 2, 3, 3, 1, 3, 4, 
##      3 ] )
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareConstructor("IncidenceGraphCons", [IsObject, IsRecord, IsList]);
DeclareGlobalFunction( "IncidenceGraph" );
