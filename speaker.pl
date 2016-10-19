# Several examples can be found in the example directory included with the
# tarball for this module.
use strict;
use warnings;
use PerlSpeak;
use Net::MQTT::Simple::SSL;

my $ps = PerlSpeak->new();

# Set properties
$ps->{tts_engine} = "festival"; # or cepstrel

my $mqtt = Net::MQTT::Simple::SSL->new("nyx.bjornhaug.net", {
    SSL_ca_file   => 'ca.crt'
});

$mqtt->run(
  "paradise/notify" => sub {
    my ($topic, $message) = @_;
    $ps->say("$message");
  }
);
