use Net::MQTT::Simple::SSL;

my $mqtt = Net::MQTT::Simple::SSL->new("nyx.bjornhaug.net", {
    SSL_ca_file   => 'ca.crt'
});

$mqtt->publish("paradise/notify/test" => "New message");
