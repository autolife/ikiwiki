#!/usr/bin/perl
# Ikiwiki skeleton plugin. Replace "skeleton" with the name of your plugin
# in the lines below, remove hooks you don't use, and flesh out the code to
# make it do something.
package IkiWiki::Plugin::skeleton;

use warnings;
use strict;
use IkiWiki;

sub import { #{{{
	IkiWiki::hook(type => "checkconfig", id => "skeleton", 
		call => \&checkconfig);
	IkiWiki::hook(type => "preprocess", id => "skeleton", 
		call => \&preprocess);
	IkiWiki::hook(type => "filter", id => "skeleton", 
		call => \&filter);
	IkiWiki::hook(type => "delete", id => "skeleton", 
		call => \&delete);
	IkiWiki::hook(type => "render", id => "skeleton", 
		call => \&render);
	IkiWiki::hook(type => "cgi", id => "skeleton", 
		call => \&cgi);
} # }}}

sub checkconfig () { #{{{
	IkiWiki::debug("skeleton plugin checkconfig");
} #}}}

sub preprocess (@) { #{{{
	my %params=@_;

	return "skeleton plugin result";
} # }}}

sub filter ($) { #{{{
	my $content=shift;
	
	IkiWiki::debug("skeleton plugin running as filter");

	return $content;
} # }}}

sub delete (@) { #{{{
	my @files=@_;

	IkiWiki::debug("skeleton plugin told that files were deleted: @files");
} #}}}

sub render (@) { #{{{
	my @files=@_;

	IkiWiki::debug("skeleton plugin told that files were rendered: @files");
} #}}}

sub cgi ($) { #{{{
	my $cgi=shift;

	IkiWiki::debug("skeleton plugin running in cgi");
} #}}}

1
