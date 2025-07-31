# Dotfiles
My dotfiles for Linux 

# For use
'''sh
cd Dotfiles
stow nvim # example 
'''

# To append to stow:
'''sh 
stow -d ~/Dotfiles -t ~ nvim 
'''

When the structure is following:
~/Dotfiles/
├── nvim/
│   └── .config/
│       └── nvim/
│           └── ... (your nvim files)
└── zellij/
    └── .config/
        └── zellij/
            └── ... (your zellij files)

