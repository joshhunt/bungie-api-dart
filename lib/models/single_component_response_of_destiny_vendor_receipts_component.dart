import 'destiny_vendor_receipts_component.dart';
class SingleComponentResponseOfDestinyVendorReceiptsComponent{
	DestinyVendorReceiptsComponent data;
	int privacy;
	SingleComponentResponseOfDestinyVendorReceiptsComponent(
		DestinyVendorReceiptsComponent this.data,
		int this.privacy,
	);

	static SingleComponentResponseOfDestinyVendorReceiptsComponent fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyVendorReceiptsComponent(
				DestinyVendorReceiptsComponent.fromJson(data['data']),
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyVendorReceiptsComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SingleComponentResponseOfDestinyVendorReceiptsComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyVendorReceiptsComponent.fromJson(item));
    });
    return list;
	}
}