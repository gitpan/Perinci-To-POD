package Perinci::To::POD::I18N::en;
use parent qw(Perinci::To::POD::I18N Perinci::To::PackageBase::I18N::en);

use Locale::Maketext::Lexicon::Gettext;
our %Lexicon = %{ Locale::Maketext::Lexicon::Gettext->parse(<DATA>) };

our $VERSION = '0.37'; # VERSION

#use Data::Dump; dd \%Lexicon;

1;
# ABSTRACT: English translation for Perinci::To::POD

=pod

=encoding utf-8

=head1 NAME

Perinci::To::POD::I18N::en - English translation for Perinci::To::POD

=head1 VERSION

version 0.37

=head1 HOMEPAGE

Please visit the project's homepage at L<https://metacpan.org/release/Perinci-To-POD>.

=head1 SOURCE

Source repository is at L<https://github.com/sharyanto/perl-Perinci-To-POD>.

=head1 BUGS

Please report any bugs or feature requests on the bugtracker website
http://rt.cpan.org/Public/Dist/Display.html?Name=Perinci-To-POD

When submitting a bug or request, please include a test-file or a
patch to an existing test-file that illustrates the bug or desired
feature.

=head1 AUTHOR

Steven Haryanto <stevenharyanto@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Steven Haryanto.

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

# function's special arguments

msgid  "Pass -reverse=>1 to reverse operation."
msgstr "Pass -reverse=>1 to reverse operation."

msgid  "To undo, pass -undo_action=>'undo' to function. You will also need to pass -undo_data. For more details on undo protocol, see L<Rinci::Undo>."
msgstr "To undo, pass -undo_action=>'undo' to function. You will also need to pass -undo_data. For more details on undo protocol, see L<Rinci::Undo>."

msgid  "Required if you pass -undo_action=>'undo'. For more details on undo protocol, see L<Rinci::Undo>."
msgstr "Required if you pass -undo_action=>'undo'. For more details on undo protocol, see L<Rinci::Undo>."

msgid  "Pass -dry_run=>1 to enable simulation mode."
msgstr "Pass -dry_run=>1 to enable simulation mode."

msgid  "This function supports transactions."
msgstr "This function supports transactions."

msgid  "For more information on transaction, see L<Rinci::Transaction>."
msgstr "For more information on transaction, see L<Rinci::Transaction>."
