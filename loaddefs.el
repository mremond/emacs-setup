;;; loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (color-theme-blackboard) "blackboard" "elpa-to-submit/blackboard.el"
;;;;;;  (19002 43198))
;;; Generated autoloads from elpa-to-submit/blackboard.el

(autoload (quote color-theme-blackboard) "blackboard" "\
Color theme by JD Huntington, based off the TextMate Blackboard theme, created 2008-11-27

\(fn)" t nil)

;;;***

;;;### (autoloads (cheat) "cheat" "elpa-to-submit/cheat.el" (19002
;;;;;;  43198))
;;; Generated autoloads from elpa-to-submit/cheat.el

(autoload (quote cheat) "cheat" "\
Show the specified cheat sheet.

If SILENT is non-nil then do not print any output, but return it
as a string instead.

\(fn NAME &optional SILENT)" t nil)

;;;***

;;;### (autoloads (cperl-perldoc-at-point cperl-perldoc cperl-mode)
;;;;;;  "cperl-mode" "elpa-to-submit/cperl-mode.el" (19002 43198))
;;; Generated autoloads from elpa-to-submit/cperl-mode.el

(fset (quote perl-mode) (quote cperl-mode))

(autoload (quote cperl-mode) "cperl-mode" "\
Major mode for editing Perl code.
Expression and list commands understand all C brackets.
Tab indents for Perl code.
Paragraphs are separated by blank lines only.
Delete converts tabs to spaces as it moves back.

Various characters in Perl almost always come in pairs: {}, (), [],
sometimes <>.  When the user types the first, she gets the second as
well, with optional special formatting done on {}.  (Disabled by
default.)  You can always quote (with \\[quoted-insert]) the left
\"paren\" to avoid the expansion.  The processing of < is special,
since most the time you mean \"less\".  CPerl mode tries to guess
whether you want to type pair <>, and inserts is if it
appropriate.  You can set `cperl-electric-parens-string' to the string that
contains the parenths from the above list you want to be electrical.
Electricity of parenths is controlled by `cperl-electric-parens'.
You may also set `cperl-electric-parens-mark' to have electric parens
look for active mark and \"embrace\" a region if possible.'

CPerl mode provides expansion of the Perl control constructs:

   if, else, elsif, unless, while, until, continue, do,
   for, foreach, formy and foreachmy.

and POD directives (Disabled by default, see `cperl-electric-keywords'.)

The user types the keyword immediately followed by a space, which
causes the construct to be expanded, and the point is positioned where
she is most likely to want to be.  eg. when the user types a space
following \"if\" the following appears in the buffer: if () { or if ()
} { } and the cursor is between the parentheses.  The user can then
type some boolean expression within the parens.  Having done that,
typing \\[cperl-linefeed] places you - appropriately indented - on a
new line between the braces (if you typed \\[cperl-linefeed] in a POD
directive line, then appropriate number of new lines is inserted).

If CPerl decides that you want to insert \"English\" style construct like

            bite if angry;

it will not do any expansion.  See also help on variable
`cperl-extra-newline-before-brace'.  (Note that one can switch the
help message on expansion by setting `cperl-message-electric-keyword'
to nil.)

\\[cperl-linefeed] is a convenience replacement for typing carriage
return.  It places you in the next line with proper indentation, or if
you type it inside the inline block of control construct, like

            foreach (@lines) {print; print}

and you are on a boundary of a statement inside braces, it will
transform the construct into a multiline and will place you into an
appropriately indented blank line.  If you need a usual
`newline-and-indent' behaviour, it is on \\[newline-and-indent],
see documentation on `cperl-electric-linefeed'.

Use \\[cperl-invert-if-unless] to change a construction of the form

	    if (A) { B }

into

            B if A;

\\{cperl-mode-map}

Setting the variable `cperl-font-lock' to t switches on font-lock-mode
\(even with older Emacsen), `cperl-electric-lbrace-space' to t switches
on electric space between $ and {, `cperl-electric-parens-string' is
the string that contains parentheses that should be electric in CPerl
\(see also `cperl-electric-parens-mark' and `cperl-electric-parens'),
setting `cperl-electric-keywords' enables electric expansion of
control structures in CPerl.  `cperl-electric-linefeed' governs which
one of two linefeed behavior is preferable.  You can enable all these
options simultaneously (recommended mode of use) by setting
`cperl-hairy' to t.  In this case you can switch separate options off
by setting them to `null'.  Note that one may undo the extra
whitespace inserted by semis and braces in `auto-newline'-mode by
consequent \\[cperl-electric-backspace].

If your site has perl5 documentation in info format, you can use commands
\\[cperl-info-on-current-command] and \\[cperl-info-on-command] to access it.
These keys run commands `cperl-info-on-current-command' and
`cperl-info-on-command', which one is which is controlled by variable
`cperl-info-on-command-no-prompt' and `cperl-clobber-lisp-bindings'
\(in turn affected by `cperl-hairy').

Even if you have no info-format documentation, short one-liner-style
help is available on \\[cperl-get-help], and one can run perldoc or
man via menu.

It is possible to show this help automatically after some idle time.
This is regulated by variable `cperl-lazy-help-time'.  Default with
`cperl-hairy' (if the value of `cperl-lazy-help-time' is nil) is 5
secs idle time .  It is also possible to switch this on/off from the
menu, or via \\[cperl-toggle-autohelp].  Requires `run-with-idle-timer'.

Use \\[cperl-lineup] to vertically lineup some construction - put the
beginning of the region at the start of construction, and make region
span the needed amount of lines.

Variables `cperl-pod-here-scan', `cperl-pod-here-fontify',
`cperl-pod-face', `cperl-pod-head-face' control processing of POD and
here-docs sections.  With capable Emaxen results of scan are used
for indentation too, otherwise they are used for highlighting only.

Variables controlling indentation style:
 `cperl-tab-always-indent'
    Non-nil means TAB in CPerl mode should always reindent the current line,
    regardless of where in the line point is when the TAB command is used.
 `cperl-indent-left-aligned-comments'
    Non-nil means that the comment starting in leftmost column should indent.
 `cperl-auto-newline'
    Non-nil means automatically newline before and after braces,
    and after colons and semicolons, inserted in Perl code.  The following
    \\[cperl-electric-backspace] will remove the inserted whitespace.
    Insertion after colons requires both this variable and
    `cperl-auto-newline-after-colon' set.
 `cperl-auto-newline-after-colon'
    Non-nil means automatically newline even after colons.
    Subject to `cperl-auto-newline' setting.
 `cperl-indent-level'
    Indentation of Perl statements within surrounding block.
    The surrounding block's indentation is the indentation
    of the line on which the open-brace appears.
 `cperl-continued-statement-offset'
    Extra indentation given to a substatement, such as the
    then-clause of an if, or body of a while, or just a statement continuation.
 `cperl-continued-brace-offset'
    Extra indentation given to a brace that starts a substatement.
    This is in addition to `cperl-continued-statement-offset'.
 `cperl-brace-offset'
    Extra indentation for line if it starts with an open brace.
 `cperl-brace-imaginary-offset'
    An open brace following other text is treated as if it the line started
    this far to the right of the actual line indentation.
 `cperl-label-offset'
    Extra indentation for line that is a label.
 `cperl-min-label-indent'
    Minimal indentation for line that is a label.

Settings for classic indent-styles: K&R BSD=C++ GNU PerlStyle=Whitesmith
  `cperl-indent-level'                5   4       2   4
  `cperl-brace-offset'                0   0       0   0
  `cperl-continued-brace-offset'     -5  -4       0   0
  `cperl-label-offset'               -5  -4      -2  -4
  `cperl-continued-statement-offset'  5   4       2   4

CPerl knows several indentation styles, and may bulk set the
corresponding variables.  Use \\[cperl-set-style] to do this.  Use
\\[cperl-set-style-back] to restore the memorized preexisting values
\(both available from menu).  See examples in `cperl-style-examples'.

Part of the indentation style is how different parts of if/elsif/else
statements are broken into lines; in CPerl, this is reflected on how
templates for these constructs are created (controlled by
`cperl-extra-newline-before-brace'), and how reflow-logic should treat
\"continuation\" blocks of else/elsif/continue, controlled by the same
variable, and by `cperl-extra-newline-before-brace-multiline',
`cperl-merge-trailing-else', `cperl-indent-region-fix-constructs'.

If `cperl-indent-level' is 0, the statement after opening brace in
column 0 is indented on
`cperl-brace-offset'+`cperl-continued-statement-offset'.

Turning on CPerl mode calls the hooks in the variable `cperl-mode-hook'
with no args.

DO NOT FORGET to read micro-docs (available from `Perl' menu,
or as help on variables `cperl-tips', `cperl-problems',
`cperl-non-problems', `cperl-praise', `cperl-speed',
`cperl-tips-faces').

\(fn)" t nil)

(autoload (quote cperl-perldoc) "cperl-mode" "\
Run `perldoc' on WORD.

\(fn WORD)" t nil)

(autoload (quote cperl-perldoc-at-point) "cperl-mode" "\
Run a `perldoc' on the word around point.

\(fn)" t nil)
(add-to-list 'auto-mode-alist '("\\.\\([pP][LlMm]\\|al\\)\\'" . perl-mode))
(add-to-list 'interpreter-mode-alist '("perl" . perl-mode))

;;;***

;;;### (autoloads (cssh-mode) "cssh" "elpa-to-submit/cssh.el" (19002
;;;;;;  43198))
;;; Generated autoloads from elpa-to-submit/cssh.el

(autoload (quote cssh-mode) "cssh" "\
A major mode for controlling multiple terms at once.

\(fn)" t nil)

;;;***

;;;### (autoloads (espresso-mode) "espresso" "elpa-to-submit/espresso.el"
;;;;;;  (19002 43198))
;;; Generated autoloads from elpa-to-submit/espresso.el

(autoload (quote espresso-mode) "espresso" "\
Major mode for editing JavaScript source text.

Key bindings:

\\{espresso-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads (find-file-in-project) "find-file-in-project" "elpa-to-submit/find-file-in-project.el"
;;;;;;  (19002 43198))
;;; Generated autoloads from elpa-to-submit/find-file-in-project.el

(autoload (quote find-file-in-project) "find-file-in-project" "\
Prompt with a completing list of all files in the project to find one.

The project's scope is defined as the first directory containing
an `.emacs-project' file. You can override this by locally
setting the `ffip-project-root' variable.

\(fn)" t nil)

;;;***

;;;### (autoloads (haml-mode) "haml-mode" "elpa-to-submit/haml-mode.el"
;;;;;;  (19002 43198))
;;; Generated autoloads from elpa-to-submit/haml-mode.el

(autoload (quote haml-mode) "haml-mode" "\
Major mode for editing Haml files.

\\{haml-mode-map}

\(fn)" t nil)

(add-to-list (quote auto-mode-alist) (quote ("\\.haml$" . haml-mode)))

;;;***

;;;### (autoloads (htmlize-many-files-dired htmlize-many-files htmlize-file
;;;;;;  htmlize-region htmlize-buffer) "htmlize" "elpa-to-submit/htmlize.el"
;;;;;;  (19002 43198))
;;; Generated autoloads from elpa-to-submit/htmlize.el

(autoload (quote htmlize-buffer) "htmlize" "\
Convert BUFFER to HTML, preserving colors and decorations.

The generated HTML is available in a new buffer, which is returned.
When invoked interactively, the new buffer is selected in the current
window.  The title of the generated document will be set to the buffer's
file name or, if that's not available, to the buffer's name.

Note that htmlize doesn't fontify your buffers, it only uses the
decorations that are already present.  If you don't set up font-lock or
something else to fontify your buffers, the resulting HTML will be
plain.  Likewise, if you don't like the choice of colors, fix the mode
that created them, or simply alter the faces it uses.

\(fn &optional BUFFER)" t nil)

(autoload (quote htmlize-region) "htmlize" "\
Convert the region to HTML, preserving colors and decorations.
See `htmlize-buffer' for details.

\(fn BEG END)" t nil)

(autoload (quote htmlize-file) "htmlize" "\
Load FILE, fontify it, convert it to HTML, and save the result.

Contents of FILE are inserted into a temporary buffer, whose major mode
is set with `normal-mode' as appropriate for the file type.  The buffer
is subsequently fontified with `font-lock' and converted to HTML.  Note
that, unlike `htmlize-buffer', this function explicitly turns on
font-lock.  If a form of highlighting other than font-lock is desired,
please use `htmlize-buffer' directly on buffers so highlighted.

Buffers currently visiting FILE are unaffected by this function.  The
function does not change current buffer or move the point.

If TARGET is specified and names a directory, the resulting file will be
saved there instead of to FILE's directory.  If TARGET is specified and
does not name a directory, it will be used as output file name.

\(fn FILE &optional TARGET)" t nil)

(autoload (quote htmlize-many-files) "htmlize" "\
Convert FILES to HTML and save the corresponding HTML versions.

FILES should be a list of file names to convert.  This function calls
`htmlize-file' on each file; see that function for details.  When
invoked interactively, you are prompted for a list of files to convert,
terminated with RET.

If TARGET-DIRECTORY is specified, the HTML files will be saved to that
directory.  Normally, each HTML file is saved to the directory of the
corresponding source file.

\(fn FILES &optional TARGET-DIRECTORY)" t nil)

(autoload (quote htmlize-many-files-dired) "htmlize" "\
HTMLize dired-marked files.

\(fn ARG &optional TARGET-DIRECTORY)" t nil)

;;;***

;;;### (autoloads (javadoc-lookup) "javadoc-help" "elpa-to-submit/javadoc-help.el"
;;;;;;  (19002 43198))
;;; Generated autoloads from elpa-to-submit/javadoc-help.el

(autoload (quote javadoc-lookup) "javadoc-help" "\
Look up Java class in Javadoc.

\(fn)" t nil)

;;;***

;;;### (autoloads (magit-status) "magit" "elpa-to-submit/magit.el"
;;;;;;  (19002 43198))
;;; Generated autoloads from elpa-to-submit/magit.el

(autoload (quote magit-status) "magit" "\
Not documented

\(fn DIR)" t nil)

;;;***

;;;### (autoloads (markdown-mode) "markdown-mode" "elpa-to-submit/markdown-mode.el"
;;;;;;  (19002 43198))
;;; Generated autoloads from elpa-to-submit/markdown-mode.el

(autoload (quote markdown-mode) "markdown-mode" "\
Major mode for editing Markdown files.

\(fn)" t nil)

(add-to-list (quote auto-mode-alist) (quote ("\\.markdown$" . markdown-mode)))

;;;***

;;;### (autoloads (moz-minor-mode) "moz" "elpa-to-submit/moz.el"
;;;;;;  (19002 43198))
;;; Generated autoloads from elpa-to-submit/moz.el

(autoload (quote moz-minor-mode) "moz" "\
Toggle Mozilla mode.
With no argument, this command toggles the mode.
Non-null prefix argument turns on the mode.
Null prefix argument turns off the mode.

When Mozilla mode is enabled, some commands become available to
send current code area (as understood by c-mark-function) or
region or buffer to an inferior mozilla process (which will be
started as needed).

\(fn &optional ARG)" t nil)

(eval-after-load (quote js2-mode) (quote (add-hook (quote js2-mode-hook) (quote moz-minor-mode))))

;;;***

;;;### (autoloads (oddmuse-kill-url oddmuse-browse-this-page oddmuse-browse-page
;;;;;;  emacswiki-post oddmuse-insert-pagename oddmuse-revert oddmuse-post
;;;;;;  oddmuse-follow oddmuse-edit oddmuse-toggle-minor) "oddmuse"
;;;;;;  "elpa-to-submit/oddmuse.el" (19002 43199))
;;; Generated autoloads from elpa-to-submit/oddmuse.el

(autoload (quote oddmuse-toggle-minor) "oddmuse" "\
Toggle minor mode state.

\(fn &optional ARG)" t nil)

(autoload (quote oddmuse-edit) "oddmuse" "\
Edit a page on a wiki.
WIKI is the name of the wiki as defined in `oddmuse-wikis',
PAGENAME is the pagename of the page you want to edit.
Use a prefix argument to force a reload of the page.

\(fn WIKI PAGENAME)" t nil)

(autoload (quote oddmuse-follow) "oddmuse" "\
Figure out what page we need to visit
and call `oddmuse-edit' on it.

\(fn ARG)" t nil)

(autoload (quote oddmuse-post) "oddmuse" "\
Post the current buffer to the current wiki.
The current wiki is taken from `oddmuse-wiki'.

\(fn SUMMARY)" t nil)

(autoload (quote oddmuse-revert) "oddmuse" "\
Revert this oddmuse page.

\(fn)" t nil)

(autoload (quote oddmuse-insert-pagename) "oddmuse" "\
Insert a PAGENAME of current wiki with completion.

\(fn PAGENAME)" t nil)

(autoload (quote emacswiki-post) "oddmuse" "\
Post the current buffer to the EmacsWiki.
If this command is invoked interactively: with prefix argument, prompts pagename,
otherwise set pagename as basename of `buffer-file-name'.

This command is intended to post current EmacsLisp program easily.

\(fn &optional PAGENAME SUMMARY)" t nil)

(autoload (quote oddmuse-browse-page) "oddmuse" "\
Ask a WWW browser to load an oddmuse page.
WIKI is the name of the wiki as defined in `oddmuse-wikis',
PAGENAME is the pagename of the page you want to browse.

\(fn WIKI PAGENAME)" t nil)

(autoload (quote oddmuse-browse-this-page) "oddmuse" "\
Ask a WWW browser to load current oddmuse page.

\(fn)" t nil)

(autoload (quote oddmuse-kill-url) "oddmuse" "\
Make the URL of current oddmuse page the latest kill in the kill ring.

\(fn)" t nil)

;;;***

;;;### (autoloads (pcomplete/rake) "pcmpl-rake" "elpa-to-submit/pcmpl-rake.el"
;;;;;;  (19002 43199))
;;; Generated autoloads from elpa-to-submit/pcmpl-rake.el

(autoload (quote pcomplete/rake) "pcmpl-rake" "\
Completion rules for the `ssh' command.

\(fn)" nil nil)

;;;***

;;;### (autoloads (perl-find-file perldoc) "perl-find-library" "elpa-to-submit/perl-find-library.el"
;;;;;;  (19002 43199))
;;; Generated autoloads from elpa-to-submit/perl-find-library.el

(autoload (quote perldoc) "perl-find-library" "\
Invoke `cperl-perldoc' on LIBRARY, but do completion using *PERL-LIBRARIES*
when run interactively

\(fn LIBRARY)" t nil)

(autoload (quote perl-find-file) "perl-find-library" "\
Find a perl library by module name

\(fn LIBRARY)" t nil)

;;;***

;;;### (autoloads (pod-mode) "pod-mode" "elpa-to-submit/pod-mode.el"
;;;;;;  (19002 43199))
;;; Generated autoloads from elpa-to-submit/pod-mode.el

(autoload (quote pod-mode) "pod-mode" "\
Major mode for editing POD files (Plain Old Documentation for Perl).

\(fn)" t nil)

;;;***

;;;### (autoloads (ri) "ri" "elpa-to-submit/ri.el" (19002 43199))
;;; Generated autoloads from elpa-to-submit/ri.el

(autoload (quote ri) "ri" "\
Look up Ruby documentation.

\(fn &optional RI-DOCUMENTED)" t nil)

;;;***

;;;### (autoloads (ruby-electric-mode) "ruby-electric" "elpa-to-submit/ruby-electric.el"
;;;;;;  (19002 43199))
;;; Generated autoloads from elpa-to-submit/ruby-electric.el

(autoload (quote ruby-electric-mode) "ruby-electric" "\
Toggle Ruby Electric minor mode.
With no argument, this command toggles the mode.  Non-null prefix
argument turns on the mode.  Null prefix argument turns off the
mode.

When Ruby Electric mode is enabled, an indented 'end' is
heuristicaly inserted whenever typing a word like 'module',
'class', 'def', 'if', 'unless', 'case', 'until', 'for', 'begin',
'do'. Simple, double and back quotes as well as braces are paired
auto-magically. Expansion does not occur inside comments and
strings. Note that you must have Font Lock enabled.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (sass-mode) "sass-mode" "elpa-to-submit/sass-mode.el"
;;;;;;  (19002 43199))
;;; Generated autoloads from elpa-to-submit/sass-mode.el

(autoload (quote sass-mode) "sass-mode" "\
Major mode for editing Sass files.

\(fn)" t nil)

(add-to-list (quote auto-mode-alist) (quote ("\\.sass$" . sass-mode)))

;;;***

;;;### (autoloads (scpaste-region scpaste) "scpaste" "elpa-to-submit/scpaste.el"
;;;;;;  (19002 43199))
;;; Generated autoloads from elpa-to-submit/scpaste.el

(autoload (quote scpaste) "scpaste" "\
Paste the current buffer via `scp' to `scpaste-http-destination'.

\(fn ORIGINAL-NAME)" t nil)

(autoload (quote scpaste-region) "scpaste" "\
Paste the current region via `scpaste'.

\(fn NAME)" t nil)

;;;***

;;;### (autoloads (textile-mode) "textile-mode" "elpa-to-submit/textile-mode.el"
;;;;;;  (19002 43199))
;;; Generated autoloads from elpa-to-submit/textile-mode.el

(autoload (quote textile-mode) "textile-mode" "\
A major mode for editing textile files.

\(fn)" t nil)

(add-to-list (quote auto-mode-alist) (quote ("\\.textile\\'" . textile-mode)))

;;;***

;;;### (autoloads (tt-mode) "tt-mode" "elpa-to-submit/tt-mode.el"
;;;;;;  (19002 43199))
;;; Generated autoloads from elpa-to-submit/tt-mode.el

(autoload (quote tt-mode) "tt-mode" "\
Major mode for editing Template Toolkit files

\(fn)" t nil)

;;;***

;;;### (autoloads (color-theme-twilight) "twilight" "elpa-to-submit/twilight.el"
;;;;;;  (19002 43199))
;;; Generated autoloads from elpa-to-submit/twilight.el

(autoload (quote color-theme-twilight) "twilight" "\
Color theme by Marcus Crafter, based off the TextMate Twilight theme, created 2008-04-18

\(fn)" t nil)

;;;***

;;;### (autoloads (yaml-mode) "yaml-mode" "elpa-to-submit/yaml-mode.el"
;;;;;;  (19002 43199))
;;; Generated autoloads from elpa-to-submit/yaml-mode.el

(autoload (quote yaml-mode) "yaml-mode" "\
Simple mode to edit YAML.

\\{yaml-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads (color-theme-zenburn) "zenburn" "elpa-to-submit/zenburn.el"
;;;;;;  (19002 43199))
;;; Generated autoloads from elpa-to-submit/zenburn.el

(autoload (quote color-theme-zenburn) "zenburn" "\
Just some alien fruit salad to keep you in the zone.

\(fn)" t nil)

(defalias (quote zenburn) (function color-theme-zenburn))

;;;***

;;;### (autoloads nil nil ("elpa-to-submit/color-theme.el" "elpa-to-submit/eshell-vc.el"
;;;;;;  "elpa-to-submit/notify.el") (19002 43252 815455))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; loaddefs.el ends here
