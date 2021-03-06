package ValidateFasta::Types;
use Moose;
use Moose::Util::TypeConstraints;
use ValidateFasta::Validate::Filename;
use ValidateFasta::Validate::FastaFile;
=head1 NAME

ValidateFasta::Types 

=head1 SYNOPSIS



=cut

subtype 'ValidateFasta::Filename::Name',
  as 'Str',
  where { ValidateFasta::Validate::Filename->new()->is_valid($_) };

subtype 'ValidateFasta::Fastaseq::File',
  as 'Str',
  where { ValidateFasta::Validate::FastaFile->new()->is_valid($_) };

__PACKAGE__->meta->make_immutable;

no Moose;

1;
