import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            // Header with Banner and Profile Picture
            ZStack {
                // Banner image instead of rectangle
                Image("downloadd") // Replace this with your banner image name
                    .resizable()
                    .aspectRatio(contentMode: .fill) // Fills the width and maintains aspect ratio
                    .frame(height: 170) // Height for the banner
                    .clipped() // Clips overflowed part of the image
                    .cornerRadius(20)
                
                // Profile picture inside a circle
                Image("download") // Replace this with your profile image name
                    .resizable() // Makes the image resizable
                    .scaledToFill() // Ensures the image fills the circle
                    .frame(width: 120, height: 120) // Profile image size
                    .clipShape(Circle()) // Makes the image circular
                    .overlay(Circle().stroke(Color.white, lineWidth: 4)) // Adds a white border
                    .shadow(radius: 10) // Optional shadow for effect
                    .offset(y: 75) // Moves the circle up slightly
            }
            .ignoresSafeArea(edges: .top)
            
            
            // Profile Information
            VStack(spacing : 15){
                Text("@Ricky")
                    .foregroundColor(.gray)
                Text("Ricky Ganteng")
                    .font(.title)
                    .fontWeight(.bold)
                VStack{
                    HStack{
                        Text("Bandung")
                            .foregroundColor(.blue)
                        Text("|")
                        Text("Joined February 2020")
                            .foregroundColor(.gray)
                    }
                }
                
                
                
                // Action Buttons
                HStack(spacing: 20) {
                    Button(action: {}) {
                        Text("Follow")
                            .padding()
                            .background(Color.white)
                            .foregroundColor(.black)
                            .cornerRadius(10) // Apply corner radius to the background
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.gray, lineWidth: 1) // Black border with rounded corners
                            )
                        
                    }
                    
                    Button(action: {}) {
                        Text("Message")
                            .padding()
                            .background(Color.white)
                            .foregroundColor(.black)
                            .cornerRadius(10) // Apply corner radius to the background
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.gray, lineWidth: 1) // Black border with rounded corners
                            )
                        
                        
                    }
                    
                    Button(action: {}) {
                        Text("More")
                            .padding()
                            .background(Color.white)
                            .foregroundColor(.black)
                            .cornerRadius(10) // Apply corner radius to the background
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.gray, lineWidth: 1) // Black border with rounded corners
                            )
                        
                    }
                    
                }
                Text("CEO System D, Because your satisfaction is everything & Standing out from the rest, and that’s what we want you to be as well.")
                    .font(.subheadline)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .padding(.top, 10)
                
                Divider()
                    .frame(height: 15) // Defines the thickness of the divider
                    .background(Color.gray.opacity(0.1)) // Defines the color and transparency

                VStack{
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Contact Information")
                            .fontWeight(.bold)
                        InfoItem(iconName: "globe", labelText: "Website", valueText: "www.Ricky.com")
                            .foregroundColor(.gray)
                        
                        InfoItem(iconName: "envelope", labelText: "Email", valueText: "wassuo.com")
                            .foregroundColor(.gray)
                        InfoItem(iconName: "phone", labelText: "Phone", valueText: "+62 517 218 92 00")
                            .foregroundColor(.gray)
                        InfoItem(iconName: "calendar", labelText: "Joined", valueText: "26 March, 2023")
                            .foregroundColor(.gray)
                    }

                    
                    // Tags Section
                    VStack(alignment: .leading, spacing: 10) {
                        HStack(spacing: 10) {
                            TagView(text: "UI Designer")
                            TagView(text: "UX Designer")
                            TagView(text: "Design System")
                        }

                        HStack(spacing: 10) {
                            TagView(text: "Product")
                            TagView(text: "Succesfull")
                        }
                    }
                    .padding(.top, 10)

                
                    
                }
                .padding(.horizontal)
                
                Spacer() // Pushes the rest of the content down
            }
        }
                }
            }

            // Custom view for Tag buttons
            struct TagView: View {
                var text: String
                
                var body: some View {
                    Text(text)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 5)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(5)
                }
            }

            // Custom view for Information items
            struct InfoItem: View {
                var iconName: String
                var labelText: String
                var valueText: String
                
                var body: some View {
                    HStack {
                        Image(systemName: iconName)
                            .foregroundColor(.gray)
                        Text(labelText)
                            .fontWeight(.light)
                        Spacer()
                        Text(valueText)
                            .foregroundColor(.black)
                    }
                    .padding(.horizontal)
                }
            }

            struct ProfileView_Previews: PreviewProvider {
                static var previews: some View {
                    ProfileView()
                }
            }
