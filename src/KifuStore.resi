type shogi = {
  board : array<array<string>>,
  hands : unit,
  turn : bool
}

type player = {
  shogi : shogi,
  forkPointers : array<(int, int)>,
  kifu : array<string>,
  tesuu : int,

  forward : unit => unit,
  backward : unit => unit,
  go : (~te : int) => unit,
  goto : (~tesuu : int, ~forkPointers : array<(int, int)>=?) => unit
}

type t = {
  player : player,
  errors : array<string>,
  filePath : option<string>,

  loadPath : (~filePath : string) => unit,
  loadKifu : (~kifu : string) => unit
}

let make : unit => t
