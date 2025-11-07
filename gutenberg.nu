# Gutenberg EBook fetcher
export def gb [] {
  scope commands | where name starts-with "gb " | get name | input list | nu -c $"source gutenberg.nu; ($in)"
}
# saves file as text.txt
export def "gb save" [] {
gb read | save text.txt
}
# prints text to terminal
export def "gb read" [] {
gb dl | split row -r '\*\*\*' | get 2
}
# fuzzy search the repo
export def "gb search" [] {
  open pg_catalog.csv | input list -f -d Title
}
# updates gutenberg catalog, does require extract
export def "gb update" [] {
  http get https://www.gutenberg.org/cache/epub/feeds/pg_catalog.csv.gz | save pg_catalog.csv.gz -f;
  extract pg_catalog.csv.gz
}
# downloads using nushell method
export def "gb dl" [] {
  gb search | http get $"https://www.gutenberg.org/ebooks/($in.Text#).txt.utf-8"
}
