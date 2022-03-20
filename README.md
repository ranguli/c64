# c64
![image](screenshot.png)
_Repository for learning 650x series assembly on the Commodore 64_

## Development Environment
- Install [VICE](http://vice-emu.sourceforge.net/vice_toc.html)
- Clone [c64-devkit](https://github.com/cliffordcarnmo/c64-devkit)
- Symlink `c64-devkit/emulator/linux/x64` to `/usr/local/bin/x64`
- Run `make` in `c64-devkit/` to compile and automatically run
 `main.asm` in `source/`
- Because compilation is slightly involved, binaries are included in the git
  repo if you want to try them out.

## BASIC

If VICE was installed via Flatpak, the `petcat` utility will need to be added
to the `$PATH`. For example:

```bash
export PATH=/home/user/.local/share/flatpak/app/net.sf.VICE/x86_64/stable/4c117578e052173641b405b7323c22cb2af87fe233a3c329417334ee02e7367d/files/bin:$PATH
```

## Resources:
- [VICE emulator](http://vice-emu.sourceforge.net/vice_toc.html)
- [c64-devkit](https://github.com/cliffordcarnmo/c64-devkit)
- [easy6502](https://skilldrick.github.io/easy6502/)
- [dustlayer](https://dustlayer.com/tutorials)
- [Book on C64 assembly](http://69.60.118.202/books/commodore/books/Machine_Language_for_the_Commodore_Revised_and_Expanded_Edition.zip)
- [Commodore 64 Programmers Reference Manual](https://www.commodore.ca/manuals/c64_programmers_reference/c64-programmers_reference_guide-05-basic_to_machine_language.pdf)
- [MOS 6502 Programmers Manual](http://archive.6502.org/books/mcs6500_family_programming_manual.pdf)


