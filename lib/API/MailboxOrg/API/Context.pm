package API::MailboxOrg::API::Context;

# ABSTRACT: MailboxOrg::API::Context

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
    'list' => validation_for(
        params => {
            account => { type => Str, optional => 0 },

        },
    ),

);


sub list ($self, %params) {
    my $validator = $validators{'list'};
    %params       = $validator->(%params) if $validator;

    my %opt = (needs_auth => 1);

    return $self->_request( 'context.list', \%params, \%opt );
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



=head2 list

Returns a list of Context-IDs and associated domains

Available for admin, reseller, account

Parameters:

=over 4

=item * account

=back

returns: array

    $api->context->list(%params);



