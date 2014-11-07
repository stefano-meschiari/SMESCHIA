# Stefano's Miraculous Emacs Starter Customization for HIgh-strung Astronomers

To install:

(1) Checkout the package with `git clone
https://github.com/stefano-meschiari/SMESCHIA.git`, or use the handy
"Download ZIP" button on the right hand sidebar.

(2) Backup and erase any pre-existing Emacs customization you might
have (that would be `~/.emacs` and/or `~/.emacs.d`)

(3) Copy the `.emacs.d` to your home directory `~`.

(4) Download the most recent version of Emacs from
http://emacsformacosx.com.

(5) Enjoy!

## Using emacs from the command line ##
Add this to your ~/.bash_profile or ~/.bashrc:

    alias emacsclient=/Applications/Emacs.app/Contents/MacOS/bin/emacsclient
    
    function emacs_open {
        open -a Emacs

        while [ `emacsclient -n $1 2>&1 | grep socket | wc -l` -gt 0 ]; do
            sleep 1
        done
    }
    export EDITOR=emacs_wait
    alias emacs=emacs_open

