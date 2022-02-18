#############################################################################
##
#W  codegrph.gd          Algebraic Graph Theory package         Janoš Vidali
##
##
#Y  Copyright (C) 2020
##
##  Declaration file for functions that construct code graphs. 
##


# De Caen, Mathon and Moorhouse's Preparata graph Pr(t, e)
#############################################################################
##
#F  AdjFunGraph( <parms> )
##  
##  <#GAPDoc Label="PreparataGraph">
##  <ManSection>
##  <Func Name="PreparataGraph"
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

DeclareConstructor( "PreparataGraphCons", [IsObject, IsInt, IsInt]);
DeclareGlobalFunction( "PreparataGraph" );

# The coset graph of a Kasami code over an odd power extension
# of a binary field.
#############################################################################
##
#F  AdjFunGraph( <parms> )
##  
##  <#GAPDoc Label="KasamiGraph">
##  <ManSection>
##  <Func Name="KasamiGraph"
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

DeclareGlobalFunction( "KasamiGraph" );

# The coset graph of an extended Kasami code over an odd power extension
# of a binary field.
#############################################################################
##
#F  AdjFunGraph( <parms> )
##  
##  <#GAPDoc Label="ExtendedKasamiGraph">
##  <ManSection>
##  <Func Name="ExtendedKasamiGraph"
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

DeclareGlobalFunction( "ExtendedKasamiGraph" );

# The coset graph of a Kasami code over a quadratic extension
# of a binary field.
#############################################################################
##
#F  AdjFunGraph( <parms> )
##  
##  <#GAPDoc Label="QuadraticKasamiGraph">
##  <ManSection>
##  <Func Name="QuadraticKasamiGraph"
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

DeclareGlobalFunction( "QuadraticKasamiGraph" );

# The coset graph of an extended Kasami code over a quadratic extension
# of a binary field.
#############################################################################
##
#F  AdjFunGraph( <parms> )
##  
##  <#GAPDoc Label="ExtendedQuadraticKasamiGraph">
##  <ManSection>
##  <Func Name="ExtendedQuadraticKasamiGraph"
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

DeclareGlobalFunction( "ExtendedQuadraticKasamiGraph" );
