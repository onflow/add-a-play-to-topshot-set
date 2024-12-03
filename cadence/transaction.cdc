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
    }

    execute {
        // Create plays 
        
        // Add plays to the set
        self.borrowedSet.addPlay(playID: 1)
        self.borrowedSet.addPlay(playID: 2)
        self.borrowedSet.addPlay(playID: 3)
        log("Play added")
    }
}
