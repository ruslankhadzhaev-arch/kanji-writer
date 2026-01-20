# Kanji Writer for Obsidian

This plugin allows you to display and animate Japanese Kanji characters in your Obsidian notes using [Hanzi Writer](https://hanziwriter.org/).

## Features

- **Stroke Order Animation**: Watch how characters are written.
- **Quizzing**: Test your knowledge by writing the characters yourself.
- **Customizable**: Adjust sizes, colors, and speeds.

## Installation

1. Copy the `kanji-writer` folder to your vault's `.obsidian/plugins/` directory.
2. Reload plugins and enable **Kanji Writer**.

## Usage

Create a code block with `kanji-writer`:

```kanji-writer
{
  "character": "猫",
  "width": 150,
  "height": 150,
  "quizOnStart": true,
  "strokeAnimationSpeed": 1,
  "delayBetweenStrokes": 500
}
```

## Options

- `character`: The Japanese character to render (Required).
- `width`: Width of the container (Default: 100).
- `height`: Height of the container (Default: 100).
- `quizOnStart`: Start in quiz mode immediately (Default: true).
- `showOutline`: Show the background outline (Default: true).
- `strokeColor`: Color of the strokes.
- `drawingColor`: Color of the line you draw.

## Credits

Based on [Hanzi Writer](https://hanziwriter.org/) and `hanzi-writer-data-jp`.
