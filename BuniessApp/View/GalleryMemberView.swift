//
//  GalleryMemberView.swift
//  BuniessApp
//
//  Created by naswakhansa on 11/12/23.
//

import SwiftUI

//struct GalleryMemberView: View {
//    var memberData : newJeansMemberDetail
//    
//    @State var isShowFullImage = false
//    var body: some View {
//        NavigationView {
//            ScrollView(.horizontal, showsIndicators: false) {
//                HStack() {
//                    ForEach(memberData.image, id : \.self){item in
//                        Image(item)
//                            .resizable()
//                            //.frame(width: 321,height: 695 )
//                            .frame(width: 151,height: 327)
//                            .clipShape(RoundedRectangle(cornerRadius: 10))
//                            .navigationBarHidden(isShowFullImage)
//                                                .navigationBarTitle("", displayMode: .inline)
//                            
//                    }.padding(.horizontal,6)
//                }.padding(.horizontal, 20)
//            }
//        }
//    }
//}

struct GalleryMemberView: View {
    var memberData: newJeansMemberDetail
    @State private var isShowFullImage = false
    @State private var selectedImage: String?

    var body: some View {
        NavigationView {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack() {
                    ForEach(memberData.image, id: \.self) { item in
                        Image(item)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: isShowFullImage ? nil : 151, height: isShowFullImage ? nil : 327)
                            .clipped()
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            .onTapGesture {
                                withAnimation {
                                    selectedImage = item
                                    isShowFullImage.toggle()
                                }
                            }
                            .sheet(isPresented: $isShowFullImage) {
                                FullImageView(image: selectedImage ?? "", isPresented: $isShowFullImage)
                            }
                    }.padding(.horizontal, 6)
                }.padding(.horizontal, 20)
            }
        }
    }
}

struct FullImageView: View {
    var image: String
    @State private var isShareSheetPresented = false
    @State private var showAlert = false
    @Binding var isPresented: Bool
    @Environment(\.presentationMode) var presentasionMode

    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Image(image)
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .padding(.horizontal)
                    Image(systemName: "square.and.arrow.up")
                        .font(.title2)
                        .onTapGesture {
                            isShareSheetPresented.toggle()
                        }
                        .sheet(isPresented: $isShareSheetPresented) {
                            if let image = UIImage(named: image) {
                                ActivityViewController(activityItems: [image]) {
                                    showAlert = true
                                }
                            } else {
                            Text("Error loading image")
                            }
                        }
                        .alert(isPresented: $showAlert) {
                            Alert(title: Text("Berbagi Berhasil"), message: Text("Gambar berhasil dibagikan."), dismissButton: .default(Text("OK")))
                        }
                }.navigationBarItems(
                    trailing:
                        Button(action: {
                            presentasionMode.wrappedValue.dismiss()
                        }){
                            Image(systemName: "xmark")
                        }
                )
            }
        }
    }
}

struct ActivityViewController: UIViewControllerRepresentable {
    var activityItems: [Any]
    var successHandler: (() -> Void)?

    func makeUIViewController(context: Context) -> UIActivityViewController {
            let activityViewController = UIActivityViewController(activityItems: activityItems, applicationActivities: nil)
            activityViewController.completionWithItemsHandler = { _, _, _, _ in
                successHandler?()
            }
            return activityViewController
        }

    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

#Preview {
    GalleryMemberView(memberData: memberData[4])
}
