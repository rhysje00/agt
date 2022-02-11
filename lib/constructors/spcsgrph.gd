#############################################################################
##
#W  spcsgrph.gd          Algebraic Graph Theory package         Janoš Vidali
##
##
#Y  Copyright (C) 2020
##
##  Declaration file for functions that construct subspace graphs. 
##

# The Grassmann graph J_q(n, d) of d-dimensional subspaces of F_q^n.
DeclareGlobalFunction( "GrassmannGraph" );

# The doubled Grassmann graph 2J_q(2d+1, d) of d- and (d+1)-dimensional
# subspaces of F_q^{2d+1}.
DeclareGlobalFunction( "DoubledGrassmannGraph" );

# The twisted Grassmann graph TG_d(q) of (d+1)-dimensional subspaces of
# F_q^{2d+1} which are not subspaces of a hyperplane H, and (d-1)-dimensional
# subspaces of H.
DeclareGlobalFunction( "TwistedGrassmannGraph" );

# The polar graph O^{(+/-)}(d, q) of isotropic lines of F_q^d
# with respect to a nondegenerate quadratic form.
DeclareGlobalFunction( "PolarGraphO" );

# The polar graph NO^{+/-}orth(d, q) of nonisotropic lines of F_q^d
# with respect to a nondegenerate quadratic form.
DeclareGlobalFunction( "PolarGraphNOorth" );

# The polar graph Sp(d, q) of isotropic lines of F_q^d
# with respect to a nondegenerate symplectic form.
DeclareGlobalFunction( "PolarGraphSp" );

# The polar graph U(d, r) of isotropic lines of F_{r^2}^d
# with respect to a nondegenerate Hermitean form.
DeclareGlobalFunction( "PolarGraphU" );

# The dual polar graph B_d(q) of isotropic d-dimensional subspaces of
# F_q^{2d+1} with respect to a nondegenerate quadratic form.
DeclareGlobalFunction( "DualPolarGraphB" );

# The dual polar graph C_d(q) of isotropic d-dimensional subspaces of
# F_q^{2d} with respect to a nondegenerate symplectic form.
DeclareGlobalFunction( "DualPolarGraphC" );

# The dual polar graph D_d(q) of isotropic d-dimensional subspaces of
# F_q^{2d} with respect to a nondegenerate quadratic form of Witt index d.
DeclareGlobalFunction( "DualPolarGraphD" );

# The dual polar graph ^2D_{d+1}(q) of isotropic d-dimensional subspaces of
# F_q^{2d+2} with respect to a nondegenerate quadratic form of Witt index d.
DeclareGlobalFunction( "DualPolarGraph2D" );

# The dual polar graph ^2A_{e-1}(r) of isotropic [e/2]-dimensional
# subspaces of F_{r^2}^e with respect to a nondegenerate Hermitean form.
DeclareGlobalFunction( "DualPolarGraph2A" );

# The Doro graph of nonisotropic 1-dimensional subspaces of F_q^4 with respect
# to a nondegenerate quadratic form. It is distance-regular for q = 4, 5.
DeclareGlobalFunction( "DoroGraph" );

# The unitary nonisotropics graph of 1-dimensional subspaces of F_(r^2)^3 with
# respect to a nondegenerate sesquilinear form.
DeclareGlobalFunction( "UnitaryNonisotropicsGraph" );