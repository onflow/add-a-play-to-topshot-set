import Test

access(all) let adminAccount = Test.getAccount(0x0000000000000006)
access(all) let account = Test.getAccount(0x0000000000000007)

access(all)
fun setup() {
    var err = Test.deployContract(
        name: "TopShotLocking",
        path: "../../imports/0b2a3299cc857e29/TopShotLocking.cdc",
        arguments: [],
    )

    Test.expect(err, Test.beNil())

    err = Test.deployContract(
        name: "TopShot",
        path: "../../imports/0b2a3299cc857e29/TopShot.cdc",
        arguments: [],
    )
    Test.expect(err, Test.beNil())

    err = Test.deployContract(
        name: "Recipe",
        path: "../contracts/Recipe.cdc",
        arguments: [],
    )

    Test.expect(err, Test.beNil())

}

access(all) fun testExample() {
    let array = [1, 2, 3]
    Test.expect(array.length, Test.equal(3))
}