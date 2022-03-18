package API::MailboxOrg::API::Base;

# ABSTRACT: MailboxOrg::API::Base

# ---
# This class is auto-generated by bin/get_mailbox_api.pl
# ---

use v5.24;

use strict;
use warnings;

use Moo;
use Types::Standard qw(Enum Str Int);
use Params::ValidationCompiler qw(validation_for);

extends 'API::MailboxOrg::APIBase';

with 'MooX::Singleton';

use feature 'signatures';
no warnings 'experimental::signatures';

# VERSION

my %validators = (
    'auth' => validation_for(
        params => {
            user => { type => Str, optional => 0 },
            pass => { type => Str, optional => 0 },

        },
    ),
    'search' => validation_for(
        params => {
            query => { type => Str, optional => 0 },

        },
    ),

);


sub auth ($self, %params) {
    my $validator = $validators{'auth'};
    %params       = $validator->(%params) if $validator;

    my %opt = ();

    return $self->_request( 'auth', \%params, \%opt );
}

sub deauth ($self, %params) {
    my $validator = $validators{'deauth'};
    %params       = $validator->(%params) if $validator;

    my %opt = ();

    return $self->_request( 'deauth', \%params, \%opt );
}

sub search ($self, %params) {
    my $validator = $validators{'search'};
    %params       = $validator->(%params) if $validator;

    my %opt = ();

    return $self->_request( 'search', \%params, \%opt );
}


1;

__END__

=pod


=head1 SYNOPSIS

    use API::MailboxOrg;

    my $user     = '1234abc';
    my $password = '1234abc';

    my $api      = API::MailboxOrg->new(
        user     => $user,
        password => $password,
    );



=head1 METHODS



=head2 auth

Performs a login (Authentication)

Parameters:

=over 4

=item * user

=item * pass

=back

returns: array

    $api->base->auth(%params);


=head2 deauth

Performs a logout

returns: boolean

    $api->base->deauth(%params);


=head2 search

Searches in accounts, domains and e-mails

Parameters:

=over 4

=item * query

=back

returns: array

    $api->base->search(%params);


