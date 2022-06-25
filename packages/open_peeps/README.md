# Open Peeps 🧞‍♀️

## Features

- 💙 **Made for Flutter.** Easy to use.
- 🦄 **Open source.** Everything is open source and free!
- 🤓 **Create Avatars.** Easily create a personalized Peep.
- 🧪 **Tiny size.** Save a peep as just one `int`.
- 💃🏼 **Looks great.** Consistent avatars throughout your app.
- 🪐 **(Un)limited options.** Pick one of 211140 different avatars.
- ⚖️ **Scalable SVG images.** Never lose sharpness!

## About Open Peeps

The Open Peeps Flutter package is based on the [Open Peeps illustration library](https://www.openpeeps.com/) by [@pablostanley](https://twitter.com/pablostanley).

A `Peep` is a combination of different `PeepAtom`s. Combine atoms for the _head_, _face_, _facial hair_ and _accessory_ and create your `Peep`!

## Setup

1. add the `open_peeps` library to your `pubspec.yaml`.
1. Start using the package 💪🏻

## Classes

__The `Peep` class__

A `Peep` contains of different so called `PeepAtom`s containing of _Head_, _Face_, _Facial Hair_ or _Accessory_ atoms.

__Atoms__

The specific atoms can be accessed by atom classes. These classes are called `Head`, `Face`, `FacialHair`, `Accessories`, `Body` and `Pose`. While `Body` and `Pose` are defined, these classes currently have no `Widget` to display these atoms properly.

All the atoms of a atom category are accessible via the static `atoms` property:

```dart
final headAtoms = Head.atoms;
```

## Widgets

The `open_peeps` package provides the following Widgets:

### `PeepAvatar`

<p align="center">
<img src="https://raw.githubusercontent.com/JensHor/open_peeps/main/docs/assets/PeepAvatar.jpg" height="300" alt="PeepAvatar" />
</p>

The `PeepAvatar` represents a `Peep` similar to what is known from a `CircleAvatar`.
A `PeepAvatar` can be used based on the `Peep` model or multiple `PeepAtom`s by using the following constructors:

__`PeepAvatar.fromPeep`__

| Parameter           | Type       | Required | Default          | Description |
| ------------------- | ---------- | -------- | ---------------- | ----------- |
| `key`               | `Key?`     | No       | `null`           | A `Key` is an identifier for the `Widget` |
| `peep`              | `Peep`     | Yes      |                  | The `Peep` to be rendered as a scalable image. |
| `backgroundColor`   | `Color?`   | No       | `null`           | The background color of the avatar. When set to `null`, `Theme.of(context).colorScheme.surface` is used as the `backgroundColor`. |
| `clipBehavior`      | `Clip?`    | No       | `Clip.antiAlias` | Clips the `PeepAtom`s to the circular avatar, if set to anything other than `Clip.none`. |
| `size`              | `double?`  | No       | `64.0`           | The size of the avatar. Cannot be greater than `256.0` (this is a temporary limitation). |

__`PeepAvatar.fromAtoms`__

| Parameter           | Type       | Required | Default          | Description |
| ------------------- | ---------- | -------- | ---------------- | ----------- |
| `key`               | `Key?`     | No       | `null`           | A `Key` is an identifier for the `Widget` |
| `face`              | `PeepAtom` | Yes      |                  | The atom representing the _Face_.
| `head`              | `PeepAtom` | Yes      |                  | The atom representing the _Head_.
| `facialHair`        | `PeepAtom` | Yes      |                  | The atom representing the _Facial Hair_.
| `accessory`         | `PeepAtom` | Yes      |                  | The atom representing the _Accessory_.
| `backgroundColor`   | `Color?`   | No       | `null`           | The background color of the avatar. When set to `null`, `Theme.of(context).colorScheme.surface` is used as the `backgroundColor`. |
| `clipBehavior`      | `Clip?`    | No       | `Clip.antiAlias` | Clips the `PeepAtom`s to the circular avatar, if set to anything other than `Clip.none`. |
| `size`              | `double?`  | No       | `64.0`           | The size of the avatar. Cannot be greater than `256.0` (this is a temporary limitation). |

__Example__

```dart
final peep = Peep(...);
final avatarWidget = PeepAvatar.fromPeep(
  size: 128,
  peep: peep,
);
```

### `PeepStudio`

By using `PeepStudio` you allow the users of your app to select their unique `Peep`. `PeepStudio` displays all available atom categories and makes selection of the desired `Peep` easy.

__Constructor__

| Parameter           | Type                       | Required | Default          | Description |
| ------------------- | -------------------------- | -------- | ---------------- | ----------- |
| `key`               | `Key?`                     | No       | `null`           | A `Key` is an identifier for the `Widget` |
| `onChanged`         | `void Function(Peep peep)` | Yes      |                  | A callback which is triggered whenever, the user selects an atom. |
| `backgroundColor`   | `Color?`                   | No       | `null`           | The background color of the studio. When set to `null`, `Theme.of(context).colorScheme.surface` is used as the `backgroundColor`. |
| `activeColor`       | `Color?`                   | No       | `null`           | The active color of a selected atom. When set to `null`, `Theme.of(context).toggleableActiveColor` is used as the `activeColor`. |

__Example__

```dart
final studioWidget = PeepStudio(
  onChanged: (Peep peep) {
    provider.selectedPeepChanged(peep);
  }
);
```

## Generation

Generation of a random or partially random `Peep` is great to quickly showcase users what's possible with `open_peeps`.
Call `PeepGenerator.generate` to randomly generate a new `Peep`:

__Example__

```dart
final randomPeep = PeepGenerator().generate();
```

With `PeepGenerator` it is also possible to pre-select specific `PeepAtom`s and just generate the missing ones to create a partially random `Peep`:

__Example__

```dart
final randomPeep = PeepGenerator().generate(
  head: PeepAtom(...),
  facialHair: PeepAtom(...),
);
```

## Serialization

Serialization of a `Peep` into a storable data type is great to allow users to pick their unique user-avatar.

For serialization use `PeepSerializer.serializeVersion1`:

__Example__
```dart
final peep = Peep(...);
final storedValue = PeepSerializer.serializeVersion1(
  peep: peep
);
```

For deserialization of a stored value use `PeepSerializer.deserializeVersion1`:

__Example__
```dart
final storedValue = ...;
final peep = PeepSerializer.deserializeVersion1(
  value: storedValue
);
```