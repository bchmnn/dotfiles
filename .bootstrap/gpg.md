# Export
```console
gpg --output public.pgp --armor --export user@email
gpg --output private.pgp --armor --export-secret-key user@email
```

# Import
```console
gpg --import public.pgp
gpg --import private.pgp
```
