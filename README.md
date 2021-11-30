# README

schema.graphql
```
Hiring API

enum Role {
  USER
  ADMIN
}

enum QuestionType {
  TEXT
  CODE
  CHECKBOX
  RADIO
}

union SearchResult = Candidate | Quiz | Test

type Quiz {
  id: ID!
  name: String!
  duration: Int!
  question: [Question!]!
}


type Question {
  title: String!
  type: QuestionType!
  Answers: String!
}

type Candidate {
  email: String!
  first_name: String!
  last_name: String!
}

type Test {
  candidate: Candidate!
  quiz: Quiz!
}

type Query {
  allQuiz(last: Int): [Candidate!]!
  allQuestions(test_id: Int): [Question]!
  allCandidates: [Candidate!]!
  search(term: String!): [SearchResult!]!
}
```
