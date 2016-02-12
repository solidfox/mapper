# Master

## Breaking

- None

## Enhancements

- Added convertible conformance to `NSDate` for some ISO 8601 dates including the output of JavaScript's `Date.toJSON()` function (e.g. "2007-01-09T18:03:02.010Z")

## Bug Fixes

- None

# 1.0.3

## Breaking

- None

## Enhancements

- Add function for creating `Mappable`s from a `NSArray`
  [Keith Smiley](https://github.com/keith)
  [#27](https://github.com/lyft/mapper/pull/27)

## Bug Fixes

- Use extension safe API to fix warning
  [Keith Smiley](https://github.com/keith)
  [#29](https://github.com/lyft/mapper/pull/29)

# 1.0.2

## Breaking

- None

## Enhancements

- Added `@warn_unused_result` to functions declarations.
  [Ostap Taran](https://github.com/Austinate)
  [#19](https://github.com/lyft/mapper/pull/19)
- Add tvOS support. [Ostap Taran](https://github.com/Austinate)
  [#12](https://github.com/lyft/mapper/pull/12)
- Add universal framework support. This also adds watchOS support.
  [Keith Smiley](https://github.com/keith)
  [#20](https://github.com/lyft/mapper/pull/20)
- Add Swift package manager support
  [Keith Smiley](https://github.com/keith)
  [#22](https://github.com/lyft/mapper/pull/22)

## Bug Fixes

- Fix OS X framework bundle identifier
  [Keith Smiley](https://github.com/keith)

# 1.0.1

## Breaking

- None

## Enhancements

- None

## Bug Fixes

- Fixed issue where `optionalFrom` with an array of keys was not
  implemented for `Convertible` or other types.
  [Keith Smiley](https://github.com/keith)
  [#10](https://github.com/lyft/mapper/pull/10)

# 1.0.0

Ship 1.0.0!
