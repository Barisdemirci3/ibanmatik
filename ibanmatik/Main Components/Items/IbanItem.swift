import SwiftUI

struct IbanItem: View {
    @State var iban: String
    var bankLogo: String = "Image"
    var nickname: String? = "Kredi Kartım"

    var body: some View {
        ZStack(alignment: .topTrailing) {
            HStack {
                
                Image(bankLogo)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .shadow(radius: 3)

                
                Rectangle()
                    .frame(width: 1, height: 55)
                    .foregroundStyle(Color.gray)

                
                VStack(alignment: .leading, spacing: 5) {
                    Text("IBAN Numaranız")
                        .font(.headline)
                        .foregroundStyle(.secondary)

                    Text(iban)
                        .font(.system(size: 18, weight: .bold, design: .monospaced))
                        .foregroundStyle(.primary)
                        .lineLimit(1)
                        .minimumScaleFactor(0.8)
                        .textSelection(.enabled)
                }

                Spacer()

                
                Button(action: {
                    UIPasteboard.general.string = iban
                }) {
                    Image(systemName: "doc.on.doc.fill")
                        .font(.title2)
                        .foregroundStyle(.red)
                        .padding(10)
                        .background(.ultraThinMaterial)
                        .clipShape(Circle())
                }
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 12).fill(Color(.systemGray6)))
            .overlay(RoundedRectangle(cornerRadius: 12).stroke(Color.gray.opacity(0.3), lineWidth: 1))
            .padding(.horizontal)

            
            if let nickname = nickname {
                GeometryReader { geometry in
                    Text(nickname)
                        .font(.system(size: 16, weight: .bold))
                        .foregroundStyle(.white)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 4)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .position(x: geometry.size.width - 305, y: -5) 
                }
                .frame(height: 0)
            }
        }
    }
}

#Preview {
    IbanItem(iban: "TR12 3123 2132 1321 3123 12")
}
