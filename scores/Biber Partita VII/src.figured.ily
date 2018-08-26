\version "2.18.2"

figuredBassA = \new FiguredBass {
    \figuremode {
        \set figuredBassAlterationDirection = #RIGHT
        R2. * 26
        <5>2. <6>2 <6+>4 <4>4 <3+>2
        %r2 <6 5> <6> <6 5> <6> <7 _+> <6 5>1
        R2. * 13
        <5>4 <6> <7> R2. * 2
        <6>2. <5> <6>2 <5>4 |
        <6> <5> <3>
        R2. * 5 |
        r2 <_->4
        <7 3+>2 <3->4 |
        <6> <5> <3>
        R2.
        r4 <4> <3> r2 <6>8 <5> |
        <_+>2 <_->4 |
        r4 <3>2 |
        r2 <6>8 <5> |
        <_+>2 <_- 6>8 <5> |
        <2>4 <6+>2 |
        <6>4 <9> <8> |
        <5 3+> <6 4>2 |
        <5 3+>4 <6 4>2 |
        R2. * 6 |
        <5 3+>4 <6 4> 2 |
        <5 3+>4 <6 4> 2 |
        <5 3+>4 <6 4> 2 |
        <5 3+>8 <6 4> <5 4>4 <_+>|
    }
}

figuresBassPartB = \new FiguredBass {
    \figuremode {
        \set figuredBassAlterationDirection = #RIGHT
        \repeat volta 2 {
            \partial 8 s8
            s2 <6> <5>4 <6+> s2 |
            s4 <_+> s s |
            s s s <6+> |
            s <6>8 <3-> <_->4 <6 5-> |
            s <3> s <5+> |
            <6> <_-> <_+> s |
            s2 s4.
        }
        \repeat volta 2 {
            s16 <_+>
            s4 s s <5+> |
            s <_+> s <3> |
            s s <6> <3> |
            s <_+> s <6> |
            s <4>8 <_+> s4 <3> |
            s4. <6>8 <5> <6> <5> <6> |
            s4 s16 <3+> <6+> s <7>8 <6> <_+> s |
            s2 s4.
        }
    }
}

figuresBassPartC = \new FiguredBass {
    \figuremode {
        \set figuredBassAlterationDirection = #RIGHT
        \repeat volta 2 {
            s2. * 3
            <3+>2. s2. s2. |
            s4 <4>8 <3+> s4 |
            <3>2.
        }
        \repeat volta 2 {
            <_+>2. s4 s <6> |
            <3-> <5> <6> |
            <4> <3> s |
            <6> s s |
            <_-> s s |
            <7 _-> s s |
            <_+> s s |
            <6> s s |
            <_-> s s
            s2. s2.
        }
    }
}

figuresBassPartD = \new FiguredBass {
    \figuremode {
        \set figuredBassAlterationDirection = #RIGHT
        \repeat volta 2 {
            s1 * 5
            s4 <6> <6> s |
            s s s <6> |
            <3-> s s s |
            <_+> s s s |
            <_-> s s s |
            s <5>8 <6+> s s <6-> <5> |
            <5>4 <6>8 <_+> s4 s |
            s s s8 <6> <6> <6+> |
            <6>4 s s s |
            s <6>8 <6>8 s <5>  s s |
            s4 s s s |
            s8 <6> <6 3+> <6+> <6> <6 3> <_+> s |
            s1
        }
        \repeat volta 2 {
            s1 s4 s s <5>8 <6+> |
            s4 s s s s <5>8 <6+> s s <5 3> <6 4> |
            <6> <5> s4 s  <5>8 <6+> |
            s s <_+> s s s s s |
            s1 * 4
            s4 s s s8 <6> |
            <6> s <6> s s s s s |
            s s <7> <6+> s s s s |
            s1 * 2 |
            s8 s <6> s <3-> s s s |
            s s s s s s s <6+> |
            <6> s s <6-> s s <6 3> <5> |
            s s s <3+> s s <_+> s |
            s1

        }
    }
}


figuresBassPartE = \new FiguredBass {
    \figuremode {
        \set figuredBassAlterationDirection = #RIGHT

    }
}