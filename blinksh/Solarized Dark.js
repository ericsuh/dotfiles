base03  = "#002b36";
base02  = "#073642";
base01  = "#586e75";
base00  = "#657b83";
base0   = "#839496";
base1   = "#93a1a1";
base2   = "#eee8d5";
base3   = "#fdf6e3";
yellow  = "#b58900";
orange  = "#cb4b16";
red     = "#dc322f";
magenta = "#d33682";
violet  = "#6c71c4";
blue    = "#268bd2";
cyan    = "#2aa198";
green   = "#859900";

black         = base02;
red           = red;
green         = green;
yellow        = yellow;
blue          = blue;
magenta       = magenta;
cyan          = cyan;
white         = base2;
brightBlack   = base03;
brightRed     = orange;
brightGreen   = base01;
brightYellow  = base00;
brightBlue    = base0;
brightMagenta = violet;
brightCyan    = base1;
brightWhite   = base3;

t.prefs_.set('color-palette-overrides', [
    black,
    red,
    green,
    yellow,
    blue,
    magenta,
    cyan,
    white,
    brightBlack,
    brightRed,
    brightGreen,
    brightYellow,
    brightBlue,
    brightMagenta,
    brightCyan,
    brightWhite,
]);
t.prefs_.set('foreground-color', base0);
t.prefs_.set('background-color', base03);
t.prefs_.set('cursor-color', 'rgba(112,130,132,0.5)');
