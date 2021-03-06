\version "2.19.82"
%#(ly:expect-warning (_ "cannot have note heads "))
#(set-global-staff-size 18)
\include "jazzchords.ily"
\include "jazzextras.ily"
\include "chordbass.ily"
\include "anatevka.ily"
\language "english"

sheetName = #"Rich Man"
sheetNr   = #"4"

bookTitle = \markup {
  \fontsize #3 \larger \larger
  \line { \box{ #sheetNr } #sheetName }
}
\header {
  title = \bookTitle
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  indent = 0\mm
  between-system-space = 0.5\cm
  between-system-padding = #0
  %%set to ##t if your score is less than one page:
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  page-count = #1
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
        \hspace #1 - \commitDate
      }
    }
  }
  evenFooterMarkup = \oddFooterMarkup
}

#(define print-at-bars
   (lambda (x y) (not (eq? (member x
    '(1 4 8 10 18 20 24 28 32 36 40 44 48 51
       68 72 76 80 84 88 92 96 100 104 108
       112 116 120 124 128 132 136 )) #f))))


alive = { s1*40 }


Annotation= {
}
Notes = {
  \set Score.barNumberVisibility = #print-at-bars
  \accidentalStyle neo-modern-voice-cautionary
  \key df \major
  \bar ".|:"
  s1.
  \once\override Score.RehearsalMark.self-alignment-X = -1
  \once\override Score.RehearsalMark.Y-offset = #-5
  \mark\markup{\left-align{\box{\fontsize #4 A}}}
  s1*9
  \relative c' {
    s4 f4_\fermata gf_\fermata af_\fermata |
    \bar "||"
    \once\override Score.RehearsalMark.self-alignment-X = -1.5
    \once\override Score.RehearsalMark.X-offset = #4
    \once\override Score.RehearsalMark.Y-offset = #-2
    \mark\markup{\box{\fontsize #4 B}}
    \set Score.currentBarNumber = #20
    gf1 | gf4 af8 bff af4 gf |
    af1 | r4 g16_2_[ af_3 bff_2 cf_3] df4_4 r |
    r4 ef, r ef | f f8 gf f4 ef |
    r4 f8( af) af( df) df( f) | af4 r4 r2 |
    s1*3
    r4 ef16_5 df_4 cf_3 bff_2 af8_3 r r4 |
    r1 | a,1 |
    %\override Fingering.staff-padding = #'()
    \set fingeringOrientations = #'(right)
    r4 <ef'-2 af-5>8 <d-3 g-4>8_\markup{rall.}
    <ef-2 af-5>8 <e-2 bf'-4>4 <f-3 b-5>8 |
    <gf-2 c-4>4
    \unset fingeringOrientations
    r\fermata r\fermata r\fermata
    \break
    \bar "||"
    \once\override Score.RehearsalMark.self-alignment-X = 2
    \once\override Score.RehearsalMark.X-offset = #10
    \once\override Score.RehearsalMark.Y-offset = #-1
    \mark \markup{ \box{\fontsize #4 B'}}
    s1*2
    \clef bass r8 df, f af ef' df c cf |
    bf4 \clef treble af'4 gf f |
    ef ef d df |
    c4 f8 gf f4 ef | df4 r4 r2 |
    r1 | \clef bass df,2 ef | ff ef | ef4 df bf cf |
    \override Fingering.staff-padding = #'()
    d \clef treble gf'( f) r4 | r df df df |
    df1 |
    \set fingeringOrientations = #'(right)
    r4 <ef-2 af-5>8 <d-3 g-4>8
    <ef-2 af-5>8 <e-2 bf'-4>4 <f-3 b-5>8 |
    \once\override Score.RehearsalMark.self-alignment-X = #LEFT
    \once\override Score.RehearsalMark.Y-offset = #-2
    \mark \markup{\fontsize #4 {\arrow\box{AA}}}
    <gf-2 c-4>2_\fermata
    \unset fingeringOrientations
    r_\fermata
    \bar "||"
    \set Score.currentBarNumber = #68
    \once\override Score.RehearsalMark.self-alignment-X = #LEFT
    \once\override Score.RehearsalMark.Y-offset = #-1
    \once\override Score.RehearsalMark.X-offset = #3

    \mark \markup{\left-align{ \box{\fontsize #4 B*}}}
    s1*3 r4 d2( df4)
    s1*2 r4 \tuplet 3/2 {r8 df' df} \tuplet 3/2 {ef4 df ef}
    f4-> r4 r2
    s1 s2. d,4\glissando |
    af''4 r4 bf,, b |
    \slurDown
    r4 gf'( f df') |
    s1 s2. f,4 |
    \slurUp
    af c8( b c) df4 d8 |
    ef4 r4 r2
    \bar "||"
    cs,8-4 gs'-3 a-2 b-3 cs-4 b-3 a-2 gs-3 | a-2 b-3 cs-4  d-3 e-5 d\prall-4 cs4-3 |
    a1-2 | fs | fs | af2 r2_\fermata |
    \time 2/4
    \override NoteHead.font-size = #-2
    \tuplet 3/2 { f'8^"boi boi boi..." d cs } \tuplet 3/2 { f8 d cs }
    \revert NoteHead.font-size
    \time 3/4
      \set fingeringOrientations = #'(right)
    <df,-4 f-2 df'-5>4 <ef-2 gf-3 df'> <f-3 af-4 df>
    \bar "||" \break
    \time 4/4
    \once\override Score.RehearsalMark.self-alignment-X = #LEFT
    \once\override Score.RehearsalMark.X-offset = #10
    \once\override Score.RehearsalMark.Y-offset = #-2
    \mark \markup{\box{\fontsize #4 B**}}
    s1*3 r4 gf8 af bff cf df4  |
    s1*2
    \set fingeringOrientations = #'(right)
    r4 <ef,-2 af-5>8 <d-3 g-4>8
    <ef-2 af-5>8 <e-2 bf'-4>4 <f-3 b-5>8 |
    <gf-2 c-4>4
    \unset fingeringOrientations
    r4_\fermata r4_\fermata r4_\fermata |
    \bar "||" \break
    \once\override Score.RehearsalMark.self-alignment-X = #LEFT
    \once\override Score.RehearsalMark.X-offset = #10
    \once\override Score.RehearsalMark.Y-offset = #-1
    \mark \markup{ \box{\fontsize #4 B'*}}
    s1_\pp s1*2
    s4 <af cf> <gf bf> <f af>
    s1*4
    gf1 ~ | gf1  | af1 | cf2( df) |
    \set fingeringOrientations = #'(right)
    <bff-2 df-4>1 | <bf-2 df-4> |
    r4 <d-3 f-4>( <ef-2 gf-4>) <f-3 a-5>( |
    <gf-2 bf-4>2) r2\fermata |
    \unset fingeringOrientations
    \bar "||"
    \once\override Score.RehearsalMark.self-alignment-X = #-3
    \once\override Score.RehearsalMark.Y-offset = #-1
    \mark \markup{\box{\fontsize #4 A'}}
    f,8_3\p ef_2 f ef df4_5 df | r4 df8 ef f ef f ef |
    df_5 ef_2 f_3 gf_2 af_4 gf_2 af gf |
    << {\voiceOne r4 eff'8-. 8-. df8-. c8-. r }
       \new Voice{\voiceTwo f,2 s2 }
    >>
    \oneVoice
    gf4 f ff ef | df8 c bf c df2 |
    df8 c bf c df4 bf |
    ef2\pp\glissando c'4 r
    f,8\p ef f ef df4 df | r4 df8 ef f ef f ef |
    df ef f gf af gf af gf | f4-. df8-. 8-. ef4-. f-. |
    \set fingeringOrientations = #'(right)
    <c-4 ef-2>1( <df-5 ff-3>)  <ef-2 gf-3>( <df-5 ff-3>)
    <gf-2 bff-3 c-4 ef-5>
    <af df ff>4( <df f af>) <d f af cf>2 |
    <a df e a>4 r r2 |
    af8 gf af gf f4 df |
    r4 f8 gf af gf af gf |
    \set fingeringOrientations = #'(right)
    <af-2 df-3>8 <bf-2 ef-4> <c-2 f-3> <df-2 gf-4>
    <ef-2 af-3>( <d-2 f-3>) <ef-2 af-4>( <d-2 f-3 >) |
    \set fingeringOrientations = #'(right)
    <ef-2 g-3 cf-4>4_^ <e-2 af-3 c-4>_^ <f-2 af-3 df-4> r
    \bar "|."

  }
}

ChrdsUp = \notemode {
  \override NoteHead.style = #'slash
  \time 6/4
  \repeat volta 2
  <<
    {\voiceOne r4 d'8 d'r4 d'4 r4 d'4 }
    {\voiceTwo g2 g2 g2 }
  >>
  \time 4/4
  <<
    {\voiceOne r4 d'8 d'r4 d'}
    {\voiceTwo g2 g2}
  >> \oneVoice
  s1*6
  g'4 r4 r2
  s1
  g'4 r4 r2
  s1*3 | r4 s2 r4 |
  s1*4 |
  s1*3 | r4 s2 r4 |
  s1*18
  r4 s4 r4 g' |
  s1 %g'2 r2 |
  s1*12
  \repeat unfold 2 {g'4 r4 r4 g'4}
  s1 | g'4 r4 r2 |
  s1*2 \stemDown
  c'2. 4 | 2. 4 | 4. 8 4. 8 | 1
  \stemNeutral
  s2 s2.
  s1*15 g'4 r4 r2 |
  s1*15 s4 r4 r2 |

}

Chrds = \chordmode {
  \gotoCtx "staff"
  df1.
  \repeat volta 2 {
    \set Score.currentBarNumber = #4
    \set Score.barNumberFormatter = #(quadruple-bar-number 8 48 56)
    \gotoCtx "staff"
    \repeat percent 4 df1
    af1:7
    df2:m \once \set chordBassOnly = ##t  df2/cf
  } \alternative {
   {
     \set Score.currentBarNumber = #10
     \set Score.barNumberFormatter = #(double-bar-number 48)
     bf1:dim7 af:7 \break
   }
   { \override Score.BarNumber.Y-offset = #-1
     \set Score.currentBarNumber = #18
     bf2:dim7 af2:7 | df4 s2. }
  }
  \override Score.BarNumber.Y-offset = #-1
  \set Score.barNumberFormatter = #robust-bar-number-function
  \gotoCtx "chrds-up"
  gf1:m | b:7  | e:7+ | s4 af:m5-7 df:7 s4 |
  gf1:m | af:7 | df  | s4 df2.:7 |
  \gotoCtx "staff"
  gf1:m | b:7  | e:7+ | \gotoCtx "chrds-up" s4 af:m5-7 df:7 s4 |
  %\gotoCtx "staff"
  gf1:m | g:dim7 | af:7 | s1 |
  \gotoCtx "staff" gf1 | af:7 | \gotoCtx"chrds-up" df | bf:7 |
  ef:m7 | af:7 | df | df:7 |
  gf:m  | s2 b2:7 | e1:6 | af2:m5-7 df:7 |
  gf1:m | g:dim7 | s4 af4:7 s2 | s1 |
  \gotoCtx "staff"
  \set Score.currentBarNumber = #68
  gf1:m | b:7  | e:7+ | s4 \gotoCtx "chrds-up" af:m5-7 df:7 s4 |
  \gotoCtx "staff" gf1:m | af:7 |
  \gotoCtx "chrds-up" df  | df1:7 |
  \gotoCtx "staff"
  gf1:m | b:7 | \gotoCtx "chrds-up" e:7+ | s4 af:m5-7 df:7 s4 |
  \gotoCtx "staff"
  gf1:m | g:dim7 | \gotoCtx "chrds-up" af:7 | s1 |
  s1*2
  fs2.:m  \set chordBassOnly = ##t fs4:/e |
  d2. d4/cs |
  b4.:m b8:/a b4.:/gs b8:/fs |
  \set chordBassOnly = ##f
  df1:7/f
  s2 | df2.:7 |
  \gotoCtx "staff"
  gf1:m | b:7  | e:7+ | s4 \gotoCtx "chrds-up" af:m5-7 df:7 s4 |
  \gotoCtx "staff" gf1:m | g:dim |
  \gotoCtx "chrds-up" af:7  | df2 df2:7 |
  \gotoCtx "staff" gf1 | af:7 |
  df | bf:7 |
  ef:m7 | af:7 | df | df:7 |
  \gotoCtx"chrds-up"
  gf:m  | s2 b2:7 | e1:6 | af2:m5-7 df:7 |
  gf1:m | g:dim7 | s4 af4:7 s2 | s1 |
  \repeat percent 3 df1 s1
  af:7 | df2:m \set chordBassOnly = ##t df:/cf |
  bf:dim \parenthesize ef:7 |
  af4:7 s2.
  \repeat percent 4 df1
  af1:9- | df1:m | af1:9- | df1:m |
  af:9- | df4:m df4 d2:dim | ef2:7.11+ af2:7
  \repeat percent 2 df1
  s1
  ef4:aug7 af:aug7 df
}

\layout {
  \context {
    \Score
    \override BarNumber.break-visibility = ##(#f #t #t)
    \override BarNumber.Y-offset = -3
    \override BarNumber.X-offset = 0
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
        \context Voice = "voice" \with {
        } \Notes
      >>
    \new ChordNames = "chrds-down" \with {
      \consists Percent_repeat_engraver
      \override PercentRepeat.Y-offset = #1
      \override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
    } \chordmode{\alive}
    \context Voice = "voice" \Annotation
  >>
}
