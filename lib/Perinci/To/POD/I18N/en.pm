package Perinci::To::POD::I18N::en;
use parent qw(Perinci::To::POD::I18N Perinci::To::PackageBase::I18N::en);

use Locale::Maketext::Lexicon::Gettext;
our %Lexicon = %{ Locale::Maketext::Lexicon::Gettext->parse(<DATA>) };

our $VERSION = '0.26'; # VERSION

#use Data::Dump; dd \%Lexicon;

1;
# ABSTRACT: English translation for Perinci::To::POD


=pod

=head1 NAME

Perinci::To::POD::I18N::en - English translation for Perinci::To::POD

=head1 VERSION

version 0.26

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

# function's special arguments

msgid  "Pass -reverse=>1 to reverse operation."
msgstr "Pass -reverse=>1 to reverse operation."

msgid  "To undo, pass -undo_action=>'undo' to function. You will also need to pass -undo_data, unless you use transaction. For more details on undo protocol, see L<Rinci::function::Undo>."
msgstr "To undo, pass -undo_action=>'undo' to function. You will also need to pass -undo_data, unless you use transaction. For more details on undo protocol, see L<Rinci::function::Undo>."

msgid  "Required if you want undo and you do not use transaction. For more details on undo protocol, see L<Rinci::function::Undo>."
msgstr "Required if you want undo and you do not use transaction. For more details on undo protocol, see L<Rinci::function::Undo>."

msgid  "Pass -dry_run=>1 to enable simulation mode."
msgstr "Pass -dry_run=>1 to enable simulation mode."

msgid  "Instance of transaction manager object, usually L<Perinci::Tx::Manager>. Usually you do not have to pass this yourself, L<Perinci::Access::InProcess> will do it for you. For more details on transactions, see L<Rinci::function::Transaction>."
msgstr "Instance of transaction manager object, usually L<Perinci::Tx::Manager>. Usually you do not have to pass this yourself, L<Perinci::Access::InProcess> will do it for you. For more details on transactions, see L<Rinci::function::Transaction>."

msgid  "You currently can set this to 'rollback'. Usually you do not have to pass this yourself, L<Perinci::Access::InProcess> will do it for you. For more details on transactions, see L<Rinci::function::Transaction>."
msgstr "You currently can set this to 'rollback'. Usually you do not have to pass this yourself, L<Perinci::Access::InProcess> will do it for you. For more details on transactions, see L<Rinci::function::Transaction>."


