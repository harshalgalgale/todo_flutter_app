<div style="text-align: center">
    <table>
        <tr>
            <td style="text-align: center">
                <img src="/project/images/HomePage.png" width="200"/>
            </td>
            <td style="text-align: center">
                <img src="/project/images/AddTodoPage.png" width="200"/>
            </td>
            <td style="text-align: center">
                <img src="/project/images/ViewTodoPage.png" width="200"/>
            </td>
            <td style="text-align: center">
                <img src="/project/images/SettingPage.png" width="200"/>
            </td>
        </tr>
        <tr>
             <td style="text-align: center">
                 <img src="/project/images/HomePage (Dark Mode).png" width="200"/>
             </td>
             <td style="text-align: center">
                 <img src="/project/images/AddTodoPage(Dark Mode).png" width="200"/>
             </td>
             <td style="text-align: center">
                 <img src="/project/images/ViewTodoPage(Dark Mode).png" width="200"/>
             </td>
             <td style="text-align: center">
                 <img src="/project/images/SettingPage (Dark Mode).png" width="200"/>
             </td>
        </tr>  
    </table>
</div>

# DoneIt 📝

**DoneIt** is a sample note app 📝 Flutter application 📱 built to demonstrate use of _Clean Architecture_ tools. Dedicated to all Flutter Developers with ❤️.

## About

It simply loads **Notes** data from in memory database. Notes will be always loaded from in memor database.

- This makes it offline capable 😃.
- Clean and Simple Material UI.
- It supports dark theme too 🌗.

## Directory Structure

    .
    ├── core                       # For all common and core files.
    │   ├── error                  # contains all Exceptions and Failures classes
    │   ├── presentation           # Common presentation files
    |   │   └── blocs              # Common blocs
    |   │   └── pages              # Core pages
    |   │   └── widgets            # Common widgets
    │   └── route                  # Routes for navigation
    │   └── theme                  # Theme data
    │   └── usecases               # Common usecases
    |
    ├── data                       # Data Files of Feature 1
    │   ├── datasources            # DataSources Abstract Files and Implementations
    │   │   └── feature            # Feature 1 (for exp : Todo Feature)
    │   │       └── sub-feat.      # Sub feature
    │   ├── models                 # Models for data
    │   │   └── feature            # Feature 1 (for exp : Todo Feature)
    │   │       └── sub-feat.      # Sub feature
    │   └── repositories           # Repositories Implementation Classes
    │       └── feature            # Feature 1 (for exp : Todo Feature)
    │           └── sub-feat.      # Sub feature
    ├── domain                     # Domain
    │   ├── entities               # Entities For Feature 1
    │   │   └── feature            # Feature 1 (for exp : Todo Feature)
    │   │       └── sub-feat.      # Sub feature
    │   ├── usecases               # Usecases of Feature 1
    │   │   └── feature            # Feature 1 (for exp : Todo Feature)
    │   │       └── sub-feat.      # Sub feature
    │   └── repositories           # Repositories Abstract Classes
    │       └── feature            # Feature 1 (for exp : Todo Feature)
    │           └── sub-feat.      # Sub feature
    └── presentation               # Presentation files
        ├── blocs                  # Blocs
        │   └── feature            # Feature 1 (for exp : Todo Feature)
        │       └── sub-feat.      # Sub feature
        ├── pages                  # Pages
        │   └── feature            # Feature 1 (for exp : Todo Feature)
        │       └── sub-feat.      # Sub feature
        └── widgets                # Widgets
            └── feature            # Feature 1 (for exp : Todo Feature)
                └── sub-feat.      # Sub feature

## Architecture

This app uses [***Clean Architecture by Robert C Martin***]

<img src="https://github.com/ResoCoder/flutter-tdd-clean-architecture-course/blob/master/architecture-proposal.png" style="display: block; margin-left: auto; margin-right: auto; width: 75%;"/>

Image Source : [ResoCoder](https://resocoder.com)

## Contribute

If you want to contribute to this library, you're always welcome!
See [Contributing Guidelines](CONTRIBUTING.md).

## Branches

    .
    ├── master                       # Contains the latest release
           ├── dev                   # Contains the latest development
                ├── feature1         # feature 1 created from dev
                ├── feature2         # feature 2 created from dev
                ├── feature3         # feature 3 created from dev
                ├── bugFix1          # bugfix 1 created from dev
                ├── bugFix2          # bugfix 1 created from dev
                ├── docChange1       # docChange 1 created from dev
                ├── docChange1       # docChange 2 created from dev

Note : Create pull request for feature,bugfix,docChange to only dev branch.

## Acknowledgement

This repo is the update to the original repo by Shubham Chhimpa.[![GitHub](https://img.shields.io/github/followers/shubham-chhimpa?label=Follow&style=social)](/https://github.com/shubham-chhimpa/done_it)

This repo is updated with the latest flutter packages as of Oct. 2021.
