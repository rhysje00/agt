#############################################################################
##
#W  geogrph.gd          Algebraic Graph Theory package         Janoš Vidali
##
##
#Y  Copyright (C) 2020
##
##  Declaration file for functions that construct geometry graphs. 
##


# The incidence graph of a Desarguesian projective plane.
#############################################################################
##
#F  AdjFunGraph( <parms> )
##  
##  <#GAPDoc Label="DesarguesianPlaneIncidenceGraph">
##  <ManSection>
##  <Func Name="DesarguesianPlaneIncidenceGraph"
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

DeclareGlobalFunction( "DesarguesianPlaneIncidenceGraph" );

# The incidence graph of a Hall plane.
#############################################################################
##
#F  AdjFunGraph( <parms> )
##  
##  <#GAPDoc Label="HallPlaneIncidenceGraph">
##  <ManSection>
##  <Func Name="HallPlaneIncidenceGraph"
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

DeclareGlobalFunction( "HallPlaneIncidenceGraph" );

# The incidence graph of a Hughes plane. If the second parameter n is zero or
# unspecified, a Dickson semifield of order q^2 is used and the first parameter
# q must be an odd prime power. Otherwise, an exceptional near-field of order
# q^2 is used, so q must be 5, 7, 11, 23, 29, or 59. As there are two
# exceptional near-fields of order 11^2, setting n to 1 or 2 chooses one of
# these semifields when q = 11.
#############################################################################
##
#F  AdjFunGraph( <parms> )
##  
##  <#GAPDoc Label="HughesPlaneIncidenceGraph">
##  <ManSection>
##  <Func Name="HughesPlaneIncidenceGraph"
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

DeclareGlobalFunction( "HughesPlaneIncidenceGraph" );

# The collinearity graph of the generalized quadrangle Q(d, q)
# of order (q, q^{d-3}).
#############################################################################
##
#F  AdjFunGraph( <parms> )
##  
##  <#GAPDoc Label="GeneralizedQuadrangleQ">
##  <ManSection>
##  <Func Name="GeneralizedQuadrangleQ"
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

DeclareGlobalFunction( "GeneralizedQuadrangleQ" );

# The collinearity graph of the generalized quadrangle H(d, r^2)
# of order (r^2, r^{d-5/2}).
#############################################################################
##
#F  AdjFunGraph( <parms> )
##  
##  <#GAPDoc Label="GeneralizedQuadrangleH">
##  <ManSection>
##  <Func Name="GeneralizedQuadrangleH"
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

DeclareGlobalFunction( "GeneralizedQuadrangleH" );

# The collinearity graph of the generalized quadrangle W(q) of order (q, q).
#############################################################################
##
#F  AdjFunGraph( <parms> )
##  
##  <#GAPDoc Label="GeneralizedQuadrangleW">
##  <ManSection>
##  <Func Name="GeneralizedQuadrangleW"
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

DeclareGlobalFunction( "GeneralizedQuadrangleW" );

# The collinearity graph of the generalized quadrangle T_d(O) of order
# (q, q^{d-1}) derived from the projective space PG(d+1, q) containing the
# oval or ovoid O in a hyperplane.
#############################################################################
##
#F  AdjFunGraph( <parms> )
##  
##  <#GAPDoc Label="GeneralizedQuadrangleT">
##  <ManSection>
##  <Func Name="GeneralizedQuadrangleT"
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

DeclareGlobalFunction( "GeneralizedQuadrangleT" );

# The collinearity graph of the generalized quadrangle T*(O) of order
# (2^h-1, 2^h+1) derived from the projective space PG(3, 2^h) containing the
# hyperoval O in a hyperplane.
#############################################################################
##
#F  AdjFunGraph( <parms> )
##  
##  <#GAPDoc Label="GeneralizedQuadrangleTstar">
##  <ManSection>
##  <Func Name="GeneralizedQuadrangleTstar"
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

DeclareGlobalFunction( "GeneralizedQuadrangleTstar" );

# The collinearity graph of the generalized quadrangle P(G, z) of
# order (s-1, s+1) derived by removing the neighbourhood of a regular point z
# of a generalized quadrangle G of order (s, s).
#############################################################################
##
#F  AdjFunGraph( <parms> )
##  
##  <#GAPDoc Label="GeneralizedQuadrangleP">
##  <ManSection>
##  <Func Name="GeneralizedQuadrangleP"
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

DeclareGlobalFunction( "GeneralizedQuadrangleP" );

# The collinearity graph of the generalized quadrangle AS(q)
# of order (q-1, q+1).
#############################################################################
##
#F  AdjFunGraph( <parms> )
##  
##  <#GAPDoc Label="GeneralizedQuadrangleAS">
##  <ManSection>
##  <Func Name="GeneralizedQuadrangleAS"
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

DeclareGlobalFunction( "GeneralizedQuadrangleAS" );

# The incidence graph of a projective plane read from a file as on
#   http://www.uwyo.edu/moorhouse/pub/planes/       or
#   http://www.uwyo.edu/moorhouse/pub/genpoly/
# The optional second parameter is a file containing generators of the
# automorphism group.
#############################################################################
##
#F  AdjFunGraph( <parms> )
##  
##  <#GAPDoc Label="IncidenceGraphFromFile">
##  <ManSection>
##  <Func Name="IncidenceGraphFromFile"
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

DeclareGlobalFunction( "IncidenceGraphFromFile" );

# The collinearity graph of a projective plane read from a file as on
#   http://www.uwyo.edu/moorhouse/pub/genpoly/
# The optional second parameter is a file containing generators of the
# automorphism group.
#############################################################################
##
#F  AdjFunGraph( <parms> )
##  
##  <#GAPDoc Label="ColinearityGraphFromFile">
##  <ManSection>
##  <Func Name="ColinearityGraphFromFile"
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

DeclareGlobalFunction( "CollinearityGraphFromFile" );
