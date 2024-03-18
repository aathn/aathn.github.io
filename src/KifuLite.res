type tsumeOptions = {
  kingsHand : bool,
  hideAnswer : bool,
  citation : bool
}

let tsume =
  (~kingsHand=false,
   ~hideAnswer=false,
   ~citation=false
  ) =>
{ kingsHand,
  hideAnswer,
  citation
}

@react.component @module("kifu-for-js")
external make: (~kifu : string=?,
                ~src : string=?,
                ~ply : int=?,
                ~forkPointers : list<(int, int)>=?,
                ~tsume : tsumeOptions=?,
                ~children : React.element=?
               ) => React.element =
  "KifuLite"
