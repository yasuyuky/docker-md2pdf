# Docker Image for markdown to pdf conversion using pandoc -t html5

*Default settings are for Japanese*

## Typical Usage

Change directory to your project dir.
Then you can convert by the following command.

```
docker run --rm -it -v$(PWD):/work yasuyuky/md2pdf conv taraget.md
```

## Advanced Usage

It takes options via docker `-e` like this.

### Setting Language

```
docker run --rm -it -v$(PWD):/work -e LANG=en_US.UTF-8 -e lang=en yasuyuky/md2pdf conv taraget.md
```

### Using MathJax
```
docker run --rm -it -v$(PWD):/work -e math=--mathjax yasuyuky/md2pdf conv taraget.md
```

### Using your custom css
```
docker run --rm -it -v$(PWD):/work -e css=./my.css yasuyuky/md2pdf conv taraget.md
```

See `assets/conv.sh` for more options.

## License

MIT
