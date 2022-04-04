#############################################################################
##
#W  nmgrph.gd          Algebraic Graph Theory package         Janoš Vidali
##
##
#Y  Copyright (C) 2020
##
##  Declaration file for functions that construct named graphs. 
##

#############################################################################
##
#F  TetrahedronGraph(  )
##  
##  <#GAPDoc Label="TetrahedronGraph">
##  <ManSection>
##  <Func Name="TetrahedronGraph"
##   Arg=''/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  This function returns the Tetrahedron graph.
##  <P/>
##  The <E>Tetrahedron graph</E> is the skeleton of the tetrahedron. This
##  graph is isomorphic to the complete graph with 4 vertices.
##    <Example>
##      <![CDATA[
##gap> TetrahedronGraph();
##rec( adjacencies := [ [ 2, 3, 4 ] ], group := Sym( [ 1 .. 4 ] ), 
##  isGraph := true, isSimple := true, order := 4, representatives := [ 1 ], 
##  schreierVector := [ -1, 1, 1, 1 ] )
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareGlobalFunction( "TetrahedronGraph" );

#############################################################################
##
#F  OctahedronGraph(  )
##  
##  <#GAPDoc Label="OctahedronGraph">
##  <ManSection>
##  <Func Name="OctahedronGraph"
##   Arg=''/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  This function returns the Octahedron graph.
##  <P/>
##  The <E>Octahedron graph</E> is the skeleton of the tetrahedron. This
##  graph is isomorphic to the Cocktail party graph with 6 vertices, and is 
##  strongly regular with parameters <M>(6,4,2,4)</M> (see 
##  <Ref Func="CocktailPartyGraph"/>).
##    <Example>
##      <![CDATA[
##gap> OctahedronGraph();
##rec( adjacencies := [ [ 3, 4, 5, 6 ] ], 
##  group := Group([ (1,2), (1,3)(2,4), (1,3,5)(2,4,6) ]), isGraph := true, 
##  names := [ [ 1, 1 ], [ 1, 2 ], [ 2, 1 ], [ 2, 2 ], [ 3, 1 ], [ 3, 2 ] ], 
##  order := 6, representatives := [ 1 ], 
##  schreierVector := [ -1, 1, 2, 2, 3, 3 ] )
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareGlobalFunction( "OctahedronGraph" );

#############################################################################
##
#F  PetersenGraph2(  )
##  
##  <#GAPDoc Label="PetersenGraph2">
##  <ManSection>
##  <Func Name="PetersenGraph2"
##   Arg=''/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  This function returns the Petersen graph.
##  <P/>
##  The <E>Petersen graph</E> is the graph with vertex-set the 
##  <M>2</M>-subsets of <M>\{1,...,5\}</M>, and distinct vertices are 
##  adjacent if and onlt if their intersection is empty. By definition, 
##  this is exactly the Odd graph of diameter <M>2</M> and the Kneser graph
##  <M>K(5,2)</M> (see <Ref Func="OddGraph"/> and <Ref Func="KneserGraph"/>).
##  This graph is strongly regular with parameters <M>(10,3,0,1)</M>.
##    <Example>
##      <![CDATA[
##gap> PetersenGraph2();
##rec( adjacencies := [ [ 3, 5, 8 ] ], 
##  group := Group([ (1,2,3,5,7)(4,6,8,9,10), (2,4)(6,9)(7,10) ]), 
##  isGraph := true, 
##  names := [ [ 1, 2 ], [ 2, 3 ], [ 3, 4 ], [ 1, 3 ], [ 4, 5 ], [ 2, 4 ], 
##      [ 1, 5 ], [ 3, 5 ], [ 1, 4 ], [ 2, 5 ] ], order := 10, 
##  representatives := [ 1 ], schreierVector := [ -1, 1, 1, 2, 1, 1, 1, 1, 2, 2 
##     ] )
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareGlobalFunction( "PetersenGraph2" );

#############################################################################
##
#F  ShrikhandeGraph(  )
##  
##  <#GAPDoc Label="ShrikhandeGraph">
##  <ManSection>
##  <Func Name="ShrikhandeGraph"
##   Arg=''/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  This function returns the Shrikhande graph.
##  <P/>
##  The <E>Shrikhande graph</E> is the complement graph of the Latin square
##  graph of the group <M>\mathbb{Z}_4</M> 
##  (see <Ref Func="LatinSquareGraph"/>). This graph is strongly regular 
##  with parameters <M>(16,6,2,2)</M>.
##    <Example>
##      <![CDATA[
##gap> gamma:=ShrikhandeGraph();;
##gap> SRGParameters(gamma);
##[ 16, 6, 2, 2 ]
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareConstructor("ShrikhandeGraphCons", [IsObject]);
DeclareGlobalFunction( "ShrikhandeGraph" );

# The Clebsch graph with v=16, k=10, lm=6, mu=6.
#############################################################################
##
#F  ClebschGraph(  )
##  
##  <#GAPDoc Label="ClebschGraph">
##  <ManSection>
##  <Func Name="ClebschGraph"
##   Arg=''/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  This function returns the Clebsch graph.
##  <P/>
##  The <E>Clebsch graph</E> is the halved graph of the <M>5</M>-dimensional
##  hypercube graph (see <Ref Func="HalvedCubeGraph"/>, 
##  <Ref Func="HypercubeGraph"/> and <Ref Func="HalvedGraph"/> ). This graph
##  is strongly regular with parameters <M>(16,10,6,6)</M>.
##    <Example>
##      <![CDATA[
##gap> gamma:=ClebschGraph();;
##gap> SRGParameters(gamma);
##[ 16, 10, 6, 6 ]
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareGlobalFunction( "ClebschGraph" );

#TODO need def
#############################################################################
##
#F  SchlaefliGraph(  )
##  
##  <#GAPDoc Label="SchlaefliGraph">
##  <ManSection>
##  <Func Name="SchlaefliGraph"
##   Arg=''/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  This function returns the Schläfli graph.
##  <P/>
##  The <E>Schläfli graph</E> is the TODO. This graph
##  is strongly regular with parameters <M>(27,16,10,8)</M>.ä
##    <Example>
##      <![CDATA[
##gap> gamma:=SchlaefliGraph();;
##gap> SRGParameters(gamma);
##[ 27, 16, 10, 8 ]
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareGlobalFunction( "SchlaefliGraph" );

#TODO implementation list use?
#############################################################################
##
#F  HoffmanSingletonGraph2(  )
##  
##  <#GAPDoc Label="HoffmanSingletonGraph2">
##  <ManSection>
##  <Func Name="HoffmanSingletonGraph2"
##   Arg=''/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  This function returns the Hoffman-Singleton graph.
##  <P/>
##  The <E>Hoffman-Singleton graph</E> can be constructed as follows. Let 
##  <M>P_h</M> be a pentagon and <M>Q_i</M> be a pentagram for 
##  <M>h,i\in\{1,...,5\}</M>, and consider the union of these graphs. Then 
##  add an edge between <M>j\in P_h</M> and <M>hi+j\in Q_i</M> for each 
##  <M>j\in P_h</M> and <M>i\in\{1,...,5\}</M>. The resulting graph is 
##  the Hoffman-Singleton graph, which is strongly regular with parameters
##  <M>(50,7,0,1)</M>. For more information on this graph, see 
##  <Cite Key="B_2018b"/>. 
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
DeclareGlobalFunction( "HoffmanSingletonGraph2" );

#############################################################################
##
#F  GewirtzGraph(  )
##  
##  <#GAPDoc Label="GewirtzGraph">
##  <ManSection>
##  <Func Name="GewirtzGraph"
##   Arg=''/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  This function returns the Gewirtz graph (also known as the Sims-Gewirtz
##  graph).
##  <P/>
##  The <E>Gewirtz graph</E> has vertex-set consisting of the blocks of the
##  unique Steiner system in <M>S(3,6,22)</M> which do not contain a fixed
##  point. Any two distinct vertices are adjacent if and only if their 
##  intersection is empty. This graph is strongly regular with parameters#
##  <M>(56,10,0,2)</M>. For more information on this graph, see 
##  <Cite Key="B_2018b"/>. 
##    <Example>
##      <![CDATA[
##gap> gamma:=GewirtzGraph();;
##gap> SRGParameters(gamma);
##[ 56, 10, 0, 2 ]
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareGlobalFunction( "GewirtzGraph" );

#############################################################################
##
#F  WittStronglyRegularGraph(  )
##  
##  <#GAPDoc Label="WittStronglyRegularGraph">
##  <ManSection>
##  <Func Name="WittStronglyRegularGraph"
##   Arg=''/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  This function returns the Witt strongly regular graph (also known as 
##  the <M>M_{22}</M> graph).
##  <P/>
##  The <E>Witt strongly regular graph</E> has vertex-set consisting of 
##  the blocks of the unique Steiner system in <M>S(3,6,22)</M>. Any 
##  two distinct vertices are adjacent if and only if their 
##  intersection is empty. This graph is strongly regular with 
##  parameters <M>(77,16,0,4)</M>. For more information on this graph, see 
##  <Cite Key="B_2018b"/>. 
##    <Example>
##      <![CDATA[
##gap> gamma:=WittStronglyRegularGraph();;
##gap> SRGParameters(gamma);
##[ 77, 16, 0, 4 ]
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareGlobalFunction( "WittStronglyRegularGraph" );

#############################################################################
##
#F  KlinGraph(  )
##  
##  <#GAPDoc Label="KlinGraph">
##  <ManSection>
##  <Func Name="KlinGraph"
##   Arg=''/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  This function returns the Klin graph.
##  <P/>
##  The <E>Klin graph</E> can be constructed as follows. Let <M>G=S_7</M>
##  and <M>H=\langle (1,2,3,4,5,6),(1,4) \rangle</M> be a subgroup of 
##  <M>G</M>. The vertex-set of the Klin graph is the set of right cosets
##   of <M>H</M> in <M>G</M>. Any two distinct vertices <M>Hg_1,Hg_2</M> 
##  are adjacent if and if <M>g_2g_1^{-1}</M> is in 
##  <Display> \{(3,4,5,6,7), (2,4,6,3,5,7), (3,5,6,7), (2,4,5,6,7,3),
##              (2,3,5,6,7), (2,4,5,6), (2,3,5,6)\}.</Display>
##  This graph is strongly regular with parameters <M>(210,99,48,45)</M>.
##  For more information on this graph, see REF.
##    <Example>
##      <![CDATA[
##gap> gap> gamma:=KlinGraph();;
##gap> SRGParameters(gamma);
##[ 210, 99, 48, 45 ]
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareGlobalFunction( "KlinGraph" );

#############################################################################
##
#F  CubeGraph(  )
##  
##  <#GAPDoc Label="CubeGraph">
##  <ManSection>
##  <Func Name="CubeGraph"
##   Arg=''/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  This function returns the Cube graph.
##  <P/>
##  The <E>Cube graph</E> is the skeleton of the cube. This graph is 
##  isomorphic to the 3-dimensional hypercube graph and the Hamming graph
##  <M>H(3,2)</M> (see <Ref Func="HypercubeGraph"/> and 
##  <Ref Func="HammingGraph2"/>). This graph is distance-regular with 
##  intersection array <M>\{3,2,1;1,2,3\}</M>.
##    <Example>
##      <![CDATA[
##gap> CubeGraph();
##rec( adjacencies := [ [ 2, 3, 5 ] ], 
##  group := Group([ (1,5)(2,6)(3,7)(4,8), (1,3)(2,4)(5,7)(6,8), (1,2)(3,4)
##      (5,6)(7,8), (2,5,3)(4,6,7), (3,5)(4,6) ]), isGraph := true, 
##  names := [ [ 1, 1, 1 ], [ 1, 1, 2 ], [ 1, 2, 1 ], [ 1, 2, 2 ], 
##      [ 2, 1, 1 ], [ 2, 1, 2 ], [ 2, 2, 1 ], [ 2, 2, 2 ] ], order := 8, 
##  representatives := [ 1 ], schreierVector := [ -1, 3, 2, 3, 1, 3, 2, 3 ] )
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareGlobalFunction( "CubeGraph" );

#############################################################################
##
#F  HeawoodGraph(  )
##  
##  <#GAPDoc Label="HeawoodGraph">
##  <ManSection>
##  <Func Name="HeawoodGraph"
##   Arg=''/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  This function returns the Heawood graph.
##  <P/>
##  The <E>Heawood graph</E> is the incidence graph of the Desarguesian 
##  plane <M>PG(2,2)</M> (see <Ref Func="DesarguesianPlaneIncidenceGraph"/>).
##  This graph is distance-regular with intersection array 
##  <M>\{3,2,2;1,1,3\}</M>.
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
DeclareGlobalFunction( "HeawoodGraph" );

#############################################################################
##
#F  IcosahedronGraph(  )
##  
##  <#GAPDoc Label="IcosahedronGraph">
##  <ManSection>
##  <Func Name="IcosahedronGraph"
##   Arg=''/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  This function returns the Icosahedron graph.
##  <P/>
##  The <E>Icosahedron graph</E> is the skeleton of the icosahedron. This 
##  graph is distance-regular with intersection array 
##  <M>\{5,2,1;1,2,5\}</M>.
##    <Example>
##      <![CDATA[
##gap> gamma:=IcosahedronGraph();;
##gap> GlobalParameters(gamma);
##[ [ 0, 0, 5 ], [ 1, 2, 2 ], [ 2, 2, 1 ], [ 5, 0, 0 ] ]
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareGlobalFunction( "IcosahedronGraph" );

#TODO def
#############################################################################
##
#F  SylvesterGraph(  )
##  
##  <#GAPDoc Label="SylvesterGraph">
##  <ManSection>
##  <Func Name="SylvesterGraph"
##   Arg=''/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  This function returns the Sylvester graph.
##  <P/>
##  The <E>Sylvester graph</E> is the TODO.
##  This graph is distance-regular with intersection array 
##  <M>\{5,4,2;1,1,4\}</M>.
##    <Example>
##      <![CDATA[
##gap> gamma:=SylvesterGraph();;
##gap> GlobalParameters(gamma);
##[ [ 0, 0, 5 ], [ 1, 0, 4 ], [ 1, 2, 2 ], [ 4, 1, 0 ] ]
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareGlobalFunction( "SylvesterGraph" );

#TODO def
#############################################################################
##
#F  PerkelGraph(  )
##  
##  <#GAPDoc Label="PerkelGraph">
##  <ManSection>
##  <Func Name="PerkelGraph"
##   Arg=''/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  This function returns the Perkel graph.
##  <P/>
##  The <E>Perkel graph</E> is the TODO.
##  This graph is distance-regular with intersection array 
##  <M>\{6,5,2;1,1,3\}</M>.
##    <Example>
##      <![CDATA[
##gap> gamma:=PerkelGraph();;
##gap> GlobalParameters(gamma);
##[ [ 0, 0, 6 ], [ 1, 0, 5 ], [ 1, 3, 2 ], [ 3, 3, 0 ] ]
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareConstructor( "PerkelGraphCons", [IsObject]);
DeclareGlobalFunction( "PerkelGraph" );

#############################################################################
##
#F  GossetGraph(  )
##  
##  <#GAPDoc Label="GossetGraph">
##  <ManSection>
##  <Func Name="GossetGraph"
##   Arg=''/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  This function returns the Gosset graph.
##  <P/>
##  The <E>Gosset graph</E> can be constructed as follows. Consider the 
##  vector <M>e=(-3,-3,1,1,1,1,1,1)</M> in <M>\mathbb{R}^8</M>. The
##  vertex-set of the Gosset graph  is the set of vecotrs obtained from 
##  permuting coordinates and taking opposite vectors of <M>e</M>. Any two
##  distinct vectors <M>u,w</M> are adjacent if and only if their inner 
##  product <M>u.v</M> is equal to 8. This graph is distance-regular with
##  intersection array <M>\{27,10,1;1,10,27\}</M>.
##    <Example>
##      <![CDATA[
##gap> gamma:=GossetGraph();;
##gap> GlobalParameters(gamma);
##[ [ 0, 0, 27 ], [ 1, 16, 10 ], [ 10, 16, 1 ], [ 27, 0, 0 ] ]
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareGlobalFunction( "GossetGraph" );

#TODO ref
#############################################################################
##
#F  Witt23Graph(  )
##  
##  <#GAPDoc Label="Witt23Graph">
##  <ManSection>
##  <Func Name="Witt23Graph"
##   Arg=''/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  This function returns the truncated Witt graph.
##  <P/>
##  The <E>truncated Witt graph</E> can be constructed as follows. The
##  vertex-set of the graph is the set of weight 8 vectors of the large 
##  Witt design not containing a fixed symbol. Any two distinct vertices
##  <M>u,w</M> are adjacent if and only if the intersection of their 
##  supports is empty. This graph is distance-regular with
##  intersection array <M>\{15,14,12;1,1,9\}</M>.
##    <Example>
##      <![CDATA[
##gap> gamma:=Witt23Graph();;
##gap> GlobalParameters(gamma);
##[ [ 0, 0, 15 ], [ 1, 0, 14 ], [ 1, 2, 12 ], [ 9, 6, 0 ] ]
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareGlobalFunction( "Witt23Graph" );

#TODO ref
#############################################################################
##
#F  Witt24Graph(  )
##  
##  <#GAPDoc Label="Witt24Graph">
##  <ManSection>
##  <Func Name="Witt24Graph"
##   Arg=''/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  This function returns the large Witt graph.
##  <P/>
##  The <E>large Witt graph</E> can be constructed as follows. The
##  vertex-set of the graph is the set of weight 8 vectors of the large 
##  Witt design. Any two distinct vertices <M>u,w</M> are adjacent if and
##  only if the intersection of their supports is empty. This graph is
##  distance-regular with intersection array <M>\{30,28,24;1,3,15\}</M>.
##    <Example>
##      <![CDATA[
##gap> gamma:=Witt24Graph();;
##gap> GlobalParameters(gamma);
##[ [ 0, 0, 30 ], [ 1, 1, 28 ], [ 3, 3, 24 ], [ 15, 15, 0 ] ]
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareGlobalFunction( "Witt24Graph" );

#TODO ref
#############################################################################
##
#F  HigmanGraph(  )
##  
##  <#GAPDoc Label="HigmanGraph">
##  <ManSection>
##  <Func Name="HigmanGraph"
##   Arg=''/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  This function returns the Higman graph.
##  <P/>
##  The <E>Higman graph</E> is the incidence graph of Higman's symmetric 
##  design. This graph is distance-regular with intersection array 
##  <M>\{50,49,36;1,14,50\}</M>.
##    <Example>
##      <![CDATA[
##gap> gamma:=HigmanGraph();;
##gap> GlobalParameters(gamma);
##[ [ 0, 0, 50 ], [ 1, 0, 49 ], [ 14, 0, 36 ], [ 50, 0, 0 ] ]
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareGlobalFunction( "HigmanGraph" );

# TODO def in how we define it?
#############################################################################
##
#F  CoxeterGraph(  )
##  
##  <#GAPDoc Label="CoxeterGraph">
##  <ManSection>
##  <Func Name="CoxeterGraph"
##   Arg=''/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  This function returns the Coxeter graph.
##  <P/>
##  The <E>Coxeter graph</E> is the TODO. This graph is distance-regular 
##  with intersection array <M>\{3,2,2,1;1,1,1,2\}</M>.
##    <Example>
##      <![CDATA[
##gap> gamma:=CoxeterGraph();;
##gap> GlobalParameters(gamma);
##[ [ 0, 0, 3 ], [ 1, 0, 2 ], [ 1, 0, 2 ], [ 1, 1, 1 ], [ 2, 1, 0 ] ]
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareGlobalFunction( "CoxeterGraph" );

#TODO ref
#############################################################################
##
#F  Witt22Graph(  )
##  
##  <#GAPDoc Label="Witt22Graph">
##  <ManSection>
##  <Func Name="Witt22Graph"
##   Arg=''/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  This function returns the doubly truncated Witt graph.
##  <P/>
##  The <E>doubly truncated Witt graph</E> can be constructed as follows. 
##  Thevertex-set of the graph is the set of weight 8 vectors of the large 
##  Witt design not containing two fixed symbols. Any two distinct vertices
##  <M>u,w</M> are adjacent if and only if the intersection of their 
##  supports is empty. This graph is distance-regular with
##  intersection array <M>\{7,6,4,4;1,1,1,6\}</M>.
##    <Example>
##      <![CDATA[
##gap> GlobalParameters(gamma);
##[ [ 0, 0, 7 ], [ 1, 0, 6 ], [ 1, 2, 4 ], [ 1, 2, 4 ], [ 6, 1, 0 ] ]
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareGlobalFunction( "Witt22Graph" );

# The unital graph of AG(2,3) subplanes in PG(2,4)
# with intersection array {9,8,6,3; 1,1,3,8}
#############################################################################
##
#F  UnitalGraph(  )
##  
##  <#GAPDoc Label="UnitalGraph">
##  <ManSection>
##  <Func Name="UnitalGraph"
##   Arg=''/>
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
DeclareConstructor("UnitalGraphCons", [IsObject]);
DeclareGlobalFunction( "UnitalGraph" );

# The dodecahedron with intersection array {3,2,1,1,1; 1,1,1,2,3}.
#############################################################################
##
#F  DodecahedronGraph(  )
##  
##  <#GAPDoc Label="DodecahedronGraph">
##  <ManSection>
##  <Func Name="DodecahedronGraph"
##   Arg=''/>
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
DeclareGlobalFunction( "DodecahedronGraph" );

# The Desargues graph with intersection array {3,2,2,1,1; 1,1,2,2,3}.
#############################################################################
##
#F  DesarguesGraph(  )
##  
##  <#GAPDoc Label="DesarguesGraph">
##  <ManSection>
##  <Func Name="DesarguesGraph"
##   Arg=''/>
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
DeclareGlobalFunction( "DesarguesGraph" );

# The Biggs-Smith graph with intersection array {3,2,2,2,1,1,1; 1,1,1,1,1,1,3}.
#############################################################################
##
#F  BiggsSmithGraph(  )
##  
##  <#GAPDoc Label="BiggsSmithGraph">
##  <ManSection>
##  <Func Name="BiggsSmithGraph"
##   Arg=''/>
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
DeclareConstructor( "BiggsSmithGraphCons", [IsObject]);
DeclareGlobalFunction( "BiggsSmithGraph" );
