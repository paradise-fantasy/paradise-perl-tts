use Net::MQTT::Simple::SSL;

# Initialize MQTT
my $mqtt = Net::MQTT::Simple::SSL->new("nyx.bjornhaug.net", {
    SSL_ca_file   => 'ca.crt'
});

# Publish a test message
$mqtt->publish("paradise/notify/test" => "This is a test message");
