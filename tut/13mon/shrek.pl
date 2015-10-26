#!/usr/bin/perl -w

@words = split /\W+/, do { local $/; <> };
%count = ();
%order = ();

$i = 0;
for $word (@words) {
    $count{$word}++;
    if (!defined($order{$word})) {
        $order{$word} = $i;
    }
    $i++;
}

@sorted_count = sort { $count{$b} <=> $count{$a} } keys %count;

@most = ();
for $word (@sorted_count) {
    if ($count{$word} == $count{$sorted_count[0]}) {
        push(@most, $word);
    } else {
        last;
    }
}

@appearance = sort { $order{$a} <=> $order{$b} } @most;
print "@appearance\n";
