use krate;

#[derive(Debug, Fail)]
pub enum CarnixError {
    #[fail(display = "Could not translate target")]
    CouldNotTranslateTarget,
    #[fail(display = "Prefetch returned nothing")]
    PrefetchReturnedNothing,
    #[fail(
        display = "Prefetching {} returned HTTP error 404. Did you forget to specify `--src`?",
        _0
    )]
    Prefetch404(krate::Crate),
    #[fail(display = "Prefetching {} failed", _0)]
    PrefetchFailed(krate::Crate),
    #[fail(display = "Cargo.lock could not be found")]
    NoCargoLock,
    #[fail(display = "nix-prefetch-git failed")]
    NixPrefetchGitFailed,
}
