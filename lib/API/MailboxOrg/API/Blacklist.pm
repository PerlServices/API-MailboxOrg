package API::MailboxOrg::API::Blacklist;

# ABSTRACT: MailboxOrg::API::Blacklist

# ---
# This class is auto-generated by bin/get_mailbox_api.pl
# ---

use v5.24;

use strict;
use warnings;

use Moo;
use Types::Standard qw(Enum Str Int InstanceOf ArrayRef);
use API::MailboxOrg::Types qw(HashRefRestricted Boolean);
use Params::ValidationCompiler qw(validation_for);

extends 'API::MailboxOrg::APIBase';

with 'MooX::Singleton';

use feature 'signatures';
no warnings 'experimental::signatures';

# VERSION

my %validators = (
    'add' => validation_for(
        params => {
            mail        => { type => Str, optional => 0 },
            add_address => { type => Str, optional => 0 },

        },
    ),
    'del' => validation_for(
        params => {
            mail           => { type => Str, optional => 0 },
            delete_address => { type => Str, optional => 0 },

        },
    ),
    'list' => validation_for(
        params => {
            mail => { type => Str, optional => 0 },

        },
    ),

);


sub add ($self, %params) {
    my $validator = $validators{'add'};
    %params       = $validator->(%params) if $validator;

    my %opt = (needs_auth => 1);

    return $self->_request( 'mail.blacklist.add', \%params, \%opt );
}

sub del ($self, %params) {
    my $validator = $validators{'del'};
    %params       = $validator->(%params) if $validator;

    my %opt = (needs_auth => 1);

    return $self->_request( 'mail.blacklist.del', \%params, \%opt );
}

sub list ($self, %params) {
    my $validator = $validators{'list'};
    %params       = $validator->(%params) if $validator;

    my %opt = (needs_auth => 1);

    return $self->_request( 'mail.blacklist.list', \%params, \%opt );
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



=head2 add

Adds an address to the blacklist

Available for admin, account, domain, mail

Parameters:

=over 4

=item * mail

=item * add_address

=back

returns: array

    $api->blacklist->add(%params);


=head2 del

Deletes an address from the blacklist

Available for admin, account, domain, mail

Parameters:

=over 4

=item * mail

=item * delete_address

=back

returns: array

    $api->blacklist->del(%params);


=head2 list

Lists all blacklist entries

Available for admin, account, domain, mail

Parameters:

=over 4

=item * mail

=back

returns: array

    $api->blacklist->list(%params);



