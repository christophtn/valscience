#!/usr/bin/env perl

use strict;
use utf8;

my $fname= $ARGV[0];

my $python = "$fname.py";

print "$python exists ... ABORT !\n" if -e $python;

my $code = <<"END_CODE";
#!/usr/bin/env python
# ValScience 2017
#

import codecs
import sys
reload(sys)
sys.setdefaultencoding('utf8')

def main(argv):
\t
\timport argparse
\t
\tpass



if __name__ == '__main__':
\tsys.exit(main(sys.argv[1:]))

END_CODE

open PCODE, ">$python" or die "cannot open $python ... ABORT!";
print PCODE "$code";
close PCODE;

system("chmod u+x $python");

