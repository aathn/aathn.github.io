type reverseOptions = {
  name : option<string>
}

type staticLastOption =
  Hidden | Show (int, int)

@unboxed
type staticLastOptionUnboxed =
  UHidden (string) | UShow ((int, int))

type staticOptions = {
  last : option<staticLastOptionUnboxed>
}

type tsumeOptions = {
  kingsHand : option<bool>,
  hideAnswer : option<bool>,
  citation : option<bool>
}

let reverseOptions = (~name=?) => {
  name : name
}

let staticOptions = (~last=?) => {
  last : switch last {
      | None => None
      | Some (Hidden) => Some (UHidden ("hidden"))
      | Some (Show (x, y)) => Some (UShow ((x, y)))
  }
}

let tsumeOptions =
  (~kingsHand=?,
   ~hideAnswer=?,
   ~citation=?
  ) => {
    kingsHand,
    hideAnswer,
    citation
  }

@react.component @module("kifu-for-js")
external make: (~kifuStore : KifuStore.t=?,
                ~kifu : string=?,
                ~src : string=?,
                ~ply : int=?,
                ~forkPointers : array<(int, int)>=?,
                ~reverse : reverseOptions=?,
                ~static : staticOptions=?,
                ~tsume : tsumeOptions=?,
                ~maxWidth : option<int>=?,
                ~style : ReactDOM.Style.t=?,
                ~children : React.element=?
               ) => React.element =
  "KifuLite"
