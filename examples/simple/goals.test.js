var path = require('path');

beforeEach(function () {
    console.log('beforeEach');
    imandra.modUse(path.join(__dirname, "./model.re"));

});

afterEach(function () {
    // return imandra.undoAll();
});

test('example', function () {
    return imandra.verify('fun model -> model <> 23').then(function (res) {
        return expect(res.result).toStrictEqual('proved');
    });
});

