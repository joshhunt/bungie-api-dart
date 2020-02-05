/// The possible states of Destiny Profile Records. IMPORTANT: Any given item can theoretically have many of these states simultaneously: as a result, this was altered to be a flags enumeration/bitmask for v3.2.0.
class DestinyVendorItemState {
    const DestinyVendorItemState(this._value);
    factory DestinyVendorItemState.fromJson(int numValue) => DestinyVendorItemState(numValue);
    
    final int _value;
    
    ///None = 0
    /// There are no augments on the item.
    static const DestinyVendorItemState None = DestinyVendorItemState(0);
    ///Incomplete = 1
    /// Deprecated forever (probably). There was a time when Records were going to be implemented through Vendors, and this field was relevant. Now they're implemented through Presentation Nodes, and this field doesn't matter anymore.
    static const DestinyVendorItemState Incomplete = DestinyVendorItemState(1);
    ///RewardAvailable = 2
    /// Deprecated forever (probably). See the description of the "Incomplete" value for the juicy scoop.
    static const DestinyVendorItemState RewardAvailable = DestinyVendorItemState(2);
    ///Complete = 4
    /// Deprecated forever (probably). See the description of the "Incomplete" value for the juicy scoop.
    static const DestinyVendorItemState Complete = DestinyVendorItemState(4);
    ///New = 8
    /// This item is considered to be "newly available", and should have some UI showing how shiny it is.
    static const DestinyVendorItemState New = DestinyVendorItemState(8);
    ///Featured = 16
    /// This item is being "featured", and should be shiny in a different way from items that are merely new.
    static const DestinyVendorItemState Featured = DestinyVendorItemState(16);
    ///Ending = 32
    /// This item is only available for a limited time, and that time is approaching.
    static const DestinyVendorItemState Ending = DestinyVendorItemState(32);
    ///OnSale = 64
    /// This item is "on sale". Get it while it's hot.
    static const DestinyVendorItemState OnSale = DestinyVendorItemState(64);
    ///Owned = 128
    /// This item is already owned.
    static const DestinyVendorItemState Owned = DestinyVendorItemState(128);
    ///WideView = 256
    /// This item should be shown with a "wide view" instead of normal icon view.
    static const DestinyVendorItemState WideView = DestinyVendorItemState(256);
    ///NexusAttention = 512
    /// This indicates that you should show some kind of attention-requesting indicator on the item, in a similar manner to items in the nexus that have such notifications.
    static const DestinyVendorItemState NexusAttention = DestinyVendorItemState(512);

    int get value {
        return _value;
    }

    bool contains(DestinyVendorItemState childValue){
        return value & childValue.value == childValue.value;
    }

    int operator & (DestinyVendorItemState item){
      return value & item.value;
    }

    @override
    bool operator == (dynamic other) {
        return other.value == value || other == value;
    }

    @override
    int get hashCode => value;
    
    int toJson() => value;
}