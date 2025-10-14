// Decrement time until call. If <= 0, see if phone instance exists.
//    If no, set timer back to 60 (1 sec) to wait until phone is in room
//    If yes, set ringing to true. Phone checks this var on interact and
//    locks the player, plays sound, and calls Answer() on this, which sets
//    timeLeftOnCall, which also gets decremented in step here and when done,
//    unlocks the player and calls NewCall if calls are left, else destroy.
// Player can only answer while timeUntilHangup > 0. That gets decremented
//    here too, and get set back to -1 when player answers. If it does get
//    to 0 or below, decrease sanity and still call NewCall() if any left.