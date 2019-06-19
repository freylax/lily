\version "2.19.82"
#(set-global-staff-size 18)
\include "jazzchords.ily"
\include "jazzextras.ily"
\include "chordbass.ily"
\include "anatevka.ily"
\language "english"

sheetName = #"To Life"
sheetNr   = #"6"

bookTitle = \markup {
  \fontsize #3 \larger \larger
  \line { \box{ #sheetNr } #sheetName }
}
\header { title = \bookTitle  tagline = ##f }

\paper {
  #(set-paper-size "a4")
  indent = 0\mm
  between-system-space = 0.5\cm
  between-system-padding = #0
  %%set to ##t if your score is less than one page:
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  %page-count = #1
  markup-system-spacing = #'((basic-distance . 2)
                             (minimum-distance . 2)
                             (padding . 1))
  print-page-number = ##t
  print-first-page-number = ##t
  oddHeaderMarkup = \markup \null
  evenHeaderMarkup = \markup \null
  oddFooterMarkup = \markup {
    \fill-line {
      \on-the-fly \print-page-number-check-first
      \line{
        \box{ #sheetNr } #sheetName \hspace #1
        - \hspace #1 \fromproperty #'page:page-number-string
      }
    }
  }
  evenFooterMarkup = \oddFooterMarkup
}

#(define print-at-bars
   (lambda (x y) (not (eq? (member x
    '(1 9 29 31 37 43 63 75 79 142 158 173 181 189 197 )) #f))))


alive = { s1*72 }

Annotation= {
}
Notes = {
  \set Score.barNumberVisibility = #print-at-bars
  \accidentalStyle modern-voice-cautionary
  \override BreathingSign.text = \markup {
      \musicglyph #"scripts.caesura.curved"
    }
  \relative c'' {
    \time 2/2
    s4 \breathe s4 \breathe s4 \breathe s4 \breathe
    \key c \minor
    \repeat volta 2 {
      \set Score.currentBarNumber = #1
      \set Score.barNumberFormatter = #(sixtuple-bar-number 14 46 79 93 125)
      \once\override Score.RehearsalMark.self-alignment-X = -1.8
      \once\override Score.RehearsalMark.Y-offset = #0
      \mark\markup{\left-align{\box{\fontsize #4 A}}}
      s1*6
      r2 << { \voiceOne c8^"1st" cs d e }
         \new Voice { \voiceTwo c8_"2nd" bf af g } >>
      \oneVoice
      f'4 r r2
      s1*6
      \mark \markup{\fontsize #4 {
        \arrow\box{C}
      }}

    }
    r4 c,2 d4 |
    e \override ParenthesesItem.font-size = #5
    \startParenthesis \parenthesize c^"1st only" d
    \endParenthesis \parenthesize e

    \break
    \set Score.currentBarNumber = #31
    \set Score.barNumberFormatter = #(quadruple-bar-number 8 79 87)
    \mark\markup{\left-align{\box{\fontsize #4 B}}}
    \repeat volta 2 { s1*4
                      \set Score.barNumberFormatter = #(double-bar-number 79) }

    \alternative {
      {
       s1*2 r4 c d ef | e \startParenthesis \parenthesize c^"1st only" d
       \endParenthesis \parenthesize e }
      { \set Score.currentBarNumber = #43
        s1*2 r4 g2 a4 | b g a b }
    }
    \bar "||"
    \once\override Score.RehearsalMark.self-alignment-X = -0.5
    \mark \markup{\fontsize #4 {\arrow\box{AC}
      }}

    s1
    \bar "||"
    \break
    \mark \markup{\fontsize #4 {\box{C}}}
    \override NoteHead.style = #'slash
    b4 b2
    \revert NoteHead.style
    d,4 | ef fs g as | b d ef g
    \once\override Score.RehearsalMark.self-alignment-X = 1.8
    \mark \markup{\fontsize #4 {
        \arrow\box{D}
      }}
    %\bar "||"
    \set Score.currentBarNumber = #63
    \set Score.barNumberFormatter = #(double-bar-number 8)
    \repeat volta 2 {
      e,2 e | f f | e e4-. f-. | e-. d-. c2 |
    } \alternative { {
      e2 e | f f | c4 \breathe af'_"unisono" g f | e c e f |
    } {

    \set Score.currentBarNumber = #75
    \set Score.barNumberFormatter = #robust-bar-number-function
    c'2 g |}
    } af4 g f2 | ef2 df | c4 e_"unisono" df c |
    \repeat volta 2 { \set Score.currentBarNumber = #79 s1 }
    \once\override Score.RehearsalMark.self-alignment-X = -0.5
    \mark \markup{\fontsize #4 {
        \arrow\box{ABACD}
      }}

    s1
    %\bar "||"
    \break
    \once\override Score.RehearsalMark.self-alignment-X = -0.5
    \mark \markup{\fontsize #4 {
        \box{D}
      }}
    \repeat volta 2 {
      \set Score.currentBarNumber = #142
      \set Score.barNumberFormatter = #(double-bar-number 8)
       c'4(_"clarinet" e) e f | \acciaccatura fs8 g2 \acciaccatura fs8 g2
       bf4( af16 bf af8 g4) f |
       e2 e |
       bf'4( af16 bf af8 g4) f |
       e4 f e16( f e8 df4) |
    } \alternative {
      { e1( | e1 ) }
      { c4 e2( f4) | g ef d df | }
    } \break
    \repeat volta 2 {
      \set Score.currentBarNumber = #158
      r4 c \acciaccatura e8 f4 g | af bf c d |
      ef f, fs g | ef c' af g |}
    \alternative { {
      fs ef' d c | b c cs d |
      r4 c2 g4 | bf bf bf bf |
    } {
      fs4  c' bf a |
    } }
     af a bf a | g4 r4 r2 \fermata
    \bar "||"
    \break
    \time 4/4
    \set Score.currentBarNumber = #173
    \set Score.barNumberFormatter = #robust-bar-number-function
    b,,4(_"bd" d f af)
    g2 r |
    c2 r |
    fs, a |
    f2 f4( af)
    g2 r |
    c2 c |
    r4 g'8 fs f d b af |
    \break
    r2 d,2( | ef g) | af2( c4 d) | ef2( d4 c) |
    d2( f, | ef g) | f( fs) | r2 g'4 r4 |
    \time 2/2
    \repeat volta 2 {
      g,2( af4 g) | f2( g4 f) | c'2( d4 c) | r2 g'4 r4 |
    }
    \break
    \set Score.currentBarNumber = #197

    g,1(\startTrillSpan g1)\stopTrillSpan
    af1\trill | fs2\trill a\trill
    g1(\startTrillSpan g1)\stopTrillSpan
    af2\trill \grace { g16( af } a4)-. r4 r2 g'4-^ r4
    \bar "|."
  }

}
ChrdsUp = \notemode {
  \override NoteHead.style = #'slash
  \alive
}
Chrds = \chordmode {
  \gotoCtx "staff"
  g4 d:m/a g:/b g:7
  d1:7 | g:7 |
  \repeat percent 2 { c1:m }
  \repeat percent 2 { c1:7 }
  \gotoCtx "chrds-up"
  f2:m c:7/g | f1:m
  \gotoCtx "staff"
  bf1:7 | ef | af:6 |
  df2 \set chordBassOnly = ##t df2:/c
  bf:m bf:m/af g1:7
  \gotoCtx "chrds-up"
  c1:7 | s1 |
  \gotoCtx "staff"
  \repeat percent 2 { f:m }
  \repeat percent 2 { c:m }
  d:7 g:7
  \gotoCtx "chrds-up"
  c:m c:7
  \gotoCtx "staff"
  \repeat percent 2 { d:7 }
  \gotoCtx "chrds-up"
  g:7 s1
  s1
  g:7 s1*2
  c1 | f:m  |  c | s |
  c1 | f:m  |  c | s |
  c | f:m | df | c |
  \gotoCtx "staff" c:m
  s1
  \gotoCtx "chrds-up"
  c | s1*7
  c1 | c:7 |
  f:m | s | c:m | s | d:7 | g:7 | c | c:7 |
  d:7 | s | g:7 |
  \set chordBassOnly = ##t
  g2:7 g:7/b | c:m c:m/ef | f:m f:m/af | a:dim fs:dim | g:7 g:7/b |
  c:m c:m/ef | f:m d:7  | s1
  g2:7 g:7/b | c:m c:m/ef | f:m f:m/af | a:dim fs:dim | g:7 g:7/b |
  c:m c:m/ef | f:m d:7  | s2 g:7
  c1:7 | f:m | fs:dim | s2 g:7
  g2:7 g:7/b | c:m c:m/ef | f:m f:m/af | a:dim fs:dim | g:7 g:7/b |
  c:m c:m/ef | f:m d:7  | s2 g:7

}


\layout {
  \context {
    \Score
    \override BarNumber.break-visibility = ##(#f #t #t)
    \override BarNumber.Y-offset = 0
    \override BarNumber.X-offset = -2
  }
}

\score {
  \new StaffGroup \with {
      \override StaffGrouper.staff-staff-spacing =
    #'((basic-distance . 4)
       (minimum-distance . 0)
       (padding . 0)
       (stretchability . 0))
  }
  <<
    \new Staff = "chrds-up" \with {
      \accepts ChordNames
      \consists Percent_repeat_engraver
      \remove Staff_symbol_engraver
      \remove Time_signature_engraver
      \remove Clef_engraver
      \override ChordName.Y-offset = #-1.5
    } \ChrdsUp
    \new Staff = "staff" \with {
      \accepts ChordNames
      \consists Percent_repeat_engraver
    }
      <<
        \new ChordNames \with {
          \override ChordName.Y-offset = #-1.5
        } \Chrds
        \context Voice = "voice" \Notes
      >>
    \new ChordNames = "chrds-down" \with {
      \consists Percent_repeat_engraver
      \override PercentRepeat.Y-offset = #1
      \override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
    } \chordmode{\alive}
    \context Voice = "voice" \Annotation
  >>
}