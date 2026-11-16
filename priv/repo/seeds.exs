# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Mixshoulders.Repo.insert!(%Mixshoulders.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

Mixshoulders.Repo.insert!(%Mixshoulders.Shoulder{
  name: "Alan Turing",
  dob: "June 23, 1912",
  contributions: "Father of AI: posed \"Can machines think?\" and the Turing Test (1950); defined computability with the Turing machine. Broke the Enigma cipher at Bletchley Park.",
  infolink: "https://en.wikipedia.org/wiki/Alan_Turing"
})

Mixshoulders.Repo.insert!(%Mixshoulders.Shoulder{
  name: "Haskell Curry",
  dob: "September 12, 1900",
  contributions: "Founded combinatory logic, a variable-free twin of lambda calculus. Currying and the Curry-Howard correspondence underpin functional programming; Haskell is named for him.",
  infolink: "https://en.wikipedia.org/wiki/Haskell_Curry"
})

Mixshoulders.Repo.insert!(%Mixshoulders.Shoulder{
  name: "Barbara Liskov",
  dob: "November 7, 1939",
  contributions: "Liskov Substitution Principle: subtypes must be usable wherever their base type is (the L in SOLID). Pioneered data abstraction with CLU. Turing Award 2008.",
  infolink: "https://en.wikipedia.org/wiki/Barbara_Liskov"
})

Mixshoulders.Repo.insert!(%Mixshoulders.Shoulder{
  name: "Claude Shannon",
  dob: "April 30, 1916",
  contributions: "Showed Boolean algebra can design switching circuits (1937), the basis of all digital logic. Founded information theory: the bit, entropy and channel capacity (1948).",
  infolink: "https://en.wikipedia.org/wiki/Claude_Shannon"
})

Mixshoulders.Repo.insert!(%Mixshoulders.Shoulder{
  name: "Grace Hopper",
  dob: "December 9, 1906",
  contributions: "Built the first compiler, A-0 (1952). Created FLOW-MATIC, the first English-like programming language, which led directly to COBOL.",
  infolink: "https://en.wikipedia.org/wiki/Grace_Hopper"
})

Mixshoulders.Repo.insert!(%Mixshoulders.Shoulder{
  name: "Edsger W. Dijkstra",
  dob: "May 11, 1930",
  contributions: "Shaped structured programming with \"Go To Statement Considered Harmful\" (1968). Also gave us the shortest-path algorithm and semaphores. Turing Award 1972.",
  infolink: "https://en.wikipedia.org/wiki/Edsger_W._Dijkstra"
})

Mixshoulders.Repo.insert!(%Mixshoulders.Shoulder{
  name: "David Turner",
  dob: "1946",
  contributions: "Pioneer of lazy functional programming: SASL, KRC and Miranda, the direct ancestor of Haskell. Showed combinator graph reduction makes lazy evaluation practical.",
  infolink: "https://en.wikipedia.org/wiki/David_Turner_(computer_scientist)"
})

Mixshoulders.Repo.insert!(%Mixshoulders.Shoulder{
  name: "George Stibitz",
  dob: "April 30, 1904",
  contributions: "Built the Model K (1937), a relay binary adder on his kitchen table. His Complex Number Calculator ran the first remote computation over phone lines (1940).",
  infolink: "https://en.wikipedia.org/wiki/George_Stibitz"
})

