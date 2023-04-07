<div align="center">
  <h1>Cairo 🐺 </h1>
  <h2> ⚡ Blazing ⚡ fast ⚡ compiler for Cairo, written in 🦀 Rust 🦀 </h2>


## About

Cairo is the first Turing-complete language for creating provable programs for general computation.

## Getting Started

### Prerequisites

- Install [Rust](https://www.rust-lang.org/tools/install)
- Setup Rust:
```bash
rustup override set stable && rustup update
```

Ensure rust was installed correctly by running the following from the root project directory:
```bash
cargo test
```

### Compiling and running Cairo files

Compile Cairo to Sierra:
```bash
cargo run --bin cairo-compile -- /path/to/input.cairo /path/to/output.sierra --replace-ids
```

Compile Sierra to casm (Cairo assembly):
```bash
cargo run --bin sierra-compile -- /path/to/input.sierra /path/to/output.casm
```

Run Cairo code directly:
```bash
cargo run --bin cairo-run -- -p /path/to/file.cairo
```

See more information [here](./crates/cairo-lang-runner/README.md). You can also find Cairo examples in the [examples](./examples) directory.

For running tests specifically, see here: [cairo-test](./crates/cairo-lang-test-runner/README.md)

### Development

#### Install the language server

Follow the instructions in [vscode-cairo](./vscode-cairo/README.md).

## Roadmap

The next milestone is to reach feature parity with the old Cairo version.
You can track the exact progress [here](./docs/FEATURE_PARITY.md).

Together, we can make Cairo **better**!

