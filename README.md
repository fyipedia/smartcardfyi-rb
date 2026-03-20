# smartcardfyi

[![Gem Version](https://badge.fury.io/rb/smartcardfyi.svg)](https://rubygems.org/gems/smartcardfyi)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

Ruby client for the [SmartCardFYI](https://smartcardfyi.com) REST API. Smart cards, EMV. Zero external dependencies.

> **Explore at [smartcardfyi.com](https://smartcardfyi.com)** — interactive tools and comprehensive reference.

## Install

```ruby
gem "smartcardfyi"
```

## Quick Start

```ruby
require "smartcardfyi"

client = SmartCardFYI::Client.new
result = client.search("query")
puts result
```

## Also Available

| Platform | Install | Link |
|----------|---------|------|
| **Python** | `pip install smartcardfyi` | [PyPI](https://pypi.org/project/smartcardfyi/) |
| **npm** | `npm install smartcardfyi` | [npm](https://www.npmjs.com/package/smartcardfyi) |
| **Go** | `go get github.com/fyipedia/smartcardfyi-go` | [pkg.go.dev](https://pkg.go.dev/github.com/fyipedia/smartcardfyi-go) |
| **Rust** | `cargo add smartcardfyi` | [crates.io](https://crates.io/crates/smartcardfyi) |
| **Ruby** | `gem install smartcardfyi` | [rubygems](https://rubygems.org/gems/smartcardfyi) |


## Links

- **Site**: [smartcardfyi.com](https://smartcardfyi.com)
- **API**: [smartcardfyi.com/api/v1/](https://smartcardfyi.com/api/v1/)
- **OpenAPI**: [smartcardfyi.com/api/v1/schema/](https://smartcardfyi.com/api/v1/schema/)

Part of the [FYIPedia](https://fyipedia.com) open-source developer tools ecosystem.

## License

MIT
