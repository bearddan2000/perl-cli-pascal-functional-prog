#!/usr/bin/env perl

sub row {
  my ($k, $i, $c, $output) = @_;
  return $output if ($k > $i);
  $output .= sprintf "%d, ", $c;
  $a = $c * ($i-$k)/($k+1);
  return &row($k+1, $i, $a, $output);
}
sub col {
  my ($i, $n, $output) = @_;
  return $output if ($i > $n);
  $output .= sprintf "%s\n", &row(0, $i, 1, "");
  return &col($i+1, $n, $output);
}
# Driver Program to test above function
sub main
{
    my $input = 20;
    printf("[INPUT] %d\n", $input);
    my $output = &col(0, $input, "");
    print "[OUTPUT] \n";
    print $output;
}
&main;
