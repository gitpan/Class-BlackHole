# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl test.pl'
# Time-stamp: "1999-05-13 10:51:58 MDT"
######################### We start with some black magic to print on failure.

# Change 1..1 below to 1..last_test_to_print .
# (It may become useful if the test is moved to ./t subdirectory.)

BEGIN { $| = 1; print "1..3\n"; }
END {print "not ok 1\n" unless $loaded;}
use Class::BlackHole;
$loaded = 1;
print "ok 1\n";


sub Test123::foo { return 456 }
@Test123::ISA = ('Class::BlackHole');

print( (Test123->foo == 456) ? "ok 2\n" : "fail 2!\n");
print( defined(Test123->fneh) ? "fail 3!\n" : "ok 3\n");

