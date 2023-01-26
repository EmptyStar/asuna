This Python script is intended for use with localized Minetest mods, ie, mods that contain translatable strings of the form ``S("This string can be translated")``. It extracts the strings from the mod's source code and updates the localization files accordingly.

Place it in the root directory of a mod and run it, and it will update the ``template.txt`` and any ``*.tr`` files present in that mod's ``/locale`` folder. If the ``/locale`` folder or ``template.txt`` file don't exist yet they will be created.

This script will also work in the root directory of a modpack. It will run on each mod inside the modpack in that situation.

It has the following command line options:

```
i18n.py [OPTIONS] [PATHS...]

--help, -h: prints this help message
--recursive, -r: run on all subfolders of paths given
--mods, -m: run on locally installed modules
--no-old-file, -O: do not create *.old files
--sort, -s: sort output strings alphabetically
--break-long-lines, -b: add extra line-breaks before and after long strings
--print-source, -p: add comments denoting the source file
--verbose, -v: add output information
--truncate-unused, -t: delete unused strings from files
```

The script will preserve any comments in an existing ``template.txt`` or the various ``*.tr`` files, associating them with the line that follows them. So for example:

```
# This comment pertains to Some Text
Some text=

# Multi-line comments
# are also supported
Text as well=
```

Note that whenever the translation files are regenerated the translation lines will be grouped by source lua filename and sorted alphabetically, so don't bother manually organizing the order of the lines in the file yourself.

If the mod's source changes in such a way that a line with an existing translation or comment is no longer present, the unused line will be moved to the bottom of the translation file under the header:

```
##### not used anymore #####
```

This allows for old translations and comments to be reused with new lines where appropriate. This script doesn't attempt "fuzzy" matching of old strings to new, so even a single change of punctuation or spelling will put strings into the "not used anymore" section and require manual reassociation with the new string.

## bash autocompletion

When running on linux to install bash_completion for i18n, you can run

```
mkdir -p ${XDG_DATA_HOME:-$HOME/.local/share}/bash-completion/completions
ln -s $PWD/bash-completion/completions/i18n ${XDG_DATA_HOME:-$HOME/.local/share}/bash-completion/completions/i18n.py
```

This will provide bash autocompletion for this script (you have to run it without using `python3 i18n` command, use `./i18n.py` instead (or `i18n.py` if provided by `$PATH`)).
