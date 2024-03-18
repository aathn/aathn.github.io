type reverseOptions
type staticLastOption =
  Hidden | Show (int, int)
type staticOptions
type tsumeOptions

let reverseOptions :
    (~name : string=?
    ) => reverseOptions

let staticOptions :
    (~last : staticLastOption=?
    ) => staticOptions

let tsumeOptions :
  (~kingsHand : bool=?,
   ~hideAnswer : bool=?,
   ~citation : bool=?
  ) => tsumeOptions

@react.component
let make : (~kifuStore : KifuStore.t=?,
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
           ) => React.element
