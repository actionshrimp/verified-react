test('example', function () {
    callImandra('yo');

    // let eval = Pconfig.(with_mode_assigned ~to_:(State.Logic) Reflect.eval)
    verify('fun x -> x + 3');
});

test('example2', function () {
    callImandra();
});
