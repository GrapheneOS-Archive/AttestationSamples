This repository contains sample Android key attestation certificate chains in
directories named after the `ro.product.model` value for the devices where they
were generated.

Each of these is a valid certificate chain up to the key attestation root. The
devices are running the stock OS with the bootloader locked and verified boot
enforcing integrity, which can be confirmed from the [metadata in the initial
attestation
certificate](https://developer.android.com/training/articles/security-key-attestation.html#certificate_schema).

The challenge string is set to `sample` (UTF-8 encoded) rather than the usual
random challenge. These are collected with [Copperhead's Auditor
app](https://github.com/copperhead/Auditor) so the app id in the certificate is
co.copperhead.attestation and the fingerprint is for the release signing key.
