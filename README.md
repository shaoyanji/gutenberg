# gutenberg
htmx-wasm-duckdb-alpinejs

## CLI Dependencies
fzf - fuzzy finder
go-task - task runner, build tool, and menu
yq - yaml processor

## Tech Stack
alpinejs - webUI


the following command will download the book from gutenberg:

```bash
wget -w 2 -m -H "https://www.gutenberg.org/ebooks/3023.txt.utf-8"
```

the following command will download the catalog of books from gutenberg run weekly as it is a 20 MiB file:
```bash
curl https://www.gutenberg.org/cache/epub/feeds/pg_catalog.csv
```


