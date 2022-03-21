[![Kwalitee status](https://cpants.cpanauthors.org/dist/API-MailboxOrg.png)](https://cpants.cpanauthors.org/dist/API-MailboxOrg)
[![GitHub issues](https://img.shields.io/github/issues/perlservices/API-MailboxOrg.svg)](https://github.com/perlservices/API-MailboxOrg/issues)
[![CPAN Cover Status](https://cpancoverbadge.perl-services.de/API-MailboxOrg-1.0.2)](https://cpancoverbadge.perl-services.de/API-MailboxOrg-1.0.2)
[![Cpan license](https://img.shields.io/cpan/l/API-MailboxOrg.svg)](https://metacpan.org/release/API-MailboxOrg)

# NAME

API::MailboxOrg - Perl library to work with the API for the Mailbox.org API

# VERSION

version 1.0.2

# SYNOPSIS

```perl
use API::MailboxOrg;
use Data::Printer;

my $api = API::MailboxOrg->new(
    user     => 'test_name@example.tld',
    password => 'test1234567789',
);

my $all_videochats = $api->videochat->list(
    mail => 'test_name@example.tld',
);
p $all_videochats;
```

# INFO

This is still pretty alpha. The API of this distribution might change.

# ATTRIBUTES

- base\_uri

    _(optional)_ Default: `/v1`

- client 

    _(optional)_ A `Mojo::UserAgent` compatible user agent. By default a new object of `Mojo::UserAgent`
    is created.

- host

    _(optional)_ This is the URL to Mailbox.org API. Defaults to `https://api.mailbox.org`

- token

    After authenticating, this will be the auth id.

# METHODS

- account
- backup
- base
- blacklist
- capabilities
- context
- domain
- hello
- invoice
- mail
- mailinglist
- password
- passwordreset
- spamprotect
- test
- user
- utils
- validate
- videochat

# MORE INFOS

The Mailbox.org API documentation is available at [https://api.mailbox.org/v1/doc/methods/index.html](https://api.mailbox.org/v1/doc/methods/index.html).



# Development

The distribution is contained in a Git repository, so simply clone the
repository

```
$ git clone git://github.com/perlservices/API-MailboxOrg.git
```

and change into the newly-created directory.

```
$ cd API-MailboxOrg
```

The project uses [`Dist::Zilla`](https://metacpan.org/pod/Dist::Zilla) to
build the distribution, hence this will need to be installed before
continuing:

```
$ cpanm Dist::Zilla
```

To install the required prequisite packages, run the following set of
commands:

```
$ dzil authordeps --missing | cpanm
$ dzil listdeps --author --missing | cpanm
```

The distribution can be tested like so:

```
$ dzil test
```

To run the full set of tests (including author and release-process tests),
add the `--author` and `--release` options:

```
$ dzil test --author --release
```

# AUTHOR

Renee Baecker <reneeb@cpan.org>

# COPYRIGHT AND LICENSE

This software is Copyright (c) 2022 by Renee Baecker.

This is free software, licensed under:

```
The Artistic License 2.0 (GPL Compatible)
```
