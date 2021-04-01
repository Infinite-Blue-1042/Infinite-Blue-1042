AC_INIT([boost-m4-test], [0.2], [tsunanet@gmail.com])
AC_CONFIG_AUX_DIR([build-aux])
AC_CONFIG_HEADERS([config.h])
AM_INIT_AUTOMAKE
AC_CANONICAL_HOST
AC_PROG_LIBTOOL
AC_PROG_GREP
AC_PROG_EGREP
AC_PROG_CXX
BOOST_REQUIRE([1.34])
BOOST_ARRAY
BOOST_DATE_TIME
AC_CONFIG_TESTDIR([tests])
AM_MISSING_PROG([AUTOM4TE], [autom4te])
AC_CONFIG_FILES([
  Makefile
    tests/Makefile
    tests/atlocal
    tests/package.m4
])
AC_OUTPUT
