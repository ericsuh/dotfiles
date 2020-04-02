base03  = "#002831";
base02  = "#001e27";
base01  = "#475b62";
base00  = "#536870";
base0   = "#708284";
base1   = "#819090";
base2   = "#eae3cb";
base3   = "#fcf4dc";
yellow  = "#a57706";
orange  = "#bd3613";
red     = "#d11c24";
magenta = "#c61c6f";
violet  = "#5956ba";
blue    = "#2176c7";
cyan    = "#259286";
green   = "#738a05";

black         = base03;  // Swapped with brightBlack
red           = red;
green         = green;
yellow        = yellow;
blue          = blue;
magenta       = magenta;
cyan          = cyan;
white         = base2;
brightBlack   = base02;
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
t.prefs_.set('background-color', base02);
t.prefs_.set('cursor-color', 'rgba(112,130,132,0.5)');
