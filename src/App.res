@react.component
let make : unit => Jsx.element = () => {
  let (kifuStore, _setKifuStore) =
    React.useState(() => KifuStore.make())

  <div className="p-6">
    <h1 className="text-3xl font-semibold"> {"aathn.org"->React.string} </h1>
    <p>
      {React.string("Wahaha!")}
    </p>
    <h2 className="text-2xl font-semibold mt-5"> {React.string(`Current move is ${kifuStore.player.tesuu->Int.toString}`)} </h2>
    <Kifu
  kifuStore
  kifu="N+aathn\nN-kupo\n+7776FU\n-3334FU"
  // static=Kifu.staticOptions()
  maxWidth=Some(700)
  ply=2
  style=ReactDOM.Style.make(~border="1px black solid", ())
    />
    <Button onClick={_ => kifuStore.player.forward()}>
    {React.string("Forward")}
  </Button>
    // <Button onClick={_ =>
    //   kifuStore.player.backward()
    // }>
    //   {React.string("Backward")}
    // </Button>
  </div>
}
