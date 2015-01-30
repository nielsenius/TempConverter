# How to Get Quick/Nimble Test Framework Set Up

Needs updating! Do not use this yet!

1. Clone the Quick and Nimble repos
2. Right click your ProjectNameTests folder and select Add Files to "ProjectName"...
3. Select Quick.xcodeproj from the cloned repo
4. Make sure that the only options selected are Create groups and ProjectNameTests
5. Click Add
6. Do the same for Nimble.xcodeproj
7. In your test file import Quick, Nimble, and ProjectName
8. For all files you want to use in your tests make sure that Target Membership includes ProjectName and ProjectNameTests (check box on right side of screen)

Note: ProjectName is a substitute for your project's name.
