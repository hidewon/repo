#!/usr/bin/perl
use strict;
use Data::Dumper;

my $data_dir="./nthdigit/";
my $answer_f="answer.txt";
my $samplein_f="sample.in.txt";
my $sampleout_f="sample.out.txt";
my $testdata_f="testdata.in.txt";

my %q_num=&q_num();
#print Dumper(%q_num);
#exit;
my $n=1;
for(my $i=1;$i>=1;$i++) {
#for(my $i=1;$i<=999999999999999;$i++) {
#for(my $i=0;$i<=3333333333;$i++) {
    for(my $j=0;$j<length($i);$j++) {
        my $k=substr($i,$j,1);
        if(defined($q_num{$n})) {
            print $n."\t".$k."\t".time."\n";
            # last.
            exit if($n==3333333333);
        }
        $n++;
    }
#    print "\n";
#    print $i."\n";
}
sub q_num {
    my %q_nums;
    if(open(Q,"$data_dir$testdata_f")) {
        map{chomp;$q_nums{$_}++} <Q>;
        close(Q);
    }
    return %q_nums;
}
