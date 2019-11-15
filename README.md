# Flow

[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

# Flow Framework
Flow is built around Coordinator pattern and modular app design.

Splitting the app code into modules allows to manage easier what is exposed outside the module.

One module will be responsible to work as an `entry` module and can be used to init smaller modules if needed.
Each module has its `Coordinators` and `Subcoordinators`. Different modules can share (reuse) `Coordinators`.
Each coordinator / subcoordinator can share (reuse) `ViewControllers`.

This way, the workflow can be splitted and better organized.

Flow can be used seamesly with other frameworks, like (Ness)[https://github.com/inacioferrarini/iOSNessFramework] and (Awe)[].

## Requirements

- iOS 9.0+
- Xcode 10.0+

## Usage

`Flow` can be integrated in your project by using `Carthage` or via git submodule.

* More info about `Carthage` usage can be found [here](https://github.com/inacioferrarini/step-by-step/blob/master/ios-multi-module-project-carthage-setup.md)

* More info about `Git Submodule` usage can be found [here](https://github.com/inacioferrarini/step-by-step/blob/master/ios-multi-module-project-xcode-setup.md)

## Contributing

Issues and pull requests are welcome!

## Author

Inácio Ferrarini

## License

Flow is released under the MIT license. See [LICENSE](https://github.com/inacioferrarini/Flow/blob/master/LICENSE) for details.