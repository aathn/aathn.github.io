@react.component
let make : unit => Jsx.element = () => {
  let (count, setCount) = React.useState(() => 0)
  let incr = x => x + 1

  <div className="p-6">
    <h1 className="text-3xl font-semibold"> {"aathn.org"->React.string} </h1>
    <p>
      {React.string("Wahaha!")}
    </p>
    <h2 className="text-2xl font-semibold mt-5"> {React.string("Fast Refresh Test")} </h2>
    <Button onClick={_ => incr->setCount}>
      {React.string(`count is ${count->Int.toString}`)}
    </Button>
    <p>
      {React.string("Edit ")}
      <code> {React.string("src/App.res")} </code>
      {React.string(" and save to test Fast Refresh.")}
    </p>
  </div>
}
