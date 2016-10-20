# paradise-perl-tts
Perl scripts you can use to listen to a MQTT topic and have the message spoken through your audio output. These are provided merely as examples on how to use Perl for MQTT and TTS (text-to-speech).

__Note:__ It may be tricky to install packages with Perl, but this was done in a few hours by someone that had never touched Perl before. It's doable for anyone, but you may run into trouble. Be sure to check a Perl tutorial and docs on CPAN etc. if you get stuck.

### Requirements
1. Install Perl (e.g. ActivePerl)
2. Install `cpanm` with `cpan App::cpanm`.
3. Use `cpanm` to install the required packages with `cpanm [package name]` (e.g. `cpanm PerlSpeak`)

Required packages:
- PerlSpeak
- Net::MQTT::Simple
- IO::Socket::SSL (for SSL only, I guess)

### Usage
Simple enough:
```
perl speaker.pl
perl test-publisher.pl
```

### About PerlSpeak and festival
In order for PerlSpeak to work, you may need to install [festival](http://www.cstr.ed.ac.uk/projects/festival/), which is an open-source Speech Synthesis System. I guess you may also be able to find another "tts-engine" compatible with PerlSpeak, however I haven't looked into it.

Search for "install festival" in order to find out how to install on your OS. There are many voices that may be installed with festival, it's all out there. There are other TTS libraries for Perl than PerlSpeak, you may want to consider using a different one if you do not like any of the festival voices, or are unable to install it/another compatible one.

### About SSL
This example uses SSL and requires a certificate in order to work `ca.crt`. Note that you can easily do this without SSL by using the `Net::MQTT::Simple` module instead of `Net::MQTT::Simple::SSL`.
