package Perinci::To::POD;

use 5.010001;
use Log::Any '$log';
use Moo;

extends 'Perinci::To::PackageBase';

our $VERSION = '0.35'; # VERSION

sub BUILD {
    my ($self, $args) = @_;
}

sub _md2pod {
    require Markdown::Pod;

    my ($self, $md) = @_;
    state $m2p = Markdown::Pod->new;
    $m2p->markdown_to_pod(markdown => $md);
}

sub gen_doc_section_summary {
    my ($self) = @_;

    $self->SUPER::gen_doc_section_summary;
    my $res = $self->{_doc_res};

    my $name_summary = join(
        "",
        $res->{name} // "",
        ($res->{name} && $res->{summary} ? ' - ' : ''),
        $res->{summary} // ""
    );

    $self->add_doc_lines(
        "=head1 " . uc($self->loc("Name")),
        "",
        $name_summary,
        "",
    );
}

sub gen_doc_section_version {
    my ($self) = @_;

    $self->add_doc_lines(
        "=head1 " . uc($self->loc("Version")),
        "",
        $self->{_doc_meta}{entity_v} // '?',
        "",
    );
}

sub gen_doc_section_description {
    my ($self) = @_;

    $self->add_doc_lines(
        "=head1 " . uc($self->loc("Description")),
        ""
    );

    $self->SUPER::gen_doc_section_description;
    my $res = $self->{_doc_res};

    if ($res->{description}) {
        $self->add_doc_lines(
            $self->_md2pod($res->{description}),
            "",
        );
    }

    #$self->add_doc_lines(
    #    $self->loc("This module has L<Rinci> metadata") . ".",
    #    "",
    #);
}

sub gen_doc_section_functions {
    require Perinci::Sub::To::POD;

    my ($self) = @_;
    my $res = $self->{_doc_res};

    $self->{_doc_fgen} //= Perinci::Sub::To::POD->new(
        _pa => $self->_pa, # to avoid multiple instances of pa objects
    );

    $self->add_doc_lines(
        "=head1 " . uc($self->loc("Functions")),
        "",
    );

    $self->SUPER::gen_doc_section_functions;

    # XXX if module uses Perinci::Exporter, show a basic usage for importing and
    # show exportability information

    # XXX categorize functions based on tags?
    for my $furi (sort keys %{ $res->{functions} }) {
        my $fname;
        for ($fname) { $_ = $furi; s!.+/!! }
        for (@{ $res->{functions}{$furi} }) {
            chomp;
            $self->add_doc_lines($_);
        }
    }
}

1;
# ABSTRACT: Generate POD documentation for a package from Rinci metadata

__END__

=pod

=encoding utf-8

=head1 NAME

Perinci::To::POD - Generate POD documentation for a package from Rinci metadata

=head1 VERSION

version 0.35

=head1 SYNOPSIS

You can use the included L<peri-pkg-doc> script, or:

 use Perinci::To::POD;
 my $doc = Perinci::To::POD->new(url => "/Some/Module/");
 say $doc->gen_doc;

To generate documentation for a single function, see L<Perinci::Sub::To::POD>
or the provided command-line script L<peri-func-doc>.

To generate a usage-like help message for a single function, you can try
the L<peri-func-usage> from the L<Perinci::CmdLine> distribution.

=for Pod::Coverage .+

=head1 AUTHOR

Steven Haryanto <stevenharyanto@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Steven Haryanto.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut