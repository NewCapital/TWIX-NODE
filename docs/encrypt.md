`twix-node encrypt`
==========================

It encrypts a yml file using the provided password. The source files would be a custom preset file, a preset.yml file or an addresses.yml.

The main use case of this command is encrypting custom presets files. If your custom preset contains private keys, it's highly recommended to encrypt it and use provide --password when starting or configuring the node with Bootstrap.

* [`twix-node encrypt`](#twix-node-encrypt)

## `twix-node encrypt`

It encrypts a yml file using the provided password. The source files would be a custom preset file, a preset.yml file or an addresses.yml.

```
USAGE
  $ twix-node encrypt

OPTIONS
  -h, --help                 It shows the help of this command.
  --destination=destination  (required) The destination encrypted file to create. The destination file must not exist.

  --password=password        The password to use to encrypt the source file into the destination file. Bootstrap prompts
                             for a password by default, can be provided in the command line (--password=XXXX) or
                             disabled in the command line (--noPassword).

  --source=source            (required) The source plain yml file to be encrypted. If this file is encrypted, the
                             command will raise an error.

DESCRIPTION
  The main use case of this command is encrypting custom presets files. If your custom preset contains private keys, 
  it's highly recommended to encrypt it and use provide --password when starting or configuring the node with Bootstrap.

EXAMPLES

  $ twix-node encrypt --source plain-custom-preset.yml --destination encrypted-custom-preset.yml
  > password prompt
  $ twix-node start --preset testnet --assembly dual --customPreset encrypted-custom-preset.yml
  > password prompt (enter the same password)
        

  $ twix-node encrypt --password 1234 --source plain-custom-preset.yml --destination encrypted-custom-preset.yml
  $ twix-node start --password 1234 --preset testnet --assembly dual --customPreset encrypted-custom-preset.yml


    $ echo "$MY_ENV_VAR_PASSWORD" | twix-node encrypt --source plain-custom-preset.yml --destination 
  encrypted-custom-preset.yml
```

_See code: [src/commands/encrypt.ts](https://github.com/NewCapital/TWIX-NODE/src/commands/encrypt.ts)_
