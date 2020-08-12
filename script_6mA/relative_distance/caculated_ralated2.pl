#!/usr/bin/perl
#!/usr/bin/perl
use warnings;
use strict;
use POSIX qw(strftime);
print "start  time:";
print strftime("%Y-%m-%d %H:%M:%S\n", localtime(time));
my $dir = "/home/data4/pacbio/arabidopsis/6ma_666/relative_distance/";
# open(FILE,"$dir/lncRNA_6ma.bed") || die "can not open file\n";
# open(OUT,">$dir/lncRNA_related_distance.txt") || die "can not open out\n";
open(FILE,"$dir/protein_6ma.bed") || die "can not open file\n";
open(OUT,">$dir/protein_related_distance.txt") || die "can not open out\n";
my ($dis,$length,$re_dis)=(0,0,0);
while(<FILE>){
       chomp;
       my @line = split/\t/;

       if($line[3] eq "+"){
            $dis = $line[7] -$line[1];
       }
       else{
            $dis = $line[2] -$line[8];
       }
       $length = $line[2]-$line[1]+1;
       $re_dis = sprintf("%.3f",$dis/$length);
       #$re_dis = $dis/$length  ;
       print OUT "$line[4]\t$line[5]\t$line[8]\t$re_dis\n";
}

close FILE;
close OUT;


print "finish time:";
print strftime("%Y-%m-%d %H:%M:%S\n", localtime(time));
