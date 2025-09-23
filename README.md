# Flutter Widget Catalog Project

<a id="readme-top"></a>

Welcome to Flutter Widget Catalog! This app showcases a curated catalog of Flutter widgets with focused, runnable demos for both Material and Cupertino design systems, plus core/base widgets. It’s designed as a learning reference to explore widget usage, properties, accessibility, and animations in a clean, browsable format.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Features](#features)
- [Project Structure](#project-structure)
- [Contributing](#contributing)
- [Built With](#built-with)
- [Top Contributors](#top-contributors)
- [Support the Project](#support-the-project)
- [Contact](#contact)

## Installation

To get started with this project, follow these steps:

1. **Clone the repository**
   ```bash
   git clone https://github.com/your-username/mahmoudbakir_week2_widgetcatalog.git
   cd mahmoudbakir_week2_widgetcatalog
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the application**
   ```bash
   flutter run
   ```

## Usage

- Launch the app and browse pages using the bottom page controls.
- Each page demonstrates a specific widget with minimal code, labels, and styling for clarity.
- Pages are grouped by category: Design Systems (Material/Cupertino) and Base Widgets (Semantics, Animation, Basic Widgets, etc.).

## Features

- ✅ **Widget Demos**: Clear, focused examples for many Flutter widgets
- ✅ **Material & Cupertino**: Side-by-side design system samples
- ✅ **Navigation**: Simple paged navigation with indicator and arrows
- ✅ **Accessibility**: `Semantics` examples with labels and actions
- ✅ **Animations**: `AnimatedModalBarrier`, `AnimatedPhysicalModel`, `PositionedTransition`, `RelativePositionedTransition`
- ✅ **Basic Widgets**: e.g., `Placeholder` usage and customization
- ✅ **Consistent Styling**: Carded pages with titles and centered demos

## Project Structure

```mermaid
graph TD
    A(widgetCatalog) ==> B(lib)
    B ==> B1(main.dart)
    B ==> B2(page_navigation.dart)
    B ==> B3(widgets)

    B3 ==> C1(design_systems)
    C1 ==> C1a(material_components)
    C1 ==> C1b(cupertino_widgets)

    B3 ==> C2(base_widgets)
    C2 ==> C2a(semantics)
    C2 ==> C2b(animation)
    C2 ==> C2c(basic_widgets)

    classDef lib fill:#6f42c1,stroke:#1f2937,stroke-width:3px,color:#ffffff,font-weight:bold;
    classDef group fill:#28a745,stroke:#1f2937,stroke-width:3px,color:#ffffff,font-weight:bold;
    class A,B,B1,B2,B3 lib;
    class C1,C1a,C1b,C2,C2a,C2b,C2c group;
```

This diagram illustrates the high-level layout of the widget catalog: a simple `lib` entry point with a `PageView`-driven navigator and grouped widget demo pages under `widgets/`.

## Contributing

We welcome contributions to this project! Here's how you can help:

1. **Fork the repository**
2. **Create a feature branch** (`git checkout -b feature/contributer-feature`)
3. **Commit your changes** (`git commit -m 'Add some contributer feature'`)
4. **Push to the branch** (`git push origin feature/contributer-feature`)
5. **Open a Pull Request**

### Development Guidelines

- Keep examples minimal and focused on a single widget concept
- Prefer clear naming and consistent page styling
- Update documentation when adding new demo pages
- Follow the existing code style

## Built With

This project is built with:

- ![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white) 

### Top contributors:

<a href="https://github.com/Mahm0udbakir/mahmoudbakir_week2_widgetcatalog/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=Mahm0udbakir/mahmoudbakir_week2_widgetcatalog" alt="contrib.rocks image" />
  </a>

## Support the Project

If you find this project helpful, consider supporting it:

[![Buy me a coffee](https://img.buymeacoffee.com/button-api/?text=Buy%20me%20a%20coffee&emoji=☕&slug=mahmoudbakir&button_colour=FFDD00&font_colour=000000&font_family=Cookie&outline_colour=000000&coffee_colour=FF0000)](https://buymeacoffee.com/mahmoudbakir)

## Contact

- **Author**: Mahmoud Bakir
- **Email**: [mahmoud.m.bakir@gmail.com](mailto:mahmoud.m.bakir@gmail.com)
- **GitHub**: [@Mahm0udbakir](https://github.com/Mahm0udbakir)
- **LinkedIn**: [Mahmoud Bakir](https://www.linkedin.com/in/mahm0udbakir/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>
