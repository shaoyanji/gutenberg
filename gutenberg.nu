export def "gb read" [] {
  gb search | http get $"https://www.gutenberg.org/ebooks/($in.Text#).txt.utf-8"
}

export def "gb search" [] {
  open pg_catalog.csv | input list -f -d Title
}
export def "gb index" [] {
  http get https://www.gutenberg.org/cache/epub/feeds/pg_catalog.csv | save pg_catalog.csv
}
