# community_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


https://www.youtube.com/watch?v=mEPm9w5QlJM&t=1641s
https://console.firebase.google.com/project/community-app-4d6ef/overview
https://github.com/RivaanRanawat/instagram-flutter-clone

flutter run -d chrome --web-rendere-- html : default is canvas and it has some issues rendering flutter app

Using Firebase prodcust

- for web
    create project  and copy the details and put it in main.dart
- for andriod
    make chages to gradlle
- for ios we need to make changes to 

Login:
    use firebase auth
    in resource/

-- state management :(main.dart and if user islogged in then move to homepage)
	Firebase make it easy to store andmaintain the details
	otherwise we have to store uuid in app space and later validate and check if is authenticated or not
	1. use ID token canges - we are not using this (if user app store on new device then we get another)
	2. user changes - user when signed and signed out (when we update password then we automcally logged out fromt the page)
	3. authStateChange - when use signed in and signed out

	with stream builder first check the connection and its active or not
	if snapshot has no data, it measn we have to login again

	-- Provider package
		whenver use has modified then need notificaiton
		good place : main.dart where check for notiifcaiton
		where to set he value
		in reposonseive gui : after login
		both responseive gui(web and mobile) uses responsive.dart, set the value for the same

	-- adark mode and light mode
		-- logic is in plcae in responsive gui (web and mobile)
	-- bottom navigation
		use pagecontrooler to jump tot he page when user click on the bottom navigation
		display the page based on whcoh Icon has been clicked - use pagecontroller
		also control the slide as its pageview - set ehh physics to no - check the responsive screen (web and mobile)

for image picker - to avoid crash we need to make the changes to 
info.plist file (/ios/Runner/Info.plist)
<key>UIViewControllerBasedStatusBarAppearance</key>
	<true/>
	<key>NSPhotoLibraryUsageDescription</key>
	<string>Photo Library Usage</string>
	<key>NSMicrophoneUsageDescription</key>
	<string>Mic Usage</string>
	<key>NSCameraUsageDescription</key>
	<string>Privacy Camera Usage</string>


