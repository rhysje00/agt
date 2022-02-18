#############################################################################
##
#W  frmgrph.gd          Algebraic Graph Theory package         Janoš Vidali
##
##
#Y  Copyright (C) 2020
##
##  Declaration file for functions that construct forms graphs. 
##




# The bilinear forms graph H_q(d, e) of matrices over GF(r^2).
#############################################################################
##
#F  AdjFunGraph( <parms> )
##  
##  <#GAPDoc Label="BilinearFormsGraph">
##  <ManSection>
##  <Func Name="BilinearFormsGraph"
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

DeclareConstructor( "BilinearFormsGraphCons", [IsObject, IsInt, IsInt, IsInt]);
DeclareGlobalFunction( "BilinearFormsGraph" );

# The Hermitean forms graph Her(d, r) of Hermitean matrices over GF(r^2).
#############################################################################
##
#F  AdjFunGraph( <parms> )
##  
##  <#GAPDoc Label="HermiteanFormsGraph">
##  <ManSection>
##  <Func Name="HermiteanFormsGraph"
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

DeclareConstructor( "HermiteanFormsGraphCons", [IsObject, IsInt, IsInt]);
DeclareGlobalFunction( "HermiteanFormsGraph" );
