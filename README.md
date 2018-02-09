# HTA-Logging
This is a really simple function, but quite useful nevertheless due to its flexibility. In essence, this is a logging function (used by other HTA snippets of mine).

It requires several variables: logfile, logline, gui, append, msgtype.

Logfile is a path to a file to which we want to write something.

Logline is what we want to write.

GUI is, practically, a flag. If set to 1 or empty it will use Logline to output the same to script's interface (statusbar in my case). If set to any string - that string will be used instead. If set to 0 - nothing will be shown.

Append is a standard flag to determine whether we overwrite the log file or append to it. Same as with built in function.

MSGType governs a message box. Very useful for notifying about errors. If it's set to 0 - nothing will be shown. If it's set to 1 - an Information message box will be shown, if set to 2 - Warning and if to 3 - Error.
