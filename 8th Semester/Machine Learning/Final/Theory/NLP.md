# Natural Language Processing (NLP)

## What Is Natural Language Processing?

- Natural language processing (NLP) is a branch of artificial intelligence within computer science that focuses on helping computers to understand the way that humans write and speak.
- This is a difficult task because it involves a lot of unstructured data.
- The style in which people talk and write (sometimes referred to as 'tone of voice') is unique to individuals, and constantly evolving to reflect popular usage.

## Components of NLP

There are two components of NLP as given:

### Natural Language Understanding (NLU)

Understanding involves the following tasks:
- Mapping the given input in natural language into useful representations.
- Analyzing different aspects of the language.

### Natural Language Generation (NLG)

It is the process of producing meaningful phrases and sentences in the form of natural language from some internal representation.

It involves:
- **Text planning** - It includes retrieving the relevant content from knowledge base (Corpus).
- **Sentence planning** - It includes choosing required words, forming meaningful phrases, setting tone of the sentence.
- **Text Realization** - It is mapping sentence plan into sentence structure.

> The NLU is harder than NLG.

## Difficulties in NLU

NL has an extremely rich form and structure. It is very ambiguous. There can be different levels of ambiguity:

- **Lexical ambiguity** - It is at very primitive level such as word-level.
  - Example: treating the word "google" as noun or verb?
- **Syntax Level ambiguity** - A sentence can be parsed in different ways.
  - Example: "Old men and women were taken to safe place."
- **Referential ambiguity** - Referring to something using pronouns.
  - Example: Ali went to Saleem. He said, "he is tired." — Exactly who is tired?

## NLP Terminologies

- **Phonology** - It is study of organizing sound systematically.
- **Morphology** - It is a study of construction of words from primitive meaningful units. This divides words into smaller parts called morphemes.
  - Example: The word "untestably" would be broken into [[un[[test]able]]ly], where the algorithm recognizes "un," "test," "able" and "ly" as morphemes. This is especially useful in machine translation and speech recognition.
- **Syntax** - It refers to arranging words to make a sentence. It also involves determining the structural role of words in the sentence and in phrases.
  - Example: "Old men and women were taken to safe place."
- **Semantics** - It is concerned with the meaning of words and how to combine words into meaningful phrases and sentences.
  - Example: "The car hit the person while it was moving."
- **Pragmatics** - It deals with using and understanding sentences in different situations and how the interpretation of the sentence is affected.
  - Example: "The police are coming."
- **Discourse** - It deals with how the immediately preceding sentence can affect the interpretation of the next sentence.

## Steps in NLU

### Tokenization

Tokenization is essentially splitting a phrase, sentence, paragraph, or an entire text document into smaller units, such as individual words or terms. Each of these smaller units are called **tokens**.

#### Need for Tokenization:

Before processing a natural language, we need to identify the words that constitute a string of characters. That's why tokenization is the most basic step to proceed with NLP (text data). This is important because the meaning of the text could easily be interpreted by analyzing the words present in the text.

#### Uses

There are numerous uses of doing this. We can use this tokenized form to:
- Count the number of words in the text
- Count the frequency of the word, that is, the number of times a particular word is present.
- These tokens are considered as a first step for stemming and lemmatization.

### Stemming and Lemmatization

Stemming and Lemmatization are Text Normalization (or sometimes called Word Normalization) techniques in the field of Natural Language Processing that are used to prepare text, words, and documents for further processing.

- **Stemming** just removes or stems the last few characters of a word, often leading to incorrect meanings and spelling.
- **Lemmatization** considers the context and converts the word to its meaningful base form, which is called **Lemma**.

#### Examples of Stemming

- If you lemmatize the word 'Caring', it would return 'Care'. If you stem, it would return 'Car' and this is erroneous.
- If you lemmatize the word 'Stripes' in verb context, it would return 'Strip'. If you lemmatize it in noun context, it would return 'Stripe'. If you just stem it, it would just return 'Strip'.
- You would get same results whether you lemmatize or stem words such as walking, running, swimming... to walk, run, swim etc.

#### Issues with Stemming

Sometimes, the same word can have multiple different Lemmas. We should identify the Part of Speech (POS) tag for the word in that specific context. Here are the examples to illustrate all the differences and use cases:
- If you lemmatize the word 'Caring', it would return 'Care'. If you stem, it would return 'Car' and this is erroneous.
- If you lemmatize the word 'Stripes' in verb context, it would return 'Strip'. If you lemmatize it in noun context, it would return 'Stripe'. If you just stem it, it would just return 'Strip'.
- You would get same results whether you lemmatize or stem words such as walking, running, swimming... to walk, run, swim etc.

#### Stemming vs Lemmatization

- Lemmatization is computationally expensive since it involves look-up tables and what not.
- If you have large dataset and performance is an issue, go with Stemming. Remember you can also add your own rules to Stemming.
- If accuracy is paramount and dataset isn't homongous, go with Lemmatization.

### Lexical Analysis

It involves identifying and analysing the structure of words.
- Lexicon of a language means the collection of words and phrases in a language. Lexical analysis is dividing the whole chunk of text into paragraphs, sentences, and words.
  - Example: "The tank was full of water."

### Syntactic Analysis (Parsing)

It involves analysis of words in the sentence for grammar and arranging words in a manner that shows the relationship among the words.
- The sentence such as: "The school goes to boy" is rejected by English syntactic analyzer.

### Semantic Analysis

It draws the exact meaning or the dictionary meaning from the text. The text is checked for meaningfulness. It is done by mapping syntactic structures and objects in the task domain.
- The semantic analyzer disregards sentence such as "hot ice-cream".

### Discourse Integration

The meaning of any sentence depends upon the meaning of the sentence just before it. In addition, it also brings about the meaning of immediately succeeding sentence.
- For example, the word "that" in the sentence "He wanted that" depends upon the prior discourse context.

### Pragmatic Analysis

Pragmatic means practical or logical. If someone calls you pragmatic, they mean that you tend to think in terms of the practical or logical rather than the ideal situation.

The term pragmatics is used in contrast to semantics. Semantics has to do with the actual definition of a word or text. Pragmatics refers to how words are used in a practical sense. Words can mean different things, and often the same word can mean something different depending on the context in which it is used.

#### Pragmatic Examples

- "Will you crack open the door? I am getting hot."
  - Semantically, the word "crack" would mean to break, but pragmatically we know that the speaker means to open the door just a little to let in some air.
- "If you eat all of that food, it will make you bigger!"
  - Semantically, "bigger" in this sentence would mean larger than you are currently. Think about how this sentence, pragmatically, would mean something different depending on the context. If it is said to a young child, pragmatically, it would mean to grow bigger. If it is said to a grown person who is already obese, it would mean something entirely different.

## Natural Language Generation

### Corpus

A text corpus is a very large collection of text (often many billion words) produced by real users of the language and used to analyse how words, phrases and language in general are used.

A corpus is also be used for generating various language databases used in software development such as:
- Predictive keyboards, spell check, grammar correction, text/speech understanding systems, text-to-speech modules, machine translation systems and many others.

### Types of Corpus

#### Monolingual Corpus
- A monolingual corpus is the most frequent type of corpus. It contains texts in one language only.
- The corpus is usually tagged for parts of speech and is used by a wide range of users for various tasks from highly practical ones,
  - E.g. checking the correct usage of a word or looking up the most natural word combinations, to scientific use, e.g. identifying frequent patterns or new trends in language.

#### Parallel Corpus, Multilingual Corpus
- A parallel corpus consists of two or more monolingual corpora. The corpora are the translations of each other.
- For example, a novel and its translation. A CAT tool could be used to build a parallel corpus. Both languages need to be aligned, i.e. corresponding segments.
- The user can then search for all examples of a word or phrase in one language and the results will be displayed together with the corresponding sentences in the other language.

## Real-world Applications

Real-world applications and use cases of NLP include:
- Voice-controlled assistants like Siri and Alexa.
- Natural language generation for question answering by customer service chatbots.
- Streamlining the recruiting process on sites like LinkedIn by scanning through people's listed skills and experience.
- Tools like Grammarly which use NLP to help correct errors and make suggestions for simplifying complex writing.
- Language models like autocomplete which are trained to predict the next words in a text, based on what has already been typed.

## How does Natural Language Processing work?

- Natural language processing can be structured in many different ways using different machine learning methods according to what is being analysed.
- It could be something simple like frequency of use or sentiment attached, or something more complex. Whatever the use case, an algorithm will need to be formulated.
- The Natural Language Toolkit (NLTK) is a suite of libraries and programs that can be used for symbolic and statistical natural language processing in English, written in Python.
- It can help with all kinds of NLP tasks like tokenising (also known as word segmentation), part-of-speech tagging, creating text classification datasets, and much more.