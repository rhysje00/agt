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
DeclareGlobalFunction( "DesarguesianPlaneIncidenceGraph" );

# The incidence graph of a Hall plane.
DeclareGlobalFunction( "HallPlaneIncidenceGraph" );

# The incidence graph of a Hughes plane. If the second parameter n is zero or
# unspecified, a Dickson semifield of order q^2 is used and the first parameter
# q must be an odd prime power. Otherwise, an exceptional near-field of order
# q^2 is used, so q must be 5, 7, 11, 23, 29, or 59. As there are two
# exceptional near-fields of order 11^2, setting n to 1 or 2 chooses one of
# these semifields when q = 11.
DeclareGlobalFunction( "HughesPlaneIncidenceGraph" );

# The collinearity graph of the generalized quadrangle Q(d, q)
# of order (q, q^{d-3}).
DeclareGlobalFunction( "GeneralizedQuadrangleQ" );

# The collinearity graph of the generalized quadrangle H(d, r^2)
# of order (r^2, r^{d-5/2}).
DeclareGlobalFunction( "GeneralizedQuadrangleH" );

# The collinearity graph of the generalized quadrangle W(q) of order (q, q).
DeclareGlobalFunction( "GeneralizedQuadrangleW" );

# The collinearity graph of the generalized quadrangle T_d(O) of order
# (q, q^{d-1}) derived from the projective space PG(d+1, q) containing the
# oval or ovoid O in a hyperplane.
DeclareGlobalFunction( "GeneralizedQuadrangleT" );

# The collinearity graph of the generalized quadrangle T*(O) of order
# (2^h-1, 2^h+1) derived from the projective space PG(3, 2^h) containing the
# hyperoval O in a hyperplane.
DeclareGlobalFunction( "GeneralizedQuadrangleTstar" );

# The collinearity graph of the generalized quadrangle P(G, z) of
# order (s-1, s+1) derived by removing the neighbourhood of a regular point z
# of a generalized quadrangle G of order (s, s).
DeclareGlobalFunction( "GeneralizedQuadrangleP" );

# The collinearity graph of the generalized quadrangle AS(q)
# of order (q-1, q+1).
DeclareGlobalFunction( "GeneralizedQuadrangleAS" );

# The incidence graph of a projective plane read from a file as on
#   http://www.uwyo.edu/moorhouse/pub/planes/       or
#   http://www.uwyo.edu/moorhouse/pub/genpoly/
# The optional second parameter is a file containing generators of the
# automorphism group.
DeclareGlobalFunction( "IncidenceGraphFromFile" );

# The collinearity graph of a projective plane read from a file as on
#   http://www.uwyo.edu/moorhouse/pub/genpoly/
# The optional second parameter is a file containing generators of the
# automorphism group.
DeclareGlobalFunction( "CollinearityGraphFromFile" );
