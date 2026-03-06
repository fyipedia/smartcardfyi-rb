# SmartCardFYI

[![Gem Version](https://badge.fury.io/rb/smartcardfyi.svg)](https://rubygems.org/gems/smartcardfyi)

Ruby client for the [SmartCardFYI](https://smartcardfyi.com) API. Look up smart cards, platforms, form factors, certifications, and applications. Zero dependencies.

## Install

```bash
gem install smartcardfyi
```

Or add to your Gemfile:

```ruby
gem "smartcardfyi"
```

## Quick Start

```ruby
require "smartcardfyi"

client = SmartCardFYI::Client.new

# Search across cards, platforms, and glossary
results = client.search("smart card")
puts results[:results].first[:name]

# Get card details
card = client.card("javacard")
puts card[:name]

# Compare two cards
comparison = client.compare("javacard", "multos")

# Random card
random = client.random
```

## API Methods

| Method | Description |
|--------|-------------|
| `search(query)` | Search cards, platforms, and glossary |
| `card(slug)` | Get smart card details |
| `platform(slug)` | Get platform details |
| `standard(slug)` | Get standard details |
| `manufacturer(slug)` | Get manufacturer details |
| `application(slug)` | Get application details |
| `form_factor(slug)` | Get form factor details |
| `certification(slug)` | Get certification details |
| `glossary_term(slug)` | Get glossary term definition |
| `compare(slug_a, slug_b)` | Compare two cards |
| `random` | Get a random card |
| `openapi` | Get OpenAPI 3.1.0 specification |

## Also Available

| Language | Package | Install |
|----------|---------|---------|
| Python | [smartcardfyi](https://pypi.org/project/smartcardfyi/) | `pip install smartcardfyi` |
| TypeScript | [smartcardfyi](https://www.npmjs.com/package/smartcardfyi) | `npm install smartcardfyi` |
| Go | [smartcardfyi-go](https://pkg.go.dev/github.com/fyipedia/smartcardfyi-go) | `go get github.com/fyipedia/smartcardfyi-go` |
| Rust | [smartcardfyi](https://crates.io/crates/smartcardfyi) | `cargo add smartcardfyi` |
| Ruby | [smartcardfyi](https://rubygems.org/gems/smartcardfyi) | `gem install smartcardfyi` |

## Code FYI Family

| Site | Domain | Focus |
|------|--------|-------|
| BarcodeFYI | [barcodefyi.com](https://barcodefyi.com) | Barcode symbologies and standards |
| QRCodeFYI | [qrcodefyi.com](https://qrcodefyi.com) | QR code types and encoding |
| NFCFYI | [nfcfyi.com](https://nfcfyi.com) | NFC chips and protocols |
| BLEFYI | [blefyi.com](https://blefyi.com) | Bluetooth Low Energy |
| RFIDFYI | [rfidfyi.com](https://rfidfyi.com) | RFID tags and readers |
| SmartCardFYI | [smartcardfyi.com](https://smartcardfyi.com) | Smart card platforms |

## License

MIT
