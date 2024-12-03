import TopShot from 0xf8d6e0586b0a20c7

transaction {
    
    let admin: &TopShot.Admin
    let borrowedSet: &TopShot.Set

    prepare(acct: auth(Storage) &Account) {
        // Borrow the admin resource from storage
        self.admin = acct.storage.borrow<&TopShot.Admin>(from: /storage/TopShotAdmin)
            ?? panic("Cannot borrow admin resource")

        // Ensure the Set resource exists
        if acct.storage.borrow<&TopShot.Set>(from: /storage/TopShotSet) == nil {
            let newSet = self.admin.createSet(name: "test_set")
            acct.storage.save(newSet, to: /storage/TopShotSet)
        }            

        // Borrow the specified Set from the admin
        self.borrowedSet = self.admin.borrowSet(setID: 1)

        // Create plays if they don't already exist
        let playIDs: [UInt32] = [1, 2, 3]
        for playID in playIDs {
            if TopShot.getPlayMetaData(playID: playID) == nil {
                let metadata: {String: String} = {
                    "Player": "Player Name ".concat(playID.toString()),
                    "Play": "Play Description ".concat(playID.toString())
                }
                self.admin.createPlay(metadata: metadata)
            }
        }
    }

    execute {
        // Add plays to the set
        self.borrowedSet.addPlay(playID: 1)
        self.borrowedSet.addPlay(playID: 2)
        self.borrowedSet.addPlay(playID: 3)
        log("Play added")
    }
}
