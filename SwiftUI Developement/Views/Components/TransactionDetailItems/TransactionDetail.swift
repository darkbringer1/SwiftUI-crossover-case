import SwiftUI

struct TransactionDetail: View {
    
    var title: String
    var amount: Double

    var body: some View {
		VStack(alignment: .center) {
			Image("Outflow")
			Text(title)
            Text(amount < 0 ? "-$\((-1 * amount).twoDecimals())" : "$\(amount.twoDecimals())")
				.bold()
				.font(.title)
			Text("Congratulations on earning your bird!")
				.font(.footnote)
				.foregroundColor(Color(.systemGray))
		}.padding()
			.background(Color(.systemGray6))
			.cornerRadius(12)
    }
}

struct TransactionDetail_Previews: PreviewProvider {
	static let typeSizes: [DynamicTypeSize] = [
		.xSmall,
		.large,
		.xxxLarge
	]

	static var previews: some View {
		Group {
			ForEach(typeSizes, id: \.self) { size in
                TransactionDetail(title: "Starbucks", amount: 99.999)
					.environment(\.dynamicTypeSize, size)
					.previewDisplayName("\(size)")
			}
            TransactionDetail(title: "Starbucks", amount: 99.99)
				.background(Color(.systemBackground))
				.environment(\.colorScheme, .dark)
				.previewDisplayName("dark")
		}.previewLayout(.sizeThatFits)
	}
}
