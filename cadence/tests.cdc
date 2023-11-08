import Test

access(all) fun testExample() {
    let array = [1, 2, 3]
    Test.expect(array.length, Test.equal(3))
}

access(all) fun testExampleFail() {
    let array = [1, 2, 3]
    Test.expect(array.length, Test.equal(4))
}

