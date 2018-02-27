# Crysis Pseudo-Fullscreen Nanny

So, after only 11 years it's been around, I eventually started playing Crysis,
the 2007 videogame with the astonishingly overpowered rendering engine.

And I noticed it has some fullscreen issues. (i.e. it doesn't *stay*
fullscreen)

In fact, Crysis forgets you wanted it fullscreen as soon as you alt-tab out
of it, for whatever reason. From then on, it stays windowed. Being it a
frustrating videogame where you sometimes need to get the timing right for the
mission to succeed, it's very typical to take short pauses while playing it.
but then each time you're supposed to go dig for the fullscreen option inside
its graphics mode settings.

So I devised an half assed *autohotkey* workaround, a script that:

  1. removes the window decorations
  2. centers Crysis main window
  3. adds a black backdrop behind it

# Usage

  * Download the very early [v0.1 executable][v0.1]

  * Install it by copying it to: `%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup`
    Or simply run it each and every time you need it.
    It discreetely awaits in the background for a Crysis window to appear.
    It shouldn't disrupt your everyday activities.

  * Tell me trough the [issue tracker][issues] if and how it isn't working for you.

[v0.1]: https://github.com/zingus/Crysis-Pseudo-Fullscreen-Nanny/releases/download/v0.1/Crysis.Pseudo-Fullscreen.Nanny.exe
[issues]: https://github.com/zingus/Crysis-Pseudo-Fullscreen-Nanny/issues
