---
marp: true
theme: default
paginate: false
backgroundColor: #060629ff
color: #fff
footer: 'https://mcp.com.ai | https://rebelion.la'
---
<style>
  a {
  color: #10c4edff;
  text-decoration: none;
}
a:hover {
  color: #da7756;
  text-decoration: underline;
}
</style>

![bg right](https://cdn.gamma.app/z3n406kubdfbysb/generated-images/trv8ZioPQIQ84iK46Bd8B.png)

# Configuring Authentication for Your MCP Servers

Transform your APIs into AI-powered MCP Tools — no coding required. 

Leverage your existing microservices securely with professional-grade authentication that scales with your infrastructure

---

![bg left](https://cdn.gamma.app/z3n406kubdfbysb/generated-images/D7HdaeLuF4dXVepsrQ7wt.png)
## What is MCP?

**Model Context Protocol** (MCP) creates a secure bridge between AI models and your APIs, transforming them into callable tools that AI agents can use intelligently.

- Direct AI-to-API communication
- Structured tool definitions
- Context-aware interactions
- Context-aware interactions

---

![bg right](https://cdn.gamma.app/z3n406kubdfbysb/generated-images/oGCGhL3AdTxBTljI0s8Ad.png)
# Why Authentication Matters?

Secure, delegated access ensures **only authorized AI agents can act on your behalf**, protecting sensitive operations and data.

- OAuth 2.1 compliance
- Consent-driven access
- No credential exposure

---

<style>
.n-columns {
display: grid;
grid-template-columns: repeat(4, 1fr);
gap: 20px;
}
</style>


![bg blur:25px saturate:0.4](https://cdn.gamma.app/z3n406kubdfbysb/generated-images/P_XmLY2FSnWfikcpAQvb7.png)

<div class="n-columns">
<div>

# Authentication Architecture

</div>
<div>

## Authorization Server

<small>

**Your OAuth/OpenID provider handles token issuance and validation, maintaining centralized security control**

</small>
</div>
<div>

## MCP Server
<small>

**Validates tokens and exposes your APIs as structured tools that AI models can discover and use effectively**
</small>
</div>
<div>

## AI Agent
<small>

**Authenticates via OAuth flow, receives access tokens, and makes authorized API calls through the MCP protocol**
</small>
</div>
</div>

---

![bg right](https://cdn.gamma.app/z3n406kubdfbysb/generated-images/P_XmLY2FSnWfikcpAQvb7.png)
# Enterprise Security

Built on OAuth 2.1 standards with delegated access controls. Maintain security compliance while enabling AI agent interactions

- Support for OAuth 2.0 Flow with PKCE
- API Key authentication for simple use cases
- Bearer Token authentication for services using JWTs or similar tokens

---

# How to Configure Authentication for MCPs?
![](https://cdn.gamma.app/z3n406kubdfbysb/generated-images/gEq_9DCaZlDDZ2EXGL4XP.png)
<!-- _class: section -->

---

# Step 1: Configure Authorization Server Metadata

## Locate Well-Known URL from your OAuth provider
    Example: https://auth.example.com/.well-known/openid-configuration

## Extract Key Endpoints

    Identify authorization, token, and introspection URLs from the metadata response.

## Configure Client Settings

    Set up client ID, scopes, and redirect URIs based on your application requirements

---

# Step 2: Define Security Schemes in OpenAPI
## Select the Appropriate OAuth2 Flow

Define your Security Scheme Object and OAuth Flow Object in your Swagger/OpenAPI specification. This creates the foundation for secure API access.

- Configure authorization code flow
- Set appropriate scopes and permissions
- Define Security Requirement Objects
- Map endpoints to security schemes

Your APIs now have structured security definitions that MCP can understand and implement automatically

---

![bg right 85%](https://cdn.gamma.app/z3n406kubdfbysb/generated-images/M9YMidFAnMcqGRo3Rvv4c.png)
# Step 3: Test

**Initiate OAuth Flow**

- Authorization server responds to token requests

**Receive Access Token**

- Access token with scopes and permissions

**Call MCP Tools**

- Use access token to make authenticated calls to MCP Tools


---

![bg left](https://cdn.gamma.app/z3n406kubdfbysb/generated-images/W717Lt4vr0Cc3LGaOqDcp.png)

<!-- backgroundImage: "radial-gradient(ellipse at right, #1193b0 -30%, #114 30%)" -->

<style scoped>
section {
  font-size: 1.8em;
}
</style>

## Ready to Transform?  

* Your APIs are ready. Your workflows are ready
* AI transformation is already in your hands
* Integrate your existing systems effortlessly

## Explore the HAPI Stack

- [HAPI MCP](https://mcp.com.ai)  
- [HAPI Docs](https://docs.mcp.com.ai)  
- [HAPI CLI](https://hapi.mcp.com.ai)  
- [QBot CLI](https://qbot.mcp.com.ai)  
- [Run MCP](https://run.mcp.com.ai)

