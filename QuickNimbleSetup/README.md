# How to Get Quick/Nimble Test Framework Set Up

1. Clone the Quick and Nimble repos
2. Right click your ProjectNameTests folder and select Add Files to "ProjectName"...
3. Select Quick.xcodeproj from the cloned repo
4. Only the following options should be selected in the file chooser: Create groups, Project Name, and ProjectNameTests
5. Click Add
6. Do the same for Nimble.xcodeproj
7. Select ProjectName at the top of your Xcode file viewer (left side)
8. Select Build Phases
9. Select ProjectNameTests from the target chooser dropdown
10. In Link Binary With Libraries add Quick.framework and Nimble.framework (it is okay if Nimble.framework appears in red text)
11. In your test file import Quick, Nimble, and ProjectName
12. For all files you want to use in your tests make sure that Target Membership includes ProjectName and ProjectNameTests (check box on right side of screen)

Note: ProjectName is a substitute for your project's name.
