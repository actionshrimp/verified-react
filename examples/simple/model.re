type msg =
  | Increment
  | Decrement;

type model = {count: int};

let update = (model, msg) =>
  switch (msg) {
  | Increment => {count: model.count + 1}
  | Decrement => {count: model.count - 1}
  };
