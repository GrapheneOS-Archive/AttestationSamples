This repository contains sample Android key attestation certificate chains in
directories named after the `ro.product.model` value for the devices where they
were generated.

Each of these is a valid certificate chain up to the key attestation root. The
devices are running the stock OS with the bootloader locked and verified boot
enforcing integrity, which can be confirmed from the [metadata in the initial
attestation
certificate](https://developer.android.com/training/articles/security-key-attestation.html#certificate_schema).

The challenge string is set to `sample` (UTF-8 encoded) rather than the usual
random challenge. These are collected with the [Auditor
app](https://github.com/AndroidHardening/Auditor) so the app id in the
certificate is app.attestation.auditor and the fingerprint is for the release
signing key. Older samples use a legacy app id and signing key.

The collection of data published here is public domain / CC0 licensed and is
crowdsourced.

## Contributing

This project and the apps / services using it depend on data submissions being
made from a variety of Android devices.

To help out by contributing data, you'll need any Android device launched with
Android 8.0 or later. A device upgraded to Android 8.0 from an earlier version
isn't enough. Data submitted from devices running an aftermarket OS is okay but
we need at least one submission from a device variant where the device has the
stock OS and the bootloader locked. It's easy to tell if the device is running
the stock OS from the certificate chain so there's no harm in submissions where
the OS has been modified.

To submit data, install [the Auditor
app](https://github.com/AndroidHardening/Auditor/releases) (which is available free
for non-commercial usage on GitHub), press the menu button in the action bar
and press 'Submit sample data' which will submit a sample certificate chain and
system properties accessible to the app to https://attestation.app/.
The system properties will only be published in a heavily filtered form without
properties that aren't constant across devices of that model.
