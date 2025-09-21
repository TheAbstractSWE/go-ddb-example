package model

type User struct {
    PK      string `dynamodbav:"PK"`
    SK      string `dynamodbav:"SK"`
    UserID  string `dynamodbav:"UserID"`
    Name    string `dynamodbav:"Name"`
    Email   string `dynamodbav:"Email,omitempty"`
    Version int    `dynamodbav:"Version"`
}
