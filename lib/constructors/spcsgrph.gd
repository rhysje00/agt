#############################################################################
##
#W  spcsgrph.gd          Algebraic Graph Theory package         Janoš Vidali
##
##
#Y  Copyright (C) 2020
##
##  Declaration file for functions that construct subspace graphs. 
##

#TODO n>=d
#############################################################################
##
#F  GrassmannGraph( [<filter>, ]<int>, <int>, <int> )
##  
##  <#GAPDoc Label="GrassmannGraph">
##  <ManSection>
##  <Func Name="GrassmannGraph"
##   Arg='[fil, ]q, n, d'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given a prime power <A>q</A> and positive integers <A>n,d</A>, this 
##  function returns the Grassmann graph 
##  <M>J_{<A>q</A>}(<A>n</A>,<A>d</A>)</M>.
##  <P/>
<<<<<<< HEAD
##  The optional argument <A>fil</A>, if used, can only take value 
##  <K>FullAutomorphismGroup</K>. The vertex naming of this function behaves as 
##  described in <Ref Filt="FullAutomorphismGroup"/>.
=======
##  If <A>fil</A> is not given, or is <C>IsObject</C>,  the resulting graph 
##  <C>gamma</C> may not have been constructed using its full automorphism
##  group, and <C>gamma.group</C> may be a strict subgroup of the 
##  automorphism group. If <A>fil</A> is <C>FullAutomorphismGroup</C>, then
##  we construct the full automorphism group and use it to construct the 
##  graph, and <C>gamma.group</C> is this group.
>>>>>>> 86e898e94947af6c0ad6cce62d9b38d306c4dd17
##  <P/>  
##  Let <M>q</M> be a prime power and <M>n,d</M> be positive integers. 
##  The <E>Grassmann graph</E> <M>J_q(n,d)</M> is the graph with vertex-set 
##  the <M>d</M>-dimensional subspaces of <M>GF(q)^n</M>,  and 
##  distinct vertices <M>U,V</M> are adjacent if and only if 
##  <M>U\cap V</M> has dimension <M>d-1</M>. 
##    <Example>
##      <![CDATA[
##gap> gamma:=GrassmannGraph(4,4,2);;
##gap> GlobalParameters(gamma);
##[ [ 0, 0, 100 ], [ 1, 35, 64 ], [ 25, 75, 0 ] ]
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareConstructor( "GrassmannGraphCons", [IsObject, IsInt, IsInt, IsInt]);
DeclareGlobalFunction( "GrassmannGraph" );

#############################################################################
##
#F  DoubledGrassmannGraph( [<filter>, ]<int>, <int> )
##  
##  <#GAPDoc Label="DoubledGrassmannGraph">
##  <ManSection>
##  <Func Name="DoubledGrassmannGraph"
##   Arg='[fil, ]q, d'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given a prime power <A>q</A> and positive integer <A>d</A>, this 
##  function returns the doubled Grassmann graph 
##  <M>2J_{<A>q</A>}(2<A>d</A>+1,<A>d</A>)</M>.
##  <P/>
<<<<<<< HEAD
##  The optional argument <A>fil</A>, if used, can only take value 
##  <K>FullAutomorphismGroup</K>. The vertex naming of this function behaves as 
##  described in <Ref Filt="FullAutomorphismGroup"/>.
=======
##  If <A>fil</A> is not given, or is <C>IsObject</C>,  the resulting graph 
##  <C>gamma</C> may not have been constructed using its full automorphism
##  group, and <C>gamma.group</C> may be a strict subgroup of the 
##  automorphism group. If <A>fil</A> is <C>FullAutomorphismGroup</C>, then
##  we construct the full automorphism group and use it to construct the 
##  graph, and <C>gamma.group</C> is this group.
>>>>>>> 86e898e94947af6c0ad6cce62d9b38d306c4dd17
##  <P/>  
##  Let <M>q</M> be a prime power and <M>d</M> be a positive integer. 
##  The <E>doubled Grassmann graph</E> <M>J_q(n,d)</M> is the graph with 
##  vertex-set the <M>d</M>-dimensional and <M>d+1</M>-dimensional subspaces 
##  of <M>GF(q)^n</M>, and distinct vertices <M>U,V</M> are adjacent if 
##  and only if <M>U\subseteq V</M> or <M>V\subseteq U</M>. This graph is 
##  isomorphic to the bipartite double of the Grassmann graph 
##  <M>J_q(2d+1,d)</M> (See <Ref Func="BipartiteDoubleGraph"/> and 
##  <Ref Func="GrassmannGraph"/>).
##    <Example>
##      <![CDATA[
##gap> gamma:=DoubledGrassmannGraph(3,1);;
##gap> GlobalParameters(gamma);
##[ [ 0, 0, 4 ], [ 1, 0, 3 ], [ 1, 0, 3 ], [ 4, 0, 0 ] ]
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareConstructor( "DoubledGrassmannGraphCons", [IsObject, IsInt, IsInt]);
DeclareGlobalFunction( "DoubledGrassmannGraph" );

#############################################################################
##
#F  TwistedGrassmannGraph( [<filter>, ]<int>, <int> )
##  
##  <#GAPDoc Label="TwistedGrassmannGraph">
##  <ManSection>
##  <Func Name="TwistedGrassmannGraph"
##   Arg='[fil, ]q, d'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given a prime power <A>q</A> and positive integer <A>d</A>, this 
##  function returns the twisted Grassmann graph 
##  <M>\tilde{J}_{<A>q</A>}(2<A>d</A>+1, <A>d</A>)</M>.
##  <P/>
<<<<<<< HEAD
##  The optional argument <A>fil</A>, if used, can only take value 
##  <K>FullAutomorphismGroup</K>. The vertex naming of this function behaves as 
##  described in <Ref Filt="FullAutomorphismGroup"/>.
=======
##  If <A>fil</A> is not given, or is <C>IsObject</C>,  the resulting graph 
##  <C>gamma</C> may not have been constructed using its full automorphism
##  group, and <C>gamma.group</C> may be a strict subgroup of the 
##  automorphism group. If <A>fil</A> is <C>FullAutomorphismGroup</C>, then
##  we construct the full automorphism group and use it to construct the 
##  graph, and <C>gamma.group</C> is this group.
>>>>>>> 86e898e94947af6c0ad6cce62d9b38d306c4dd17
##  <P/>  
##  Let <M>q</M> be a prime power, <M>d</M> be a positive integer and 
##  <M>H</M> be a fixed hyperplane in <M>GF(q)^{2d+1}</M>. For the
##  vector space <M>V=GF(q)^{2d+1}</M>, let <M>A</M> be the set of 
##  <M>d+1</M>-dimensional subspaces not contained in <M>H</M>, and <M>B</M> 
##  be all <M>d-1</M>-dimensional subspaces in <M>V</M>. The <E>twisted 
##  Grassmann graph</E> <M>\tilde{J}_q(2d+1,d)</M> has 
##  vertex-set <M>A\cup B</M>, and distinct vertices <M>U,W</M> are adjacent ##  if and only if one of the following is true. 
##  <List>
##    <Item><M>U,W\in A</M> and <M>U\cap W</M> has dimension <M>d</M>, or 
##    </Item>
##    <Item><M>U\in A, W\in B</M> and <M>B\subset A</M>, or</Item>
##    <Item><M>U, W\in B</M> and <M>U\cap W</M> has dimension <M>d-2</M>.
##    </Item>
##  </List>
##    <Example>
##      <![CDATA[
##gap> gamma:=TwistedGrassmannGraph(2,2);;
##gap> GlobalParameters(gamma);
##[ [ 0, 0, 42 ], [ 1, 17, 24 ], [ 9, 33, 0 ] ]
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareConstructor( "TwistedGrassmannGraphCons", [IsObject, IsInt, IsInt]);
DeclareGlobalFunction( "TwistedGrassmannGraph" );

# The polar graph O^{(+/-)}(d, q) of isotropic lines of F_q^d
# with respect to a nondegenerate quadratic form.
##  isotropic lines = vectors, Elements[2] is non-zero , B is bilinear form 
##  use InvariantBilinearForm?
#############################################################################
##
#F  PolarGraphO( [<filter>, <integer>, ]<integer>, <integer> )
##  
##  <#GAPDoc Label="PolarGraphO">
##  <ManSection>
##  <Func Name="PolarGraphO"
##   Arg='[e, ]d, q'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given a prime power <A>q</A> and positive integer <A>d</A>, this function 
##  returns the polar graph <M>O(<A>d</A>, <A>q</A>)</M>. If 
##  <A>e</A> is given and lies in <C>[0,-1,1]</C>, then this function returns
##  the affine polar graph <M>O^{<A>e</A>}(<A>d</A>, <A>q</A>)</M> with 
##  respect to a parabolic, elliptic and hyperbolic quadratic form, 
##  repectively. If <A>e</A> is not given, the function works as if 
##  <A>e</A> is <C>0</C>.
##  <P/>
##  Let <M>q</M> be a prime power and <M>d</M> and positive integer. Let
##  <M>Q</M> be a nondegenerate quadratic form acting on  
##  <M>GF(q)^d</M>. If <M>Q</M> is parabolic let <M>e=0</M>, 
##  elliptic let <M>e=-1</M> or hyperbolic let <M>e=1</M>. Further, let 
##  <M>B</M> be the bilinear form associated with the quadratic form <M>Q</M>.
##  <P/>
##  The <E>polar graph</E> <M>O^{e}(d,q)</M> has vertex-set consisting of the
##  1-dimensional subspaces <M>U</M> of <M>GF(q)^d</M> such that 
##  <M>Q(u)=0</M> for all <M>u\in U</M> (i.e. the isotropic lines in 
##  <M>GF(q)^d</M>). Any two distinct vertices <M>U,W</M>
##  are adjacent if and only if <M>B(u,w)=0</M> for all <M>u\in U,w\in W</M>.
##    <Example>
##      <![CDATA[
##gap> gamma:=PolarGraphO(5,3);;
##gap> SRGParameters(gamma);
##[ 40, 12, 2, 4 ]
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareConstructor( "PolarGraphOCons", [IsObject, IsInt, IsInt, IsInt]);
DeclareGlobalFunction( "PolarGraphO" );

# The polar graph NO^{+/-}orth(d, q) of nonisotropic lines of F_q^d
# with respect to a nondegenerate quadratic form.
#############################################################################
##
#F  PolarGraphNOorth( [<filter>, ]<integer>, <integer>, <integer> )
##  
##  <#GAPDoc Label="PolarGraphNOorth">
##  <ManSection>
##  <Func Name="PolarGraphNOorth"
##   Arg='e, d, q'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given a prime power <A>q</A>, positive integer <A>d</A> and <A>e</A> in
##  <C>[-1,1]</C>, this function returns the polar graph 
##  <M>NO^{<A>e</A>}(<A>d</A>, <A>q</A>)</M> with respect to an elliptic and 
##  hyperbolic quadratic form, repectively.
##  <P/>
##  Let <M>q</M> be a prime power and <M>d</M> and positive integer. Let
##  <M>Q</M> be an elliptic or hyperbolic nondegenerate quadratic form acting 
##  on <M>GF(q)^d</M>. If <M>Q</M> is elliptic let <M>e=-1</M> and 
##  if it is hyperbolic let <M>e=1</M>. Further, let <M>B</M> be the bilinear
##  form associated with the quadratic form <M>Q</M>.
##  <P/>
##  The <E>polar graph</E> <M>NO^{e}(d,q)</M> has vertex-set consisting of the
##  1-dimensional subspaces <M>U</M> of <M>GF(q)^d</M> such that 
##  <M>Q(u)\not=0</M> for all <M>u\in U</M> (i.e. the nonisotropic lines in 
##  <M>GF(q)^d</M>). Any two distinct vertices <M>U,W</M>
##  are adjacent if and only if <M>B(u,w)=0</M> for all <M>u\in U,w\in W</M>.
##    <Example>
##      <![CDATA[
##gap> gamma:=PolarGraphNOorth(1,5,3);;
##gap> SRGParameters(gamma);
##[ 45, 12, 3, 3 ]
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareConstructor( "PolarGraphNOorthCons", [IsObject, IsInt, IsInt, IsInt]);
DeclareGlobalFunction( "PolarGraphNOorth" );

# The polar graph Sp(d, q) of isotropic lines of F_q^d
# with respect to a nondegenerate symplectic form.
#############################################################################
##
#F  PolarGraphSp( [<filter>, ]<integer>, <integer> )
##  
##  <#GAPDoc Label="PolarGraphSp">
##  <ManSection>
##  <Func Name="PolarGraphSp"
##   Arg='d, q'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given a prime power <A>q</A> and positive integer <A>d</A>, this function 
##  returns the polar graph <M>Sp(<A>d</A>, <A>q</A>)</M>.
##  <P/>
##  Let <M>q</M> be a prime power and <M>d</M> and positive integer. Let
##  <M>B</M> be a nondegenerate symplectic bilinear form acting on  
##  <M>GF(q)^d</M>.
##  <P/>
##  The <E>polar graph</E> <M>Sp(d,q)</M> has vertex-set consisting of the
##  1-dimensional subspaces <M>U</M> of <M>GF(q)^d</M> such that 
##  <M>B(u,u)=0</M> for all <M>u\in U</M> (i.e. the isotropic lines in 
##  <M>GF(q)^d</M>). Any two distinct vertices <M>U,W</M>
##  are adjacent if and only if <M>B(u,w)=0</M> for all <M>u\in U,w\in W</M>.
##    <Example>
##      <![CDATA[
##gap> gamma:=PolarGraphSp(4,5);;
##gap> SRGParameters(gamma);
##[ 156, 30, 4, 6 ]
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareConstructor( "PolarGraphSpCons", [IsObject, IsInt, IsInt]);
DeclareGlobalFunction( "PolarGraphSp" );

# The polar graph U(d, r) of isotropic lines of F_{r^2}^d
# with respect to a nondegenerate Hermitean form.
## In function, seems to calculate unnecessary things?
#############################################################################
##
#F  PolarGraphU( [<filter>, ]<integer>, <integer> )
##  
##  <#GAPDoc Label="PolarGraphU">
##  <ManSection>
##  <Func Name="PolarGraphU"
##   Arg='d, r'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given a prime power <A>r</A> and positive integer <A>d</A>, this function 
##  returns the polar graph <M>U(<A>d</A>, <A>r</A>)</M>.
##  <P/>
##  Let <M>r</M> be a prime power and <M>d</M> and positive integer. Let
##  <M>B</M> be a nondegenerate hermitean form acting on  
##  <M>GF(r^2)^d</M>.
##  <P/>
##  The <E>polar graph</E> <M>U(d,r)</M> has vertex-set consisting of the
##  1-dimensional subspaces <M>U</M> of <M>GF(r^2)^d</M> such that 
##  <M>B(u,u)=0</M> for all <M>u\in U</M> (i.e. the isotropic lines in 
##  <M>GF(r^2)^d</M>). Any two distinct vertices <M>U,W</M>
##  are adjacent if and only if <M>B(u,w)=0</M> for all <M>u\in U,w\in W</M>.
##    <Example>
##      <![CDATA[
##gap> gamma:=PolarGraphU(4,2);;
##gap> SRGParameters(gamma);    
##[ 45, 12, 3, 3 ]
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareConstructor( "PolarGraphUCons", [IsObject, IsInt, IsInt]);
DeclareGlobalFunction( "PolarGraphU" );

#############################################################################
##
#F  DualPolarGraphB( [<filter>, ]<integer>, <integer> )
##  
##  <#GAPDoc Label="DualPolarGraphB">
##  <ManSection>
##  <Func Name="DualPolarGraphB"
##   Arg='[fil, ]d, q'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given a prime power <A>q</A> and positive integer <A>d</A>, this function 
##  returns the dual polar graph <M>B_{<A>d</A>}(<A>q</A>)</M>. 
##  <P/>
<<<<<<< HEAD
##  The optional argument <A>fil</A>, if used, can only take value 
##  <K>FullAutomorphismGroup</K>. The vertex naming of this function behaves as 
##  described in <Ref Filt="FullAutomorphismGroup"/>.
=======
##  If <A>fil</A> is not given, or is <C>IsObject</C>,  the resulting graph 
##  <C>gamma</C> may not have been constructed using its full automorphism
##  group, and <C>gamma.group</C> may be a strict subgroup of the 
##  automorphism group. If <A>fil</A> is <C>FullAutomorphismGroup</C>, then
##  we construct the full automorphism group and use it to construct the 
##  graph, and <C>gamma.group</C> is this group.
>>>>>>> 86e898e94947af6c0ad6cce62d9b38d306c4dd17
##  <P/>  
##  Let <M>q</M> be a prime power and <M>d</M> and positive integer. Let
##  <M>Q</M> be a nondegenerate parabolic quadratic form acting on  
##  <M>GF(q)^{2d+1}</M>.
##  <P/>
##  The <E>dual polar graph</E> <M>B_d(q)</M> has vertex-set consisting of the
##  <M>d</M>-dimensional subspaces <M>U</M> of <M>GF(q)^{2d+1}</M> such 
##  that <M>Q(u)=0</M> for all <M>u\in U</M> (i.e. totally isotropic subspaces 
##  in <M>GF(q)^{2d+1}</M>). Any two distinct vertices <M>U,W</M>
##  are adjacent if and only if <M>U\cap W</M> has dimension <M>d-1</M>.
##    <Example>
##      <![CDATA[
##gap> gamma:=DualPolarGraphB(2,4);;
##gap> SRGParameters(gamma);
##[ 85, 20, 3, 5 ]
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareConstructor( "DualPolarGraphBCons", [IsObject, IsInt, IsInt]);
DeclareGlobalFunction( "DualPolarGraphB" );

#############################################################################
##
#F  DualPolarGraphC( [<filter>, ]<integer>, <integer> )
##  
##  <#GAPDoc Label="DualPolarGraphC">
##  <ManSection>
##  <Func Name="DualPolarGraphC"
##   Arg='[fil, ]d, q'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given a prime power <A>q</A> and positive integer <A>d</A>, this function 
##  returns the dual polar graph <M>C_{<A>d</A>}(<A>q</A>)</M>. 
##  <P/>
<<<<<<< HEAD
##  The optional argument <A>fil</A>, if used, can only take value 
##  <K>FullAutomorphismGroup</K>. The vertex naming of this function behaves as 
##  described in <Ref Filt="FullAutomorphismGroup"/>.
=======
##  If <A>fil</A> is not given, or is <C>IsObject</C>,  the resulting graph 
##  <C>gamma</C> may not have been constructed using its full automorphism
##  group, and <C>gamma.group</C> may be a strict subgroup of the 
##  automorphism group. If <A>fil</A> is <C>FullAutomorphismGroup</C>, then
##  we construct the full automorphism group and use it to construct the 
##  graph, and <C>gamma.group</C> is this group.
>>>>>>> 86e898e94947af6c0ad6cce62d9b38d306c4dd17
##  <P/>  
##  Let <M>q</M> be a prime power and <M>d</M> and positive integer. Let
##  <M>B</M> be a nondegenerate symplectic bilinear form acting on  
##  <M>GF(q)^{2d}</M>.
##  <P/>
##  The <E>dual polar graph</E> <M>C_d(q)</M> has vertex-set consisting of the
##  <M>d</M>-dimensional subspaces <M>U</M> of <M>GF(q)^{2d}</M> such 
##  that <M>Q(u)=0</M> for all <M>u\in U</M> (i.e. totally isotropic subspaces 
##  in <M>GF(q)^{2d}</M>). Any two distinct vertices <M>U,W</M>
##  are adjacent if and only if <M>U\cap W</M> has dimension <M>d-1</M>.
##    <Example>
##      <![CDATA[
##gap> gamma:=DualPolarGraphC(2,5);;
##gap> SRGParameters(gamma);        
##[ 156, 30, 4, 6 ]
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareConstructor( "DualPolarGraphCCons", [IsObject, IsInt, IsInt]);
DeclareGlobalFunction( "DualPolarGraphC" );

#############################################################################
##
#F  DualPolarGraphD( [<filter>, ]<integer>, <integer> )
##  
##  <#GAPDoc Label="DualPolarGraphD">
##  <ManSection>
##  <Func Name="DualPolarGraphD"
##   Arg='[fil, ]d, q'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given a prime power <A>q</A> and positive integer <A>d</A>, this function 
##  returns the dual polar graph <M>D_{<A>d</A>}(<A>q</A>)</M>. 
##  <P/>
<<<<<<< HEAD
##  The optional argument <A>fil</A>, if used, can only take value 
##  <K>FullAutomorphismGroup</K>. The vertex naming of this function behaves as 
##  described in <Ref Filt="FullAutomorphismGroup"/>.
=======
##  If <A>fil</A> is not given, or is <C>IsObject</C>,  the resulting graph 
##  <C>gamma</C> may not have been constructed using its full automorphism
##  group, and <C>gamma.group</C> may be a strict subgroup of the 
##  automorphism group. If <A>fil</A> is <C>FullAutomorphismGroup</C>, then
##  we construct the full automorphism group and use it to construct the 
##  graph, and <C>gamma.group</C> is this group.
>>>>>>> 86e898e94947af6c0ad6cce62d9b38d306c4dd17
##  <P/>  
##  Let <M>q</M> be a prime power and <M>d</M> and positive integer. Let
##  <M>Q</M> be a nondegenerate hyperbolic quadratic form acting on  
##  <M>GF(q)^{2d}</M>.
##  <P/>
##  The <E>dual polar graph</E> <M>D_d(q)</M> has vertex-set consisting of the
##  <M>d</M>-dimensional subspaces <M>U</M> of <M>GF(q)^{2d}</M> such 
##  that <M>Q(u)=0</M> for all <M>u\in U</M> (i.e. totally isotropic subspaces 
##  in <M>GF(q)^{2d}</M>). Any two distinct vertices <M>U,W</M>
##  are adjacent if and only if <M>U\cap W</M> has dimension <M>d-1</M>.
##    <Example>
##      <![CDATA[
##gap> gamma:=DualPolarGraphD(4,2);;
##gap> GlobalParameters(gamma);     
##[ [ 0, 0, 15 ], [ 1, 0, 14 ], [ 3, 0, 12 ], [ 7, 0, 8 ], [ 15, 0, 0 ] ]
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareConstructor( "DualPolarGraphDCons", [IsObject, IsInt, IsInt]);
DeclareGlobalFunction( "DualPolarGraphD" );

# The dual polar graph ^2D_{d+1}(q) of isotropic d-dimensional subspaces of
# F_q^{2d+2} with respect to a nondegenerate quadratic form of Witt index d.
#############################################################################
##
#F  DualPolarGraph2D( [<filter>, ]<integer>, <integer> )
##  
##  <#GAPDoc Label="DualPolarGraph2D">
##  <ManSection>
##  <Func Name="DualPolarGraph2D"
##   Arg='[fil, ]d, q'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given a prime power <A>q</A> and positive integer <A>d</A>, this function 
##  returns the dual polar graph <M>^2D_{<A>d</A>+1}(<A>q</A>)</M>. 
##  <P/>
<<<<<<< HEAD
##  The optional argument <A>fil</A>, if used, can only take value 
##  <K>FullAutomorphismGroup</K>. The vertex naming of this function behaves as 
##  described in <Ref Filt="FullAutomorphismGroup"/>.
=======
##  If <A>fil</A> is not given, or is <C>IsObject</C>,  the resulting graph 
##  <C>gamma</C> may not have been constructed using its full automorphism
##  group, and <C>gamma.group</C> may be a strict subgroup of the 
##  automorphism group. If <A>fil</A> is <C>FullAutomorphismGroup</C>, then
##  we construct the full automorphism group and use it to construct the 
##  graph, and <C>gamma.group</C> is this group.
>>>>>>> 86e898e94947af6c0ad6cce62d9b38d306c4dd17
##  <P/>  
##  Let <M>q</M> be a prime power and <M>d</M> and positive integer. Let
##  <M>Q</M> be a nondegenerate elliptic quadratic form acting on  
##  <M>GF(q)^{2d+2}</M>.
##  <P/>
##  The <E>dual polar graph</E> <M>^2D_{d+1}(q)</M> has vertex-set consisting 
##  of the <M>d</M>-dimensional subspaces <M>U</M> of 
##  <M>GF(q)^{2d+2}</M> such that <M>Q(u)=0</M> for all <M>u\in U</M> 
##  (i.e. totally isotropic subspaces in <M>GF(q)^{2d+2}</M>). Any two 
##  distinct vertices <M>U,W</M> are adjacent if and only if <M>U\cap W</M> 
##  has dimension <M>d-1</M>.
##    <Example>
##      <![CDATA[
##gap> gamma:=DualPolarGraph2D(2,2);;
##gap> SRGParameters(gamma);
##[ 45, 12, 3, 3 ]
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareConstructor( "DualPolarGraph2DCons", [IsObject, IsInt, IsInt]);
DeclareGlobalFunction( "DualPolarGraph2D" );

#############################################################################
##
#F  DualPolarGraph2A( [<filter>, ]<integer>, <integer> )
##  
##  <#GAPDoc Label="DualPolarGraph2A">
##  <ManSection>
##  <Func Name="DualPolarGraph2A"
##   Arg='[fil, ]e, r'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given a prime power <A>r</A> and positive integer <A>e</A>, this function 
##  returns the dual polar graph <M>^2A_{<A>e</A>-1}(<A>r</A>)</M>. 
##  <P/>
<<<<<<< HEAD
##  The optional argument <A>fil</A>, if used, can only take value 
##  <K>FullAutomorphismGroup</K>. The vertex naming of this function behaves as 
##  described in <Ref Filt="FullAutomorphismGroup"/>.
=======
##  If <A>fil</A> is not given, or is <C>IsObject</C>,  the resulting graph 
##  <C>gamma</C> may not have been constructed using its full automorphism
##  group, and <C>gamma.group</C> may be a strict subgroup of the 
##  automorphism group. If <A>fil</A> is <C>FullAutomorphismGroup</C>, then
##  we construct the full automorphism group and use it to construct the 
##  graph, and <C>gamma.group</C> is this group.
>>>>>>> 86e898e94947af6c0ad6cce62d9b38d306c4dd17
##  <P/>  
##  Let <M>q</M> be a prime power and <M>e</M> and positive integer. Let
##  <M>B</M> be a nondegenerate hermitean form acting on  
##  <M>GF(r^2)^e</M>.
##  <P/>
##  The <E>dual polar graph</E> <M>^2A_{e-1}(r)</M> has vertex-set consisting 
##  of the <M>\lfloor e/2 \rfloor</M>-dimensional subspaces <M>U</M> of 
##  <M>GF(r^2)^e</M> such that <M>B(u,w)=0</M> for all 
##  <M>u,w\in U</M> (i.e. totally isotropic subspaces in 
##  <M>GF(r^2)^e</M>). Any two distinct vertices <M>U,W</M> are 
##  adjacent if and only if <M>U\cap W</M> has dimension 
##  <M>\lfloor e/2 \rfloor -1</M>.
##    <Example>
##      <![CDATA[
##gap> gamma:=DualPolarGraph2A(4,3);;
##gap> SRGParameters(gamma);
##[ 112, 30, 2, 10 ]
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareConstructor( "DualPolarGraph2ACons", [IsObject, IsInt, IsInt]);
DeclareGlobalFunction( "DualPolarGraph2A" );

#TODO unsure of the definition (elliptic, hyperbolic line)
# implemented uses {[4]} is garunteed Nonisotropic?
#############################################################################
##
#F  DoroGraph( [<filter>, ]q )
##  
##  <#GAPDoc Label="DoroGraph">
##  <ManSection>
##  <Func Name="DoroGraph"
##   Arg='[fil, ]q'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given a prime power <A>q</A>, this function returns the Doro graoh 
##  <M>Doro(<A>q</A>)</M>. 
##  <P/>
<<<<<<< HEAD
##  The optional argument <A>fil</A>, if used, can only take value 
##  <K>FullAutomorphismGroup</K>. The vertex naming of this function behaves as 
##  described in <Ref Filt="FullAutomorphismGroup"/>.
=======
##  If <A>fil</A> is not given, or is <C>IsObject</C>,  the resulting graph 
##  <C>gamma</C> may not have been constructed using its full automorphism
##  group, and <C>gamma.group</C> may be a strict subgroup of the 
##  automorphism group. If <A>fil</A> is <C>FullAutomorphismGroup</C>, then
##  we construct the full automorphism group and use it to construct the 
##  graph, and <C>gamma.group</C> is this group.
>>>>>>> 86e898e94947af6c0ad6cce62d9b38d306c4dd17
##  <P/>  
##  Let <M>q</M> be a prime power and <M>Q</M> be a nondegenerate elliptic 
##  quadratic form acting on <M>GF(q)^4</M>.
##  <P/>
##  The <E>Doro graph</E> <M>Doro(q)</M> has vertex-set consisting 
##  of the 1-dimensional subspaces <M>U</M> of <M>GF(q)^4</M> such 
##  that <M>Q(u)\not=0</M> for all non-zero <M>u\in U</M> (i.e. nonisotropic 
##  subspaces in <M>GF(q)^4</M>). Any two distinct vertices 
##  <M>U,W</M> are adjacent if and only if <M>U + W</M> is a hyperbolic line.
##    <Example>
##      <![CDATA[
##gap> gamma:=DoroGraph(4);;
##gap> GlobalParameters(gamma);
##[ [ 0, 0, 12 ], [ 1, 1, 10 ], [ 3, 6, 3 ], [ 8, 4, 0 ] ]
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareConstructor( "DoroGraphCons", [IsObject, IsInt]);
DeclareGlobalFunction( "DoroGraph" );

# The unitary nonisotropics graph of 1-dimensional subspaces of F_(r^2)^3 with
# respect to a nondegenerate sesquilinear form.
#############################################################################
##
#F  UnitaryNonisotropicsGraph( [<filter>, ]<integer> )
##  
##  <#GAPDoc Label="UnitaryNonisotropicsGraph">
##  <ManSection>
##  <Func Name="UnitaryNonisotropicsGraph"
##   Arg='r'/>
##  <Returns>A graph.</Returns>
##
##  <Description>
##  Given a prime power <A>r</A>, this function returns the unitary 
##  nonisotropics graph on <M>GF(<A>r</A>^2)^3</M>. 
##  <P/>
<<<<<<< HEAD
##  The optional argument <A>fil</A>, if used, can only take value 
##  <K>FullAutomorphismGroup</K>. The vertex naming of this function behaves as 
##  described in <Ref Filt="FullAutomorphismGroup"/>.
=======
##  If <A>fil</A> is not given, or is <C>IsObject</C>,  the resulting graph 
##  <C>gamma</C> may not have been constructed using its full automorphism
##  group, and <C>gamma.group</C> may be a strict subgroup of the 
##  automorphism group. If <A>fil</A> is <C>FullAutomorphismGroup</C>, then
##  we construct the full automorphism group and use it to construct the 
##  graph, and <C>gamma.group</C> is this group.
>>>>>>> 86e898e94947af6c0ad6cce62d9b38d306c4dd17
##  <P/>  
##  Let <M>r</M> be a prime power and <M>B</M> be a nondegenerate hermitean 
##  form acting on <M>GF(r^2)^3</M>.
##  <P/>
##  The <E>unitary nonisotropics graph</E> on <M>GF(r^2)^3</M> has 
##  vertex-set consisting of the 1-dimensional subspaces <M>U</M> of 
##  <M>GF(r^2)^3</M> such that <M>B(u,u)\not=0</M> for all 
##  <M>u\in U</M> (i.e. nonisotropic subspaces in <M>GF(r^2)^3</M>). 
##  Any two distinct vertices <M>U,W</M> are adjacent if and only if 
##  <M>B(u,w)=0</M> for all <M>u\in U,w\in W</M>.
##    <Example>
##      <![CDATA[
##gap> gamma:=UnitaryNonisotropicsGraph(3);;
##gap> GlobalParameters(gamma);
##[ [ 0, 0, 6 ], [ 1, 1, 4 ], [ 1, 1, 4 ], [ 3, 3, 0 ] ]
##      ]]>
##    </Example>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareConstructor( "UnitaryNonisotropicsGraphCons", [IsObject, IsInt]);
DeclareGlobalFunction( "UnitaryNonisotropicsGraph" );

#############################################################################
##
#E
