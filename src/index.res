@val external document: {..} = "document"
@val external window: {..} = "window"

let textEditor = document["getElementById"]("textEditor")
let textView = document["getElementById"]("textView")
let selectSmall = document["getElementById"]("selectSmall")
let selectRegular = document["getElementById"]("selectRegular")
let selectLarge = document["getElementById"]("selectLarge")

let updateTextView = event => {
  textView["innerText"] = event["target"]["value"]
}

let changeToSmall = () => {
  let _ = textView["classList"]["add"]("text-sm")
  let _ = textView["classList"]["remove"]("text-2xl", "text-6xl")
}

let changeToRegular = () => {
  let _ = textView["classList"]["add"]("text-2xl")
  let _ = textView["classList"]["remove"]("text-sm", "text-6xl")
}

let changeToLarge = () => {
  let _ = textView["classList"]["add"]("text-6xl")
  let _ = textView["classList"]["remove"]("text-sm", "text-2xl")
}

textEditor["addEventListener"]("input", updateTextView)
selectSmall["addEventListener"]("change", changeToSmall)
selectRegular["addEventListener"]("change", changeToRegular)
selectLarge["addEventListener"]("change", changeToLarge)
