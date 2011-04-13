# Dan Pilone's Emacs customizations
This project contains a copy of the customizations I use for emacs.
For a basic emacs install I install Emacs or Aquamacs then install the
emacs starter kit:

    git clone https://github.com/technomancy/emacs-starter-kit.git ~/.emacs.d

Followed by my customizations:

    git clone https://github.com/dpilone/e84dan-emacs.git ~/.emacs.d/e84dan-emacs

Then load my customizations with the following in ~/.emacs.d/custom.el:

    ;; Load my real customizations
    (load "e84dan-emacs/e84dan")

Once emacs is up, drop in the awesome:

    ;; Install yasnippet
    M-x package-install => yasnippet-bundle

    ;; Install rinari
    M-X package-install => rinari
