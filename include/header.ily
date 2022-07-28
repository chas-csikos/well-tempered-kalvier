\paper {
  %%
  print-first-page-number = ##t

  scoreTitleMarkup =
  \markup {
    \column {
      \on-the-fly \print-all-headers {
        \bookTitleMarkup \hspace #1
      }
        \fill-line {
        %  \on-the-fly #not-first-page \fromproperty #'header:piece
        %  \on-the-fly #not-first-page \fromproperty #'header:opus
        }
      }
  }

  bookTitleMarkup =
  \markup {

    \fill-line{
      % \right-column {
        % \abs-fontsize #10 \override #'(font-features . ("smcp""onum"))
        % \fromproperty#'header:opus
      % }
      \center-column {
        \bold
        \abs-fontsize #14
        \override #'(font-features . ("smcp"))
          \fromproperty #'header:title
      }
      % \left-column {
      % \abs-fontsize #10 \override #'(font-features . ("smcp""onum"))
        % \fromproperty#'header:key
      % }
    }
  }

  evenHeaderMarkup =
  \markup {
    \fill-line {
      \left-align {
        \line {
          \on-the-fly \print-page-number-check-first
          \bold
          \abs-fontsize #12
            \fromproperty #'page:page-number-string " "

          \abs-fontsize #12
          \override #'(font-features . ("smcp""onum"))
            \fromproperty #'header:titleRunner

          \abs-fontsize #10
          \override #'(font-features . ("smcp""onum"))
            \fromproperty #'header:key

        }
      }
      \null
      \right-align {
        \line {
          \override #'(font-features . ("smcp""onum"))
          \abs-fontsize #10
            \fromproperty #'header:opus
            \abs-fontsize #12
            \override #'(font-features . ("smcp""onum"))
              \fromproperty #'header:composerRunner
        }
      }
    }
  }

  oddHeaderMarkup = \markup {
    \fill-line {
      \left-align {
        \line {
          \abs-fontsize #12
          \override #'(font-features . ("smcp""onum"))
            \fromproperty #'header:titleRunner

          \abs-fontsize #10
          \override #'(font-features . ("smcp""onum"))
            \fromproperty #'header:key
        }
      }
      \null
      \column {
        \right-align {
          \line {
            % \on-the-fly #not-part-first-page {
              \override #'(font-features . ("smcp""onum"))
              \abs-fontsize #10
                \fromproperty #'header:opus

              \abs-fontsize #12
              \override #'(font-features . ("smcp""onum"))
                \fromproperty #'header:composerRunner
            % }
            \on-the-fly \print-page-number-check-first
            \bold
            \abs-fontsize #12 { " "
              \fromproperty #'page:page-number-string }
          }
        }
      }
    }
  }

}
