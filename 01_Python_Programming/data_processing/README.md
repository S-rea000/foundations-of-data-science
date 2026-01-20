# Fundamentals of Data Science – Python Practice

This repository contains structured Python exercises focused on **core data science fundamentals**, including data processing, control flow, and basic API response handling. Each task emphasizes clear logic, scalability, and real-world relevance.

---

## Contents

- Simple Data Processing
- API Response Handling
- Use of loops and dictionaries
- Basic algorithmic complexity analysis
- Error handling and logging concepts

---

## Question 1: Simple Data Processing

### Scenario
You are given a list of user login records in the following format:
userId, loginTime
101, 09:01
102, 09:05
101, 09:10
103, 09:15
101, 09:20

### Tasks
- Count how many times each user logged in  
- Return the result in a readable format  
- Explain how the solution behaves when the dataset becomes very large  

### Approach
- Iterate through the login records using a loop  
- Use a dictionary to track the number of logins per user  
- Print the results in a clear and readable format  

### Scalability Consideration
- **Time Complexity:** O(n), where n is the number of login records  
- **Space Complexity:** O(u), where u is the number of unique users  

This solution scales efficiently because each record is processed exactly once. For very large datasets, the same approach can be extended using batch processing or distributed systems.

---

## Question 2: API Response Handling

### Scenario
An API returns one of the following responses:

**Success Response**
```json
{
  "status": "success",
  "data": {
    "name": "Asha"
  }
}

**Error Response**
{
  "status": "error",
  "message": "User not found"
}

###Tasks
- Write logic to handle both responses
- Explain what the program should do in each case
- Describe how errors should be logged

