# 🎲 Random

[![🎲 Random Choice](https://github.com/HarryVasanth/random/actions/workflows/run.yml/badge.svg)](https://github.com/HarryVasanth/random/actions/workflows/run.yml)

A collection of simple scripts that accomplish a random task and display the
corresponding output as ASCII art.

## Tasks

| Task | Script |
| --- | --- |
| Roll a die | `dice/roll.sh` |
| Pick a card | `deck/card.sh` |
| Flip a coin | `random/coin.sh` |
| Ask the Magic 8-Ball | `random/eightball.sh` |
| Draw rock, paper or scissors | `random/rps.sh` |
| Generate a password | `random/password.sh` [`length`] |
| Generate a UUID | `random/uuid.sh` |
| Pick a number | `random/number.sh` [`min`] [`max`] |
| Draw lottery numbers | `random/lottery.sh` |
| Pick an emoji | `random/emoji.sh` |
| Pick a colour | `random/color.sh` |
| Crack a fortune cookie | `random/fortune.sh` |
| Read a quote | `random/quote.sh` |
| Draw a tarot card | `random/tarot.sh` |
| Draw a domino | `random/domino.sh` |
| Pick a prime | `random/prime.sh` |
| Pick a letter | `random/letter.sh` |
| Pick a weekday | `random/weekday.sh` |
| Pick a month | `random/month.sh` |
| Pick a planet | `random/planet.sh` |
| Pick an element | `random/element.sh` |
| Pick a flag | `random/flag.sh` |
| Cast a trigram | `random/hexagram.sh` |
| Call a bingo number | `random/bingo.sh` |
| Pick a zodiac sign | `random/zodiac.sh` |
| Pick a word | `random/word.sh` |
| Get a compliment | `random/compliment.sh` |

Each script is standalone: run it with `bash <script>` or make it executable
and run it directly. The `µ` variants (`dice/µroll.sh`, `deck/µcard.sh`) do the
same job in a single compressed line.

## Checks

The scripts are [ShellCheck](https://www.shellcheck.net/) clean and formatted
with [shfmt](https://github.com/mvdan/sh):

```sh
shellcheck dice/*.sh deck/*.sh random/*.sh
shfmt -w .   # uses .editorconfig
```
