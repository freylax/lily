\version "2.18.2"
\language "english"


ViolinMotiv = {
         g4 | c g g g | g2. g4 | f f e f   | g2. g4 |
              c g g g | g2. g4 | f f ef df
}
ViolinMotivi = {
         g4 | c g g g   | g4 r r g |
              f f e f   | g4 r r g |
              c g g g   | g2  g4 g |
              f f ef df | c
}


FluteMotive = { c4 c8 d e4 f | g8 fs g af g4 e | f8 e f g f4 df }
FluteMotivei = { c4 c8 d e4 f | g8 fs g af g4. e8 | f8 e f g f4 df }
FluteMotiveii = { c4 c8 d e4. f8 | g8 fs g af g4. e8 | f8 e f g f4 df }

FluteMotiveI = { e8 ds e f e4 g | c g g g | g2. d4 | f f ef df  }


adLibRep = \markup{\italic{ ad lib. repeat}}

Annotation = {
  s2. s4\mf^"Violine"
  s1*7 | s1_"Flöte"
  s1\mf | s1*3 | s1\p
  s1*18
  \repeat volta 2
  {s1\p_\adLibRep^\markup
    { \center-align\line{\bold TEVYE: ... keep our balance? } }
  }
  \repeat volta 2
  {s1\f_\adLibRep^\markup {\null \lower #4
              \column{\line{That I can tell you }
                      \line{in one Word: Tradition!}}}}
  \repeat volta 2 s1\p
  s1*16
  s4 s2.\p s1*5
  % page 4
  s1-\adLibRep^\markup
    { \column{\line{\bold TEVYE: ...and what }
              \line{ God expects him to do.}}}
  s2\f | s1*2
  % key d
  s1\p | s1*3
  s1*4 |
  s1\mf
}


Violin = {
  \relative c''' {\ViolinMotiv c1 }
  \relative c'' {\FluteMotive e8 ds e f e2}
  \relative c'' {\FluteMotive }
  \relative c'' {c1 | c4 r g' r | c r g r | df' r af r | }
  \relative c'' {\FluteMotiveI}
  \relative c'' { f f4 ef df }
}

Flute = {
  s4
  \relative c' {\FluteMotive e8 ds e f e2}
  \relative c' {\FluteMotive e8 ds e f e4 g}
  \relative c' {
    c1 | e | af | g2. df4
    c1 | e | af }
  \relative c' {\FluteMotiveI}
  \relative c' { c1 | c'4 r g r | c r g r | df' r af r }
  \relative c''{df4\staccato r af\staccato r }
}

VoiceMotiveI = { g8 | g c ~ c2. ~ | c4. c8 c c4. | r1 | r8 c c c }
VoiceMotiveIt = { g8 | g <c e> ~ <c e>2. ~ | <c e>4. <c e>8 <c e> <c e>4. |
                  r1 | r8 <c e> <c e> <c e> }
VoiceMotiveIi = { g8 | g c ~ c2. ~ | c4. c8 c2 | r1 | r8 c c c }
VoiceMotiveIti = { g8 | g <c e> ~ <c e>2. ~ | <c e>4. <c e>8 <c e>2 |
                  r1 | r8 <c e> <c e> <c e> }

VoiceMotiveII = {
  \repeat unfold 2 { a8 b cs d e fs gs a | b4 e, e r8 e |f4 bf }
  \alternative { {bf r8 c8 | bf4 a a2 } {bf8 a g f | g4 f e }}
}
SonsMotive = {
  \repeat unfold 2 {af4 | df af df af | df cf bf af }
  \alternative{ { b cs b a | af r r }
                { a r r af | g8 f4. ~ f4 r8}}
}
SonsMotivei = {
  \repeat unfold 2 {g4 | c g c g | c bf a g }
  \alternative{ { bf c bf af | g r r }
                { af r r g | f8 e4. ~ e2}}
}

VerseMotiveI = \lyricmode { Tra -- di -- tion __  tra -- di -- tion tra -- di -- tion }
VersePapas = \lyricmode {
  Who, day and night, Must scram -- ble for a liv -- ing,
  Feed a wife and chil -- dren,
  Say his dai -- ly prayers?
  And who has the right, As mas -- ter of the house, To have the fi -- nal word at home?
}
VersePapasi = \lyricmode {
  The pa -- pa, __ the pa -- pa tra -- di -- tion.
}
VerseMamas = \lyricmode {
  Who must know the way to make a pro -- per home,
  A qui -- et home, a ko -- sher home?
  Who must raise a fam -- i -- ly and run the home
  So pa -- pa's free to read the ho -- ly book?
}
VerseMamasi = \lyricmode {
  The ma -- ma, __ the ma -- ma tra -- di -- tion.
}
VerseSons = \lyricmode {
  At three I start -- ed He -- brew school, At ten
  I learned a trade. I hear they picked a bride for me.
  I hope she's pret -- ty. __
}
VerseSonsi = \lyricmode {
  The so -- ns, __ the sons tra -- di -- tion.
}
VerseDaughters = \lyricmode {
  And who does ma -- ma teach To mend and tend and fix,
  Pre -- par -- ing me to mar -- ry Who -- ev -- ver pa -- pa
  picks?
}
VerseDaughtersi = \lyricmode {
  The daugh -- ters, __ the daugh -- ters __ tra -- di -- tion.
}

Voice = \relative c'' {
    r2 r4 r8
    \VoiceMotiveI r4 r8 \VoiceMotiveIt r2
    s1*15 s2 s1*2
    \key d \major
    \transpose c d {
      \relative c' {\FluteMotive e8 ds e f e4 g}
      \relative c' {\FluteMotivei | c4 r r r8}
      \relative c'' {\VoiceMotiveI r4 r8 }
      \relative c'' {\VoiceMotiveIt r2 }
    }
    \key a \major
    r1*2
    \relative c' \VoiceMotiveII
    \transpose c a {
      \relative c' {r4 | r2 r4 r8 \VoiceMotiveI r4 r8 }
      \relative c' {\VoiceMotiveIt r2 }
    }
    \key df \major
    r1 r2 r4
    \relative c'' \SonsMotive
    \transpose c df {
      \relative c'' {\VoiceMotiveIi r4 r8 }
      \relative c'' {\VoiceMotiveIti r2 }
    }
  r2
  \key b\major
  r1 | r2 r4 \transpose c b {
      \relative c' {\ViolinMotivi r4 r4 r8 }
      \relative c' {\VoiceMotiveI r4 r8 }
      \relative c' {\VoiceMotiveIt r2 }
  }
  \key c \major
  r2
  % Voice Daughters
  r2 r4
  \relative c'' {
    \ViolinMotivi  r2 r4 | r2 r4 r8 g' | g c4. ~ c2 |
    r8 c c c r4 r8 \VoiceMotiveIt r2 |
  }
}
Verse = { \VerseMotiveI \VerseMotiveI
          \VersePapas \VersePapasi \VersePapasi
          \VerseMamas \VerseMamasi \VerseMamasi
          \VerseSons \VerseSonsi \VerseSonsi
          \VerseDaughters \VerseDaughtersi \VerseDaughtersi
}
VoicePapa = {
  \relative c' {\FluteMotive e8 ds e f e4 g}
  \relative c' {\FluteMotiveii | c4 r r r8}
  \relative c'' {g8 | g c ~ c2. ~ | c1 ~ | c1 }
}
VoiceMama = {
  \transpose a c {\relative c'' \VoiceMotiveII}
  \relative c'' {r8 g8 | g c ~ c2. ~ | c1 }
}
VoiceSons = {
  \relative c'' {
    \SonsMotivei
    r4 r8 g8 g8 c4. ~ | c1
  }
}


Pause = { s1 s1*16 s1*16 }
Pausei = { s2 s1*98 }

CMotiveI = { g8( c4.) | e2 r4 e( | f1 | e8) }
CMotiveIi = { g8( e'4.) | g2 r4 e( | f1 | e8) }
CMotiveIii = \relative c' {
  <d a'>8(-> <d a' d>4.)\< | <d a' fs'>2->\fp\> r4\! <d a' fs'>4\<( |
  <ef bf' g'>1\><d a' fs'>4-.\!) r4 r\f <a' a'>8->-. r |
  <d d'>8->-. r r4\mf <fs, a>8( <fs d' fs>4.)\< |
  <fs d' a'>2\fp\> r4\! <fs d' a'>4(\< <g ef' bf'>1\> | <fs d' a'>4)-.\!
}
CMotiveIiii = \relative c' {
}

MotiveII = { \repeat unfold 3 { c4 c8 e df4 c }
             f8-. e-. f-. g-. e2 }
MotiveIII = { \repeat unfold 3
              { r4 <g c e>8-. <bf ef g>8-.
                <af df f>4-. <g c e>-. }
              <af df f>8-. e'-. f-. g-. <g, c e>4.--}
MotiveIV = { g8   | g c4. ~ c2 ~ | c2. r8
             g8-. | g <g c e>4. ~ <g c e>2 ~ | <c e>2. r8
             g8-. | g <c e g>4. ~ <c e g>2 ~ | <e g>2. r8
}
CMotiveIV = { r4 c8( e) df4( c8) }
CMotiveV = {
  r8\mp e8 e a\< a cs\! | <e, a cs>4-> r r
  <<  { \voiceOne s4 | r4 <bf' d>-> r <bf d>-> }
      \new Voice { \voiceTwo cs,(\< | d1)\! } >> \oneVoice
  <e a cs>4-> r r <d g b e> |
  <a' cs e a>4-- r8 a a cs\< cs e | <a, cs e>4->\! r r
  << { \voiceOne s4 | r4 <d f>-> r <d f>-> }
     \new Voice { \voiceTwo e,4--( | f1) } >> \oneVoice
  <e cs' e>4-> r r8\ff \repeat unfold 2 <e a cs>8-> <g c e>->
}

rqc  = \relative c' <c g' e' >4
rec  = \relative c' <c g' e' >8
rqai = \relative c' <cs a' e'>4
resdf = \relative c'' <ef f af>8-.
rqsdf = \relative c'' <ef f af>4-.
rqxdf = \relative c''' <af bf df>4-.
reb = \relative c' <b fs' ds'>8

lqc = \relative c  <c g' e' >4
lqd = \transpose c d \lqc
lha = \relative c { a4 <e' cs'>}
lec = \relative c <c g' e'>8
leb = \relative c <b fs' ds'>8
lqfss = \relative c <fs, e' as>4

bdRoc  = { r4 \rqc r \rqc }
bdRodf = \transpose c df \bdRoc
bdRoai = { r4 \rqai r4 \rqai }
bdRobfi= \transpose a bf \bdRoai
bdRoxdf= { r4 \resdf \resdf r4 \rqxdf}
bdRoxd = \transpose df d \bdRoxdf
bdLc = \relative c  { c4 < g' e' > c, < g' e' > }
bdLwc = \relative c  { c4 < g' e' > g, < g' e' > }
bdLoc = \relative c  { r4 \lqc r \lqc }
bdLodf= \transpose c df \bdLoc
bdLd  = \relative c  { d4 <a' fs'> d, <a' fs'>  }
bdLef = \transpose d ef \bdLd
bdLid = \relative c  { d4 <a' fs'> r a, }
bdLief = \transpose d ef \bdLid
bdLa = { \lha \lha }
bdLbf = \transpose a bf \bdLa
bdLxdf = \relative c { df4 <af' f'> df, <bf' f'> }
bdLdf = \relative c { df4 <af' f'> df, <af' f'> }
bdLxd = \transpose df d \bdLxdf
bddf = { <df ef f>4 ~ <df ef f>8 <cf df ef>( <df ef f>)-. r8 }
bdLbgb = \relative c
  { b4 <fs' ds'>8 <fs ds'>
    fs,8 ~ <fs fs' ds'>8 <fs' ds'> r8}
bdLiie = \relative c {
  b4 <gs' e'>8 <gs e'> b,8 ~ <b gs' e'>8 <gs' e'> r8}
bdLbgwc = \relative c  { c4 <g' e'> g,8 ~ <g g' e'> <g' e'> r }
bdLb = \relative c
  { b4 <fs' ds'>8 <fs ds'> b,4 <fs' ds'>8 <fs ds'> }
bdLec = \relative c  { c4 <g' e'>8 <g e'> c,4 <g' e'>8 <g e'>  }



BdR = {
  \bdRoc  | \bdRoc |
  \bdRoc  | \bdRoc | \bdRodf | \bdRoc |
  r2 \relative c''\CMotiveIi r8 r4 r2 |
  \relative c''\MotiveII              |
  \relative c''\MotiveIII
  \pageBreak
  <<
    \new Voice { \voiceOne \repeat volta 2 \relative c''\MotiveIV }
    \new Voice { \voiceTwo \repeat unfold 3 {s8 | s1 | \relative c'\CMotiveIV}  }
  >> r8
  % Page 4, Takt 60
  \bdRoc
  \relative c'' {
    \repeat unfold 2 { r8 <c c'>-> <c c'>-> <cs cs'>-> }
    \alternative {
      { <a d f>-> r <a d f>-> r }
      { <d f a>-> r <d f a>-> r }
    }
    r8 a-> g-> ef-> |
  } \break
  \key d \major
  r1*3 \relative c'' { r2 r8 a \acciaccatura a8( bf[ a]) }
  r1*4
  r2 \CMotiveIii r4\ff r8 \relative c' {
    <a fs' d'>8-> <a fs' d'>-> <b fs' ds'>->
  }
  \key a \major
  \relative c' { <cs a' e'>8 r8 } \rqai r4 \rqai | \bdRoai |
  \repeat unfold 2 { \bdRoai \bdRoai \bdRobfi }
  \alternative { \bdRoai { r4 \relative c' <cs a' f'>4 \rqai r\f }}
  r4 \rqai r2 |
  r4 \relative c' {\CMotiveV}
  \key df \major
  \relative c'' <af df f> \resdf \resdf r4 \rqxdf
  \repeat unfold 3 \bdRoxdf \bdRoxd
  r4 \relative c'' \bddf
  \bdRoxdf | r4 \resdf \resdf r4  \rqsdf |
  \relative c'' {r4 \repeat unfold 2 {\slurUp\acciaccatura gs'8 <a e b>4->} r4}
  \bdRoxdf |
  \relative c' {
    r2 r4 r8 <f af>8-> | <f af>->( <f af df>) r4 r f'8->( ef) |
    ef( d) d( cs) cs( b a b | <f af df>) r r4 r <c af' ef'>8 r |
    <df af' f'>4 r4 r r8 af'8-> | <f af>->( <af df f>) r4 r bf'8->( af) |
    af( gf) gf( ef) ef( d d ef | <f df af f>8)-. r r4 r8 df <df af f> <d d,> |
    \time 2/4 <ef gf, cf,>8 <df af f> <df af f> <d d,> | \time 2/2
    \key b \major
    }
  \reb r8 r4 r2 | r1 | r1 |
  \relative c''' {
    r8 b16( c b8)-. a-. \grace {b16( c16} b8-.) r8 r4 |  r1 |
    r8 b16( c b8)-. d-. \grace {b16( c16} b8-.) r8 r4 |
    r1 r1 r1 r1
    r4 ds,,8-. fs-. <ds fs b>16 b' r8 <d, fs>-. b'-. |
    <fs b d>16-> d'-> r8 r4 r4  \tuplet 3/2 {\slurDown ds,8(\< cs ds\!}
    << {\voiceTwo e1)|<b ds fs>8->}
       \new Voice {\voiceOne r4 c''8 df e16( df c b af g f e| ds8) }
    >> \oneVoice
    r8 r4 r4 <as, e' fs'> |
    <b fs' ds'>8 r fs'8-. b-.  <fs b ds>16-> ds'-> r8 <fs, b>-. ds'-. |
    <b ds fs>16-> fs'-> r8 r4 r \tuplet 3/2 {\slurDown fs,8(\< es fs\!} |
    << {\voiceTwo g1)| <b ds fs>8->}
       \new Voice {\voiceOne r8 e16( fs g fs e fs g\< as b as g as b c\! | ds8)}
    >> \oneVoice
    r8 r4 r8 <b,, b'>8->\ff <as as'>-> <b b'>->
    \key c \major
    <c c'>-> <e g c e>-> <e g c e>-> <f af df f>->
    \rec r8 r4 r2 | r1 | r1 |
    r2 r8 <e bf' df> <f af df> <fs b ds> |
    <g c e> r r4 r2 | r1 r1 r1 r1 r1 |
    r4 r8 f <af, df f> <df f af> <f af d> <af df f> |
    \rec r8 r4 r4 <d, b' g'>8-^ r |
    <g e' c'>8-^ r <e c' g'>-> r8 r4 <e c' g'>->
    <g e' c'>8-^ r <e c' g'>-> r8 r4 <e c' g'>->
    <af df f>8 f' <a, d fs> <af df f>
    \tuplet 3/2 { <cf ff af>8 af' af }
    <a, d fs> <af df f> | <g c e>-> r r4 r4 <f b d g>8-^ r
  }
}

BdL = {
  \bdLc   | \bdLc  |
  \pageBreak
  r2 \relative c' \CMotiveI r8 r4 r2  |
  \bdLoc  | \bdLoc | \bdLodf | \lqc r4 r g |
  \repeat unfold 4 \bdLwc
  \repeat unfold 4 \bdLwc
  \repeat unfold 6 \bdLwc
  % Page 4, Takt 60
 \set Score.currentBarNumber = #60
  \repeat volta 2 \relative c {c4 r g r }
  \relative c {
    g8->-. \repeat unfold 2 { c-> c-> cs-> | d-> r d-> r r }
    c-> c-> a-> |
  }
  \pageBreak
  \bar "||"  \key d \major
  \repeat unfold 2 {\bdLid | \bdLid | \bdLief | \bdLid }
  \repeat unfold 2 {\bdLd | \bdLd | \bdLef }
  \alternative { { \lqd r4 r  \relative c { <a a'>8 r } }
                 { \lqd r4 r8  \relative c { d-> c-> b-> } } }
  \bar "||" \key a \major
  \bdLa \bdLa
  \repeat unfold 2 { \bdLa \bdLa \bdLbf }
  \alternative { \bdLa \relative c { a4 <f' cs'> <e cs'> e, }}
  \lha \relative c { r e\mp}
  \relative c  {
    \repeat unfold 2 { \bdLa | \lha a4 r | \bdLbf }
    \alternative { { \lha r e } { a4 r4 r8 a a c } }
  }
  \bar "||" \key df \major
  \repeat unfold 4 \bdLxdf \bdLxd
  \relative c <df bf' f'>4 \relative c' \bddf
  \repeat unfold 2 \bdLxdf
  \relative c { <d a' fs'>4 <d' fs>-. <d fs>-. } r4
  \bdLdf
  \relative c {
    df4 << {\voiceOne r8 af' af( df4.)}
           \new Voice {\voiceTwo <af f'>4 df, <af' f'>} >> \oneVoice }
  \bdLdf \bdLd
  \relative c {
    <df af' f'>8 r r4 r <af gf' c>8 r
  }
  \relative c {
    df4 << {\voiceOne r8 af' af( <df f>4.)}
           \new Voice {\voiceTwo <af f'>4 df, <af' f'>} >> \oneVoice }
  \bdLdf \bdLd
  \relative c {
    <df af' f'>8 r r4 r8 df df c |
  % 2/4
    cf df df c
  }
  \bar "||" \key b\major
  \repeat unfold 4 \bdLbgb \bdLiie
  \repeat unfold 3 \bdLbgb \bdLbgwc
  \leb r8 r4 r2
  \repeat unfold 2 \bdLb \bdLec
  \leb r8 r4 r4 \lqfss |
  \bdLb \bdLb \bdLec |
  \leb r8 r4 r8 \relative c { b-> a-> b-> }
  \bar "||" \key c \major \time 2/4
  \relative c { c8 c c df }
  \time 2/2
  \set Score.currentBarNumber = #132
  \lec r8 r4 r2 | r1 | r1
  \relative c {
    r2 r8 g8 g  g | c r8 r4 r2 | r1 | r1 |
    r2 r4 r8 g | c4 <gs' e'> c, <g' e'> |
    \bdLc \bdLdf
    \lec r8 r4 r4 <g, d' b'>8-^ r |
    \repeat unfold 2 {c8-> r < g' e' >-> r c,4 < g' e' >8-> r |}
    \repeat unfold 2 {<df af' f'>8-> r r4 }
    \lec r8 r4 r4 <g, d' b'>8 r8 |
  }
}

Chords = \chords {
  \set chordChanges = ##t
  \Pause
  c1 | c |
  c  | c | df | c |
  c  | c | df | c |
  \repeat unfold 14 c1
  % Page 4, Takt 60
  c1 | \time 2/4 c2 | \time 2/2 d1 d1 |
  \repeat unfold 4 { d1 d1 | ef1 | d1 }
  a1 a1 |
  a1 a1 | bf1 | a1 a1 a1 | bf1 | a4 a4:aug a2 |
  a1 a1 a1 | bf1 | a2. e4:m7 | a1 a1 | bf1 | a2. c4 |
  % key df
  \repeat unfold 4 { df2 df:6 } d d:6 | df1:6 |
  \repeat unfold 2 { df2 df:6 } d1:6.9 |
  \repeat unfold 3 df1 | d1 | df2. af4:7 | df1 | df1 | d1 | df |
  % 2/4
  cf8 df4.
  % key b
  \repeat unfold 8 b1 | c1 |
  b1 b1 b1 c1 | b2. fs4 | b1 b1 c1 b1
  % key c
  c4. df8 |
  c1 | c1 | c1 | c2  g:dim | c1 c c c c c | df |
  c2. g4 | c1 c | df | c2. g4:7 |
}

\score {
  <<
    \new Staff = "voicePapa" {
      \new Voice = "VoicePapa" {
        \Pause s1 \Pausei \VoicePapa
      }
    }
    \new Staff = "voiceMama" {
      \new Voice = "VoiceMama" {
        \Pause s1 \Pausei r1 \VoiceMama
      }
    }
    \new Staff = "voiceSons" {
      \new Voice = "VoiceSons" {
        \Pause s1 \Pausei r2 r4 \VoiceSons
      }
    }

    \new Staff = "voice" {
      \new Voice = "Voc" {
        \Pause s1 \Voice
      }
    }
    \new Lyrics \lyricsto "Voc" {
        \Verse
    }

    \new GrandStaff <<
      \new Staff = "up" {
        \context Voice = "A" \relative c'' {
          s2 s4
          \relative c''' {\ViolinMotiv c2. }
          <<
            \new Voice = "violin" { \voiceOne \Violin}
            \new Voice = "flute" { \voiceTwo \Flute  }
          >>
          \BdR
        }
      }
      \Chords
      \context Voice = "A" \Annotation
      \new Staff = "down" {
        \clef bass
        \Pause
        \BdL
      }
    >>
  >>
  % \midi { }
  \layout {
    \context {
      \Staff \RemoveEmptyStaves
      % To use the setting globally, uncomment the following line:
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}


%FluteMotive=
% #(define-music-function
%      (parser location dyn)
%      (ly:event?)
%   #{ c4-#dyn |
%   c8 d e4 f |
%   g8 fs g af g4 e |
%   f8 e f g f4 df |
%   e8 ds e f e2
%   #}
% )

% setDyn =
% #(define-music-function
%      (parser location)
%      ()
%    (set! mydyn #{\f#})
%    #{#})
