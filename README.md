# Carnix

Carnix is a compiler from the `Cargo.lock` files produced by [`cargo`](https://rust-lang.org) to [Nix](https://nixos.org) expressions. While compiling, Carnix often needs to fetch complete packages to get the necessary information.

The expressions produced by Carnix include Rust features, which can be set from calls to the generated Nix code.

## Contributing

This project is hosted on https://nest.pijul.com, and versioned with [Pijul](https://pijul.org). If you create a patch, you can submit it by creating a discussion (say with number `#n`), and then pushing your patch to the discussion using `pijul push me@nest.pijul.com:pmeunier/carnix --to-branch :n`.

By contributing, you agree to make all your changes MIT/Apache-2.0, which is the license of Carnix.
