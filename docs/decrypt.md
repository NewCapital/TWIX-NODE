`twix-node decrypt`
==========================

It decrypts a yml file using the provided password. The source file can be a custom preset file, a preset.yml file or an addresses.yml.

The main use case of this command is to verify private keys in encrypted files after encrypting a custom preset or running a bootstrap command with a provided --password.

* [`twix-node decrypt`](#twix-node-decrypt)

## `twix-node decrypt`

It decrypts a yml file using the provided password. The source file can be a custom preset file, a preset.yml file or an addresses.yml.

```
USAGE
  $ twix-node decrypt

OPTIONS
  -h, --help                 It shows the help of this command.
  --destination=destination  (required) The destination decrypted file to create. The destination file must not exist.

  --password=password        The password to use to decrypt the source file into the destination file. Bootstrap prompts
                             for a password by default, can be provided in the command line (--password=XXXX) or
                             disabled in the command line (--noPassword).

  --source=source            (required) The source encrypted yml file to be decrypted.

DESCRIPTION
  The main use case of this command is to verify private keys in encrypted files after encrypting a custom preset or 
  running a bootstrap command with a provided --password.

EXAMPLES

  $ twix-node start --password 1234 --preset testnet --assembly dual --customPreset decrypted-custom-preset.yml 
  --detached
  $ twix-node decrypt --password 1234 --source target/addresses.yml --destination plain-addresses.yml
  $ twix-node decrypt --password 1234 --source encrypted-custom-preset.yml --destination plain-custom-preset.yml
  $ cat plain-addresses.yml
  $ cat plain-custom-preset.yml
  $ rm plain-addresses.yml
  $ rm plain-custom-preset.yml
        

  $ twix-node start --preset testnet --assembly dual --customPreset decrypted-custom-preset.yml --detached
  > password prompt
  $ twix-node decrypt --source target/addresses.yml --destination plain-addresses.yml
  > password prompt (enter the same password)
  $ twix-node decrypt --source encrypted-custom-preset.yml --destination plain-custom-preset.yml
  > password prompt (enter the same password)
  $ cat plain-addresses.yml
  $ cat plain-custom-preset.yml
  $ rm plain-addresses.yml
  $ rm plain-custom-preset.yml

  $ echo "$MY_ENV_VAR_PASSWORD" | twix-node decrypt --source target/addresses.yml --destination 
  plain-addresses.yml
```

_See code: [src/commands/decrypt.ts](https://github.com/NewCapital/TWIX-NODE/src/commands/decrypt.ts)_
