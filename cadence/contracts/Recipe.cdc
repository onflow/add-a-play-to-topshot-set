import "TopShot"

access(all) contract Recipe {
    // This is a snippet extracting the relevant logic from the TopShot contract for demonstration purposes
    // More TopShot Code Above

    access(all) event PlayAddedToSet(setID: UInt32, playID: UInt32)

    access(all) resource Set {

        // addPlay adds a play to the set
        //
        // Parameters: playID: The ID of the Play that is being added
        //
        // Pre-Conditions:
        // The Play needs to be an existing play
        // The Set needs to be not locked
        // The Play can't have already been added to the Set
        //

        /// Resource fields
        access(all) var locked: Bool
        access(all) let plays: [UInt32]
        access(all) let retired: {UInt32: Bool}
        access(all) let numberMintedPerPlay: {UInt32: UInt32}
        access(all) let setID: UInt32

        // Resource initializer
        init(setID: UInt32) {
            self.locked = false
            self.plays = []
            self.retired = {}
            self.numberMintedPerPlay = {}
            self.setID = setID
        }

        access(all) fun addPlay(playID: UInt32) {
            pre {
                TopShot.getPlayMetaData(playID: playID) != nil: "Cannot add the Play to Set: Play doesn't exist."
                !self.locked: "Cannot add the play to the Set after the set has been locked."
                self.numberMintedPerPlay[playID] == nil: "The play has already been added to the set."
            }

            // Add the Play to the array of Plays
            self.plays.append(playID)

            // Open the Play up for minting
            self.retired[playID] = false

            // Initialize the Moment count to zero
            self.numberMintedPerPlay[playID] = 0

            emit PlayAddedToSet(setID: self.setID, playID: playID)
        }
    }
    // More TopShot Code Below
}