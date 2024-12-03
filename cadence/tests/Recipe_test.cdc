import Test
import "test_helpers.cdc"

access(all) fun testExample() {
    let array = [1, 2, 3]
    Test.expect(array.length, Test.equal(3))
}
