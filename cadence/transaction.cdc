import TopShot from 0x01

transaction {
    
    let admin: &TopShot.Admin
    let borrowedSet: &TopShot.Set

    prepare(acct: auth(Storage) &Account) {
    
        self.admin = acct.borrow<&TopShot.Admin>(from: /storage/TopShotAdmin)
            ?? panic("Cannot borrow admin resource")

        self.borrowedSet = self.admin.borrowSet(setID: 1)
            ?? panic("Cannot borrow the specified set")
    }

    execute {
        self.borrowedSet.addPlay(playID: 1)
        self.borrowedSet.addPlay(playID: 2)
        self.borrowedSet.addPlay(playID: 3)
        log("Play added")
    }
}
