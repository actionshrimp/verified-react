#mod_use "model.re";

verify((model) => {
  let new_model = Model.update(model, Model.Increment);
  new_model.count == model.count + 1
});

verify((model) => {
  let new_model = Model.update(model, Model.Decrement);
  new_model.count == model.count + 1
});

/* #use "goals.re" */
