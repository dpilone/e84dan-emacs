# Dan Pilone's Emacs customizations
This project contains a copy of the customizations I use for emacs.
For a basic emacs install I install Emacs or Aquamacs then install the
emacs starter kit:

    git clone https://github.com/eschulte/emacs-starter-kit.git ~/.emacs.d

Then the cucumber feature editing support:

    git clone https://github.com/michaelklishin/cucumber.el.git ~/.emacs.d/src/feature-mode

Then rspec editing support:

    git clone https://github.com/pezra/rspec-mode.git ~/.emacs.d/src/rspec-mode

Then coffeescript support:

    git clone git://github.com/defunkt/coffee-mode.git ~/.emacs.d/src/coffee-mode

Then textmate mimicing:

    git clone git://github.com/defunkt/textmate.el.git ~/.emacs.d/src/textmate

Then rvm support:

    git clone https://github.com/senny/rvm.el.git ~/.emacs.d/src/rvm

Then rinari (RoR) support:
     git clone https://github.com/eschulte/rinari.git ~/.emacs.d/src/rinari
     cd rinari/
     git submodule init
     git submodule update

Then cool git support:

     git clone https://github.com/tsgates/git-emacs.git ~/.emacs.d/src/git-emacs

Followed by my customizations:

    git clone https://github.com/dpilone/e84dan-emacs.git ~/.emacs.d/e84dan-emacs

Then load my customizations with the following in ~/.emacs.d/custom.el:

    ;; Load my real customizations
    (load "e84dan-emacs/e84dan")

Once emacs is up, drop in the awesome:

    ;; Install yasnippet
    M-X package-install => yasnippet-bundle
