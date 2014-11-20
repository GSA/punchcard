punchcard
=========

Repository of vocabularies, synonyms, protected words, dictionaries, etc.

# Synonyms

Each locale's synonyms are in a separate YAML file (e.g., `es.yml`, `en.yml`). Here is a sample entry:

```yaml
inmunización, vacuna, vacunación:
  :notes: Approved (synonyms) and (stemming). AFF 11/12/14
  :status: Approved
  :analyzed: inmunizacion, vacun, vacunacion
```

The entry listing is a comma-separated list of natural language terms, probably lemmas. The `notes` field can be long and multi-line, but it still needs to be [valid YAML](http://www.yamllint.com). The `status` is either `Approved`, `Rejected`, or `Candidate`.

The `analyzed` field is a comma-separated list of the entry terms after they have been run through an analyzer and de-duped. The analysis chain comprises five filters:

1. standard 
2. asciifolding 
3. lowercase 
4. es_stop_filter 
5. es_stem_filter

In the example entry above, `vacuna` becomes `vacun` because of the Spanish stemmer, and `vacunación` and `inmunización` become `vacunacion` and `inmunizacion`, respectively, because of ASCII folding.

## Extracting approved synonyms to Solr/Elasticsearch format

Generate the text file of *approved* synonyms for each locale, like this:

    cd synonyms
    ./lib/yaml_to_solr.rb es.yml > es.txt
    ./lib/yaml_to_solr.rb en.yml > en.txt

You can then reference these files when you define your per-locale synonym filters.

# Protected words

Each locale's protected words are in a separate YAML file (e.g., `es.yml`, `en.yml`). The [keyword marker token filter](http://www.elasticsearch.org/guide/en/elasticsearch/reference/current/analysis-keyword-marker-tokenfilter.html) keeps these words from getting treated by the stemmer. 
Here is a sample entry:

```yaml
irs:
  :notes: Stems to ir in minimal_english
  :status: Approved
```

The entry listing is the token *after* ASCII folding and lowercasing.

## Extracting approved protected words to Solr/Elasticsearch format

Generate the text file of *approved* protected words for each locale, like this:

    cd protected_words
    ./lib/yaml_to_solr.rb es.yml > es.txt
    ./lib/yaml_to_solr.rb en.yml > en.txt

You can then reference these files when you define your per-locale keyword marker filters.

# Analysis

The Elasticsearch index mapping used to transform entries into analyzed fields is here:

```json
{
  "settings": {
    "index": {
      "analysis": {
        "char_filter": {
          "ignore_chars": {
            "type": "mapping",
            "mappings": [
              "'=>",
              "’=>",
              "`=>"
            ]
          }
        },
        "filter": {
          "es_stem_filter": {
            "type": "stemmer",
            "name": "light_spanish"
          },
          "en_stop_filter": {
            "type": "stop",
            "stopwords": [
              "a",
              "an",
              "and",
              "are",
              "as",
              "at",
              "be",
              "but",
              "by",
              "for",
              "if",
              "in",
              "into",
              "is",
              "no",
              "not",
              "of",
              "on",
              "or",
              "s",
              "such",
              "t",
              "that",
              "the",
              "their",
              "then",
              "there",
              "these",
              "they",
              "this",
              "to",
              "was",
              "with"
            ]
          },
          "es_stop_filter": {
            "type": "stop",
            "stopwords": [
              "a",
              "al",
              "ante",
              "aquel",
              "aquello",
              "bajo",
              "cabe",
              "cada",
              "como",
              "con",
              "conmigo",
              "consigo",
              "contigo",
              "contra",
              "cual",
              "cuando",
              "de",
              "del",
              "desde",
              "despues",
              "donde",
              "durante",
              "e",
              "el",
              "en",
              "entonces",
              "entre",
              "es",
              "esta",
              "esto",
              "fin",
              "fue",
              "ha",
              "hacia",
              "has",
              "hasta",
              "la",
              "las",
              "le",
              "les",
              "los",
              "mas",
              "mediante",
              "menos",
              "mi",
              "ni",
              "o",
              "para",
              "pero",
              "por",
              "que",
              "quien",
              "salvo",
              "segun",
              "ser",
              "si",
              "sin",
              "so",
              "sobre",
              "solamente",
              "solo",
              "somos",
              "son",
              "soy",
              "su",
              "suya",
              "suyo",
              "suyos",
              "tal",
              "tambien",
              "tras",
              "u",
              "un",
              "una",
              "unas",
              "unos",
              "via",
              "y"
            ]
          },
          "en_stem_filter": {
            "type": "stemmer",
            "name": "minimal_english"
          }
        },
        "analyzer": {
          "en_analyzer": {
            "type": "custom",
            "char_filter": [
              "ignore_chars"
            ],
            "filter": [
              "standard",
              "asciifolding",
              "lowercase",
              "en_stop_filter",
              "en_stem_filter"
            ],
            "tokenizer": "standard"
          },
          "es_analyzer": {
            "type": "custom",
            "char_filter": [
              "ignore_chars"
            ],
            "filter": [
              "standard",
              "asciifolding",
              "lowercase",
              "es_stop_filter",
              "es_stem_filter"
            ],
            "tokenizer": "standard"
          }
        }
      }
    }
  }
}
```
