# kboff's Dotfiles

Personal configuration files for various tools and applications.
These dotfiles are managed by stow.To use it,run
```bash
stow <pkg>                # Symlink ~/.config/pkg to ~/dotfiles/pkg/.config/pkg/
```



## 📁 Directory Structure

```
dotfiles/
├── fish/                 # Fish shell configuration
├── kitty/                # Kitty terminal configuration
├── mpv/                  # MPV player scripts and configuration
├── niri/                 # Niri compositor configuration
├── nvim/                 # Neovim configuration
├── starship/             # Starship prompt configuration
└── yazi/                 # Yazi file manager configuration
```

## 📚 Configuration References

### Neovim Configuration

This Neovim configuration is based on and inspired by:

- [Jacky-Lzx/nvim.tutorial.config](https://github.com/Jacky-Lzx/nvim.tutorial.config)
  - Reference implementation for lazy.nvim plugin structure
  - Used as a guide for plugin organization and setup

- [jswysnemc/dotfiles](https://github.com/jswysnemc/dotfiles/tree/main)
  - Reference for LSP configuration and keybindings
  - Used as a basis for some core configuration patterns

### MPV Configuration

This MPV configuration is inspired by:

- [hooke007/mpv_PlayKit](https://github.com/hooke007/mpv_PlayKit)
  - Used as a guide for shader and VapourSynth scripts

## 📝 Notes

- Some configurations may require additional setup (e.g., installing Neovim plugins via Lazy.nvim)
- MPV scripts may require additional dependencies
- Yazi plugins are managed by Yazi itself

## 🔗 References

- [Jacky-Lzx/nvim.tutorial.config](https://github.com/Jacky-Lzx/nvim.tutorial.config)
- [jswysnemc/dotfiles](https://github.com/jswysnemc/dotfiles/tree/main)
- [hooke007/mpv_PlayKit](https://github.com/hooke007/mpv_PlayKit)
