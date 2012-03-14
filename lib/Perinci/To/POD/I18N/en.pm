package Perinci::To::POD::I18N::en;
use parent qw(Perinci::To::POD::I18N Perinci::To::PackageBase::I18N::en);

use Locale::Maketext::Lexicon::Gettext;
our %Lexicon = %{ Locale::Maketext::Lexicon::Gettext->parse(<DATA>) };

our $VERSION = '0.22'; # VERSION

#use Data::Dump; dd \%Lexicon;

1;
# ABSTRACT: English translation for Perinci::To::POD


=pod

=head1 NAME

Perinci::To::POD::I18N::en - English translation for Perinci::To::POD

=head1 VERSION

version 0.22

=head1 AUTHOR

Steven Haryanto <stevenharyanto@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Steven Haryanto.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__DATA__

msgid  "This module has L<Rinci> metadata"
msgstr "This module has L<Rinci> metadata"

msgid  "No arguments"
msgstr "No arguments"

# function

msgid  "None are exported by default, but they are exportable."
msgstr "None are exported by default, but they are exportable."
