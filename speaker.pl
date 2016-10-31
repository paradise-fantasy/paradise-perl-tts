use strict;
use warnings;
use PerlSpeak;
use Net::MQTT::Simple::SSL;

# Initialize PerlSpeak
my $ps = PerlSpeak->new();
$ps->{tts_engine} = "festival"; # or cepstrel

# Initialize MQTT
my $mqtt = Net::MQTT::Simple::SSL->new("nyx.bjornhaug.net", {
    SSL_ca_file   => 'ca.crt'
});

# Listen to topic: paradise/notify/#
$mqtt->run(
  "paradise/notify/tts" => sub {
    my ($topic, $message) = @_;
    $ps->say("$message");
  }
);
