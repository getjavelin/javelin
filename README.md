# Javelin
Javelin: High-Performance Enterprise Grade LLM Gateway & Model Router

For more information, please visit: www.getjavelin.io
If you would like to participate in our early-access release, please contact: sharath@getjavelin.io

Large Language Models (LLMs) are powerful tools that offer a wide range of potential applications to add value to businesses. However, making these LLMs accessible to various teams and individuals in an organization presents security, cost management, and data handling challenges, including data leaks and intellectual property & PII/PHI risks.

Javelin is a highly performant, ultra-low latency gateway written in Golang that serves as a centralized gateway for LLM interactions across the Enterprise to address these challenges. It enables organizations to manage access to LLMs effectively and make them available for experimentation and production use cases while ensuring robust security & compliance. 

Javelin offers several features, including centralized management of LLM credentials and a simple routing framework to integrate with various closed and open-source LLMs. With Javelin, organizations can secure LLMs from development to production.

#### Simple API-Based Access
One of the significant advantages of the AI Gateway is its standardized REST API for LLM tasks. This uniform format applies to LLMs from all vendors, making it easier for data analysts and data scientists to experiment with multiple LLMs and achieve optimal results without dealing with vendor-specific API documentation. Engineers and scientists can rapidly experiment with standard interfaces regardless of the underlying model or vendor. 

Python SDK: https://github.com/getjavelin/javelin-python

#### Centralized Access Control
Javelin accomplishes centralized access through configured Routes, representing LLMs from specific Providers and defining their associated credentials and configurations. Instead of each team managing LLM credentials, organizations can create Routes for different use cases and grant access to consumers like data analysts, data scientists, and production applications as needed. Consumers can query these Routes using a standard interface without having direct access to credentials or configurations, ensuring security and control.

#### Policy & Cost Guardrails
The gateway provides robust policy guardrails like throttling requests destined for a route, custom retries, LLM caching, etc., and cost guardrails like setting budgets for each route (representing departments or groups of users) and throttling calls when these budgets are reached. You always have up-to-date information on how much you are spending on each of your LLM initiatives. 

#### Data Leak Protection
Javelin actively monitors prompts, requests, and responses for data leaks and proactively redacts PII/PHI and other sensitive information the Organization tags.  

#### Hallucination Detection
Javelin can be configured to detect hallucinations on specific routes. Javelin's proprietary technology enables robust hallucination detection. The gateway can be configured and tuned to detect hallucinations for domain-specific use cases.   

#### Auditability
Javelin has a built-in asynchronous memory store for logging and deep inspection of conversational memory. Security teams and data scientists often need historical archives for forensics, audits, and downstream custom model training. Routes can be configured with an archive option, enabling easy archiving of all interactions with a model. This powerful feature can be used at the granularity of a Route for the on-demand archiving of messages. 

#### Supports Open and closed Source LLMs
To use Javelin, developers interact with their favorite models using REST, Python, or Javascript clients. They can create Routes for different LLMs, such as OpenAI GPT-4 or Anthropic’s Claude 100k model, and query them for tasks like embeddings, completions, and chat. Javelin supports closed and open-source models, allowing LLM reuse across various applications.

