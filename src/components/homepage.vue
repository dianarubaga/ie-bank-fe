<template>
    <div class="homepage">
      <div class="jumbotron text-center">
        <div class="container">
          <h1 class="display-3">Welcome to IE Bank Corp</h1>
          <p class="lead">Your trusted partner for financial solutions.</p>
          <hr class="my-4" />
          <p>
            At IE Bank Corp, we offer a range of financial services to meet your needs. 
            Join us today and take control of your financial future.
          </p>
          <b-button variant="primary" size="lg" @click="navigateToAccounts">
            Explore Accounts
          </b-button>
        </div>
      </div>
    </div>
  </template>
  
  <script>
  export default {
    name: "Homepage",
    methods: {
      navigateToAccounts() {
        // You can add navigation logic here
        this.$router.push("/accounts");
      },
    },
  };
  </script>
  
  <style scoped>
  /* Flex container for full-page layout */
  .homepage {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background: linear-gradient(135deg, #74ebd5, #acb6e5); /* Gradient background */
    color: #333; /* Dark gray for text */
  }
  
  /* Jumbotron styling */
  .jumbotron {
    background: rgba(255, 255, 255, 0.9); /* Softer white background with slight opacity */
    padding: 60px;
    border-radius: 20px; /* Rounded corners for a more modern look */
    box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1); /* More pronounced shadow for depth */
    max-width: 800px;
    margin: auto;
  }
  
  /* Header styling */
  h1 {
    font-size: 3.5rem;
    font-weight: bold;
    color: #2c3e50; /* Darker blue-gray for the header */
    margin-bottom: 20px;
  }
  
  /* Lead paragraph styling */
  .lead {
    font-size: 1.5rem;
    margin-bottom: 30px;
    color: #576574; /* Muted gray for secondary text */
  }
  
  /* Horizontal rule styling */
  hr {
    border-top: 3px solid #3498db; /* Primary blue for the line */
    width: 50%; /* Shorter width for the line */
    margin: 20px auto;
  }
  
  /* Button styling */
  b-button {
    font-size: 1.25rem;
    background-color: #3498db; /* Primary blue */
    border-color: #3498db;
    padding: 15px 30px;
    border-radius: 50px; /* Rounded button for a modern look */
    transition: background-color 0.3s ease; /* Smooth transition */
  }
  
  /* Button hover effect */
  b-button:hover {
    background-color: #2980b9; /* Darker blue on hover */
    border-color: #2980b9;
  }
  
  /* Responsive styling for smaller devices */
  @media (max-width: 768px) {
    h1 {
      font-size: 2.5rem;
    }
  
    .lead {
      font-size: 1.2rem;
    }
  
    .jumbotron {
      padding: 40px;
    }
  
    b-button {
      font-size: 1.1rem;
      padding: 12px 25px;
    }
  }
  </style>
  