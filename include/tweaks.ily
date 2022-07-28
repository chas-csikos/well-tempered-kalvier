%%Better fermatas
  %% Adds more padding to fermatas
  fermata = #(let ((m (make-articulation "fermata")))
    (set! (ly:music-property m 'tweaks)
      (acons 'padding 0.8 (ly:music-property m 'tweaks)))
    m)

%%Smaller Trill Glyph
  %% Adds more padding to trills
  trill = #(let ((m (make-articulation "trill")))
    (set! (ly:music-property m 'tweaks)
      (acons 'font-size -0.2 (ly:music-property m 'tweaks)))
    m)

%% Variable thickness slur and ties
  %% Takes max / min slur length and max/min thickness (1 = 1 staff line)
  %% and modifies the thickness according to the length of the tie or slur.
  %%% 1.1 is default thickness
  #(define (variable-slur-thickness min-l max-l min-t max-t) (lambda (grob)
    (let* ((cpf (if (grob::has-interface grob 'tie-interface)
                    ly:tie::calc-control-points
                    ly:slur::calc-control-points))
           (cpt (cpf grob))
           (cp0 (car cpt)) (cp3 (cadddr cpt))
           (dx (- (car cp3) (car cp0)))
           (dy (- (cdr cp3) (cdr cp0)))
           (len (magnitude (make-rectangular dx dy)))
           (thickness
             (cond ((< len min-l) min-t)
                   ((> len max-l) max-t)
                   (else (+ min-t (* (- len min-l)
                           (/ (- max-t min-t) (- max-l min-l))))))))
           thickness)))

  % Make a call to above function to change the default slur/tie thickness
  %%% 1.1 is default thickness
  \layout {
    % Slurs 1.25 - 2 staff lines thick
    \override Slur.thickness = #(variable-slur-thickness 3 25 1.25 2.25)
    \override PhrasingSlur.thickness = #(variable-slur-thickness 3 20 1.25 2)
    % Ties 1.2 - 1.75 staff lines thick
    \override Tie.thickness = #(variable-slur-thickness 6 18 1.25 1.75)
  }

%%%%%%%%%%%%%%%%%%%

% Force system breaks from a list of bars-per-system list '( X X X X )
  %%% \layout {
  %%$   \context {
  %%$     \Score
  %%$     \override NonMusicalPaperColumn #'line-break-permission = ##t
  %%$     \consists #(custom-line-breaks-engraver '(X X X X))
  %%$   }
  %%$ }
  %#(define (custom-line-breaks-engraver bar-list)
  %(let ((total (1+ (car bar-list)))) ;; not sure why increment necessary
  %  (lambda (context)
  %    (make-engraver
  %      (acknowledgers ((paper-column-interface engraver grob source-engraver)
  %        (let ((current-bar (ly:context-property context 'currentBarNumber)))
  %          (if (and (pair? bar-list)
  %                   (= (remainder current-bar total) 0)
  %                   (eq? #t (ly:grob-property grob 'non-musical)))
  %              (begin
  %                (set! (ly:grob-property grob 'line-break-permission) 'force)
  %                (if (not (null? (cdr bar-list)))
  %                    (begin
  %                      (set! bar-list (cdr bar-list))
  %                      (set! total (+ total (car bar-list))))
  %                    (set! bar-list '())))))))))))

% Force system and page breaks
  %\relative c' {
  %   \repeat unfold 50 {
  %     \acciaccatura b8 c4 c c c
  %   }
  % }
  %
  % \layout {
  %   ragged-right = ##t
  %   \context {
  %     \Staff
  %     %% The following override specifies measures per line only
  %     %\consists #(bars-per-line-systems-per-page-engraver '(5 7*5 1 3*3))
  %
  %     %% The following line specifies measures per line and systems per page
  %     \consists #(bars-per-line-systems-per-page-engraver '((4) (4 2) (4*3) (5*4)))
  % }

  % #(define (expand-repetitions lst seed)
  %   (if (symbol? (car lst))
  %       (let* ((str (symbol->string (car lst)))
  %              (split (string-split str #\*))
  %              (split (map (lambda (elem) (string->number elem)) split)))
  %         (set! seed (append seed (make-list (cadr split) (car split)))))
  %       (set! seed (append seed (list (car lst)))))
  %   (if (null? (cdr lst))
  %       seed
  %       (expand-repetitions (cdr lst) seed)))

  % #(define (bars-per-line-systems-per-page-engraver lst)
  %   (let* ((working-copy
  %            (if (pair? (car lst))
  %                (map (lambda (sys) (expand-repetitions sys '()))
  %                     lst)
  %                (expand-repetitions lst '())))
  %          (bars-and-systems? (pair? (car lst)))
  %          (systems-per-page
  %            (if bars-and-systems?
  %                (car working-copy)
  %                #f))
  %          (total
  %            (if systems-per-page
  %                (1+ (car systems-per-page))
  %                (1+ (car working-copy))))
  %          (last-measure-seen 0))
  %   `((stop-translation-timestep
  %       . ,(lambda (trans)
  %           (let* ((context (ly:translator-context trans))
  %                  (internal-bar (ly:context-property context 'internalBarNumber))
  %                  (current-col (ly:context-property context 'currentCommandColumn)))
  %             ;; we are only interested in the first NonMusicalPaperColumn of
  %             ;; each measure
  %             (if (and (> internal-bar last-measure-seen)
  %                      (= (remainder internal-bar total) 0)
  %                      (pair? working-copy))
  %                 (begin
  %                   (set! (ly:grob-property current-col 'line-break-permission) 'force)
  %                   (set! last-measure-seen internal-bar)
  %                   (if bars-and-systems?
  %                       (begin
  %                         (if (null? (cdr systems-per-page))
  %                             (begin
  %                               (set! (ly:grob-property current-col 'page-break-permission) 'force)
  %                               (if (pair? (cdr working-copy))
  %                                   (begin
  %                                     (set! working-copy (cdr working-copy))
  %                                     (set! systems-per-page (car working-copy)))
  %                                   (set! working-copy '())))
  %                             (set! systems-per-page (cdr systems-per-page)))
  %                         (set! total (+ total (car systems-per-page))))
  %                       (begin
  %                         (if (null? (cdr working-copy))
  %                             (set! working-copy lst)
  %                             (begin
  %                               (set! working-copy (cdr working-copy))))
  %                               (set! total (+ total (car working-copy)))))))))))))


% On the first bar, engrave the both the first clef, and a different clef after the key & time signatures.
  #(define (append-markup grob old-stencil)
    (ly:stencil-combine-at-edge
      old-stencil X RIGHT (ly:text-interface::print grob)))

  trebleToBass = {
    \clef bass
    % Fake staff clef appearance
    \once \override Staff.Clef.glyph-name = #"clefs.G"
    \once \override Staff.Clef.Y-offset = #-1
    % Make sure any key signatures will printed with respect to
    % correct middle c position expected for treble clef
    \once \set Staff.middleCClefPosition = -6
    % Append change clef to the time signature
    \once \override Staff.TimeSignature.text = \markup {
      \hspace #1.2
      \raise #1
      \musicglyph #"clefs.F_change"
    }
    \once \override Staff.TimeSignature.stencil = #(lambda (grob)
      (append-markup grob (ly:time-signature::print grob)))
  }

  bassToTreble = {
    \clef treble
    % Fake staff clef appearance
    \once \override Staff.Clef.glyph-name = #"clefs.F"
    \once \override Staff.Clef.Y-offset = #1
    % Make sure any key signatures will printed with respect to
    % correct middle c position expected for bass clef
    \once \set Staff.middleCClefPosition = 6
    % Append change clef to the time signature
    \once \override Staff.TimeSignature.text = \markup {
      \hspace #1.2
      \lower #1
      \musicglyph #"clefs.G_change"
    }
    \once \override Staff.TimeSignature.stencil = #(lambda (grob)
      (append-markup grob (ly:time-signature::print grob)))
  }

%Force Display Bar Number
%% For use after mid measure system break.
  % num =
  % #(define-music-function (parser location musique) (ly:music?)
  %     #{
  %       \override Score.BarNumber.break-visibility = ##(#f #t #t)
  %       $musique
  %       \revert Score.BarNumber.break-visibility
  %     #})

%Bach Grace Notes
  BachAccentFallendFromGrace =
  {
    \once \override NoteHead.stencil =
    #(lambda (grob)
            (grob-interpret-markup grob
              (markup #:raise 0 #:large #:musicglyph "scripts.lcomma")))
    \once \override Stem.stencil = ##f
    \once \override Flag.stencil = ##f
    \once \override Stem.length = #0
    % \once \override NoteColumn.X-offset = #0.8
  }

  BachAccentSteigendFromGrace =
  {
    \once \override NoteHead.stencil =
    #(lambda (grob)
            (grob-interpret-markup grob
              (markup #:raise 0 #:large #:musicglyph "scripts.lcomma")))
    \once \override Stem.stencil = ##f
    \once \override Flag.stencil = ##f
    \once \override Stem.length = #0
    % \once \override NoteColumn.X-offset = #0.8
  }

%% New treble clef defs:
  #(define-markup-command (G_Score layout props thk mlt) (number? number?)
    (interpret-markup layout props
    (markup
      (#:stencil
      (make-path-stencil
        '(M  1.117 -2.778
          C  0.730 -2.782  0.363 -2.364 0.484 -1.981
          C  0.566 -1.641  1.043 -1.540 1.285 -1.786
          C  1.504 -1.997  1.418 -2.395 1.141 -2.513
          C  0.996 -2.567  0.836 -2.583 1.090 -2.614
          C  1.379 -2.673  1.703 -2.559 1.828 -2.278
          C  1.969 -1.911  1.820 -1.395 1.766 -1.024
          C  1.031 -1.169  0.277 -0.903 0.031 -0.196
          C -0.129  0.323 -0.043  0.917 0.250  1.366
          C  0.492  1.737  0.832  1.999 1.152  2.300
          C  1.070  2.886  1.000  3.468 1.203  4.034
          C  1.297  4.292  1.484  4.503 1.680  4.687
          C  1.898  4.886  2.117  4.335 2.211  4.062
          C  2.398  3.601  2.227  2.839 1.934  2.323
          C  1.816  2.105  1.637  1.929 1.457  1.757
          C  1.500  1.523  1.539  1.288 1.586  1.054
          C  2.117  1.077  2.477  0.792 2.602  0.359
          C  2.766 -0.134  2.516 -0.766 1.953 -0.977
          C  2.004 -1.423  2.160 -1.927 2.004 -2.313
          C  1.902 -2.567  1.656 -2.766 1.379 -2.778
          C  1.293 -2.798  1.203 -2.790 1.117 -2.782
          M  1.734 -0.919
          C  1.621 -0.306  1.574  0.026 1.500  0.464
          C  1.164  0.433  0.973  0.066 1.090 -0.220
          C  1.141 -0.345  1.223 -0.407 1.359 -0.485
          C  1.492 -0.563  1.387 -0.657 1.297 -0.618
          C  1.031 -0.509  0.664 -0.188 0.758  0.269
          C  0.816  0.569  1.059  0.917 1.398  1.023
          C  1.359  1.261  1.332  1.378 1.297  1.612
          C  0.887  1.234  0.332  0.753 0.348  0.155
          C  0.363 -0.532  0.746 -1.071 1.734 -0.919
          M  1.688  0.480
          C  1.762  0.105  1.844 -0.509 1.926 -0.880
          C  2.656 -0.462  2.438  0.534 1.688  0.480
          M  2.016  3.776
          C  1.984  4.378  1.691  4.058 1.500  3.706
          C  1.313  3.366  1.273  2.894 1.352  2.468
          C  1.945  3.066  2.031  3.409 2.016  3.776
          Z)
        thk mlt mlt #t)))))

    clefGScore = \layout {
          \context {
            \Score
            \override Clef.stencil =
              #(lambda (grob)
                (let* ((sz (ly:grob-property grob 'font-size 0))
                        (mlt (magstep sz))
                        (glyph (ly:grob-property grob 'glyph-name)))
                      (cond
                        ((equal? glyph "clefs.G")
                        (grob-interpret-markup grob
                          (markup #:scale(cons mlt mlt)#:G_Score 0 1)))
                        ((equal? glyph "clefs.G_change")
                        (grob-interpret-markup grob
                          (markup #:scale(cons mlt mlt)#:G_Score .01 .8)))
                        (else (ly:clef::print grob)))))
            \override ClefModifier.clef-alignments = #'((G 0 . .4))
            % Optional:
            %\override ClefModifier.font-series = #'bold
          }
        }
%% defs end.

%% Flat Ties
  %% http://lsr.di.unimi.it/LSR/Item?id=1031
  % #(define ((flared-tie coords) grob)

  %   (define (pair-to-list pair)
  %     (list (car pair) (cdr pair)))

  %   (define (normalize-coords goods x y dir)
  %     (map
  %       (lambda (coord)
  %         ;(coord-scale coord (cons x (* y dir)))
  %         (cons (* x (car coord)) (* y dir (cdr coord))))
  %       goods))

  %   (define (my-c-p-s points thick)
  %     (make-connected-path-stencil
  %       points
  %       thick
  %       1.0
  %       1.0
  %       #f
  %       #f))

  %   ;; outer let to trigger suicide
  %   (let ((sten (ly:tie::print grob)))
  %     (if (grob::is-live? grob)
  %         (let* ((layout (ly:grob-layout grob))
  %               (line-thickness (ly:output-def-lookup layout 'line-thickness))
  %               (thickness (ly:grob-property grob 'thickness 0.1))
  %               (used-thick (* line-thickness thickness))
  %               (dir (ly:grob-property grob 'direction))
  %               (xex (ly:stencil-extent sten X))
  %               (yex (ly:stencil-extent sten Y))
  %               (lenx (interval-length xex))
  %               (leny (interval-length yex))
  %               (xtrans (car xex))
  %               (ytrans (if (> dir 0)(car yex) (cdr yex)))
  %               (uplist
  %                 (map pair-to-list
  %                       (normalize-coords coords lenx (* leny 2) dir))))

  %   (ly:stencil-translate
  %       (my-c-p-s uplist used-thick)
  %     (cons xtrans ytrans)))
  %   '())))

  % #(define flare-tie
  %   (flared-tie '((0 . 0)(0.1 . 0.2) (0.9 . 0.2) (1.0 . 0.0))))



%% see http://lsr.di.unimi.it/LSR/Item?id=861
%% see also http://lilypond.org/doc/v2.18/Documentation/internals/notehead
%% \displaceHeads
  % Offsets are entered as a series of numbers.
  %   The value of 0 causes no offset-calculation to occur and places the note at the default side of the stem:
  %     The left side for a stem pointing up and
  %     the right side for a stem pointing down.
  %     (Per default, additional NoteHeads may have been placed on the opposite side of the stem to avoid collisions.)
  %   Use 1 to shift a note head to the right.
  %   Use -1 to shift a note head to the left.
  %
  % The amount of the offset is automatically determined based on
  %   the width of the notehead and the width of the stem.
  %   (When there is a stem, a note head is offset by the width of the notehead
  %   minus half the width of the stem.  This will correctly align the note head
  %   with any others above or below it on the same side of the stem.)
  %
  % You can use larger or smaller values (like 1.1 or -0.9)
  %   to adjust the amount of the offset.
  %
  % In some cases offsetting a note head will cause the stem to no longer
  %   attach to it properly.  (The main (or only?) case where this is needed
  %   is when a note head that is at the end of a stem has been offset to the
  %   non-default side of the stem.)  To fix this, you can override the 'stem-attachment
  %   property.  The adjustStem function below makes this easier.  It takes a pair of
  %   numbers.  The first number adjusts the stem attachment on the X-axis (left or right)
  %   and the second number adjusts it on the Y-axis (up or down).  The first number
  %   indicates a multiple of the width of the stem that is added to the stem attachment
  %   position on the X-axis.  The second number is multiplied by the default position
  %   on the Y-axis to arrive at the new position on the Y-axis.  See examples below.
  %
  % In a case where the parent note head of a Script is offset, the
  %   setOtherScriptParent function below can be used to select a different
  %   parent note head, in order to keep the Script in its original position.  See
  %   example below.
  %
  % Credit goes to David Nalesnik who is the original author of this solution, and
  %   to Thomas Morley for significant enhancements. Contributed by Paul Morris.

  #(define ((shift offsets) grob)
  "Defines how NoteHeads should be moved according to the given list of offsets."
  (let* (
  ;; NoteHeads
          ;; Get the NoteHeads of the NoteColumn
          (note-heads (ly:grob-array->list (ly:grob-object grob 'note-heads)))
          ;; Get their durations
          (nh-duration-log
            (map
              (lambda (note-head-grobs)
                (ly:grob-property note-head-grobs 'duration-log))
              note-heads))
          ;; Get their length in X-axis-direction
          (stencils-x-lengths
            (map
              (lambda (x)
                  (let* ((grob-x-ext (ly:grob-extent x grob X)))
                    (if (interval-sane? grob-x-ext)
                        (interval-length grob-x-ext)
                        0)))
              note-heads))
  ;; Stem
          (stem (ly:grob-object grob 'stem))
          (stem-thick (ly:grob-property stem 'thickness 1.3))
          (stem-x-width (if (ly:grob? stem)
                            (let ((stem-x-ext (ly:grob-extent stem grob X)))
                              (if (interval-sane? stem-x-ext)
                                  (interval-length stem-x-ext)
                                  (/ stem-thick 10)))
                            ;; Fall back
                            ;; TODO is it ever used?
                            (/ stem-thick 10)))
          (stem-dir (ly:grob-property stem 'direction))
          ;; Calculate a value to compensate the stem-extension
          (stem-x-corr
            (map
              (lambda (q)
                ;; TODO better coding if (<= log 0)
                (cond ((and (= q 0) (= stem-dir 1))
                        (* -1 (+ 2  (* -4 stem-x-width))))
                      ((and (< q 0) (= stem-dir 1))
                        (* -1 (+ 2  (* -1 stem-x-width))))
                      ((< q 0)
                        (* 2 stem-x-width))
                      (else (/ stem-x-width 2))))
              nh-duration-log)))
  ;; Final Calculation for moving the NoteHeads
    (for-each
      (lambda (nh nh-x-length off x-corr)
          (if (= off 0)
            #f
            (ly:grob-translate-axis! nh (* off (- nh-x-length x-corr)) X)))
      note-heads stencils-x-lengths offsets stem-x-corr)))

  displaceHeads =
  #(define-music-function (parser location offsets) (list?)
  "
  Moves the NoteHeads, using (shift offsets)
  "
  #{
    \once \override NoteColumn.before-line-breaking = #(shift offsets)
  #})

  adjustStem =
  #(define-music-function (parser location val)(pair?)
  "
  Adjust 'stem-attachment via
  adding multiples of the stem-width to the x-default (car val)
  and multiplying the y-default with (cdr val).
  "
  #{
    \once \override NoteHead.before-line-breaking =
    #(lambda (grob)
      (let* ((stem-at (ly:grob-property grob 'stem-attachment))
              (stem (ly:grob-object grob 'stem))
              (stem-x-width (interval-length (ly:grob-property stem 'X-extent))))
      (ly:grob-set-property!
        grob
        'stem-attachment
        (cons (+ (car stem-at) (* stem-x-width (car val))) (* (cdr val) (cdr stem-at)))
        )))
  #})

  setOtherScriptParent =
  #(define-music-function (parser location which-note-head)(integer?)
  "
  If the parent-NoteHead of a Script is moved, another parent from the
  NoteColumn could be chosen.
  The NoteHeads are numbered 1 2 3 ...
  not 0 1 2 ...
  "
  #{
          %% Let "staccato" be centered on NoteHead, if Stem 'direction is forced
          %% with \stemUp, \stemDown, \voiceOne, \voiceTwo etc
          \once \override Script.toward-stem-shift = #0

          \once \override Script.after-line-breaking =
            #(lambda (grob)
              (let* ((note-head (ly:grob-parent grob X))
                      (note-column (ly:grob-parent note-head X))
                      (note-heads-list
                        (ly:grob-array->list
                          (ly:grob-object note-column 'note-heads)))
                      (count-note-heads (length note-heads-list)))
              (if (> which-note-head count-note-heads)
                (ly:warning "Can't find specified note-head - ignoring")
                (set! (ly:grob-parent grob X)
                      (list-ref note-heads-list (- which-note-head 1))))))
  #})
