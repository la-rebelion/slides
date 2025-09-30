---
marp: true
theme: default
paginate: true
backgroundColor: #0d0d23
color: #fff
---

![bg right](https://cdn.gamma.app/z3n406kubdfbysb/generated-images/3lU3wFheNWrc_1x7EEQOF.png)

# 🚀 IA para programadores

## Fundamentos + herramientas + prácticas reales

Lleva tu equipo de _“vibe coding”_ a un proceso ordenado y productivo con IA integrada.

---

<style>
h3 {
  font-size: 0.90rem;
  position: absolute;
  bottom: 30px;
}
</style>
![bg saturate:0.5 right](https://cdn.gamma.app/z3n406kubdfbysb/generated-images/VdIu6ZheiAti9WrKJQApu.png)
<!-- _class: lead -->
## 💡 ¿Por qué IA en desarrollo?

**La IA no reemplaza al programador, lo potencia.**  
> Sin estructura (PRD, SAFe, agentes, IDE configurado), solo es “jugar con prompts”.

**Objetivo:**  
> ### Al final del entrenamiento tendrás un **proceso claro y herramientas prácticas** para integrar IA en tu flujo de trabajo, mejorando productividad y calidad.

---

<!-- _class: section -->
# Fundamentos de IA aplicada al desarrollo

---

![bg right saturate:0.5](https://cdn.gamma.app/z3n406kubdfbysb/generated-images/h9Fa1aUim-mlg6tyMLAMa.png)
## 🌎 Panorama actual de IA en programación

- IA como copiloto, no como reemplazo.
- Productividad vs. dependencia.
- Casos reales:  
  - GitHub Copilot  
  - ChatGPT  
  - Ollama

---

![bg blur:20px](https://cdn.gamma.app/z3n406kubdfbysb/generated-images/MAexcXTRTl4Ns1ddF0oKC.png)
## 🧠 Conceptos clave en IA para programadores

- **LLM (Large Language Models):** cómo funcionan en palabras simples.
- **Inferencia y endpoints:** qué son, cómo se consumen.
- **Prompt Engineering:** arte de hablarle a la IA para obtener valor real.
- **Agentes y orquestación:** qué son, por qué importan.

---

<!-- _class: section -->
# Preparando el terreno

---

<!-- backgroundImage: "linear-gradient(to left, #0d0d23, #07b8e3)" -->
![bg left](https://cdn.gamma.app/z3n406kubdfbysb/generated-images/MAexcXTRTl4Ns1ddF0oKC.png)
## 🛠️ Set up del entorno local

- **IDE (VS Code):** instalación y extensiones útiles  
  - Copilot  
  - CodeGPT  
  - MCP clients
- **Ollama:** instalar y correr modelos localmente.
- **Integración:** APIs y endpoints de IA.

---

![bg right](https://cdn.gamma.app/z3n406kubdfbysb/generated-images/P_XmLY2FSnWfikcpAQvb7.png)
<!-- backgroundImage: "linear-gradient(to left, #0d0d23, #070713)" -->
## 🔒 Buenas prácticas de seguridad y privacidad

- Cuándo usar modelos locales vs. en la nube.
- Gestión de datos sensibles.

---

<!-- _class: section -->
# IA dentro del flujo de trabajo

---

![bg right](https://cdn.gamma.app/z3n406kubdfbysb/generated-images/lEORisTpE5V5i9cadJo8N.png)
## 📝 Del PRD al código con IA

- Repaso del **SAFe Requirements Model** para proyectos pequeños.
- Traducir un *Product Requirement Document* en tareas técnicas con IA.
- Refinar requerimientos y dividir en historias/tareas.

---

## SAFe Requirements Model

The SAFe Requirements Model is a hierarchical model that defines requirements at the Epic, Feature, and Story levels. It is based on the [INVEST](https://en.wikipedia.org/wiki/INVEST_(mnemonic)) model for writing good user stories. The SAFe Requirements Model is a living document that will be updated as the product evolves and new requirements are identified.


[SAFe Requirements Model](https://scaledagileframework.com/safe-requirements-model/)

---

![bg 80%](https://scaledagileframework.com/wp-content/uploads/2023/03/SAFe_Requirements_Model_F01-2.svg)


<!-- footer: SAFe Requirements Model -->

---

![bg blur:30px](https://cdn.gamma.app/z3n406kubdfbysb/generated-images/Vz49KyM-6mfnb4Ymiwyq1.png)

## 🏗️ Aplicando IA en el ciclo de desarrollo

- **Diseño:** arquitecturas, diagramas, documentación.
- **Codificación:** generación, refactorización, optimización.
- **Testing:** pruebas unitarias e integración automáticas.
- **Documentación:** README, comentarios, guías de usuario.

<!-- remove footer -->
<!-- footer: AI en el desarrollo -->

---

<!-- _class: section -->
# Agentes y MCP

---

![bg left](https://cdn.gamma.app/z3n406kubdfbysb/generated-images/VdIu6ZheiAti9WrKJQApu.png)

## 🤖 ¿Qué son los agentes?

- Diferencia entre LLM básico y agente autónomo.
- Ejemplos:  
  - LangChain  
  - MCP (Model Context Protocol)
  - A2A (Agent-to-Agent)

---

![bg right](https://cdn.gamma.app/z3n406kubdfbysb/generated-images/QEKjMgwR5_s_vISrMdoqz.png)
## 🔗 MCP en acción

- MCP es el “Zapier de agentes”.
- Integrar agentes con herramientas y APIs.
- Ejemplo: conectar un LLM con un repositorio de código.

---

<!-- _class: section -->
# Casos prácticos y workshop

---

<style>
.three-columns {
display: grid;
grid-template-columns: repeat(3, 1fr);
gap: 20px;
}
</style>

<div class="three-columns">
   <div>

## 🏋️ 1: PRD → Código base

- Definir un PRD simple (ej. app de notas para vendedores).
- Usar IA para generar el *scaffolding* inicial.
   </div>
   <div>

## 🧹 2: Refactorización con IA

- Tomar código desordenado.
- Usar IA para mejorar legibilidad, añadir pruebas y documentación.
   </div>
   <div>

## 🦾 3: Agente MCP + IDE

- Configurar un agente que ejecute tareas simples dentro del proyecto.
- Ejemplo: revisar pedidos de mercancía.
  
   </div>
</div>

---

<!-- _class: section -->
# Productividad y cultura

---
![bg left](https://cdn.gamma.app/z3n406kubdfbysb/generated-images/oGCGhL3AdTxBTljI0s8Ad.png)
## 🛑 Evita el “vibe coding” con IA

- No le pidas cualquier cosa a la IA sin proceso.
- Adopta estructura:  
  PRD → tareas → IA como copiloto → validación humana.

---

![bg right](https://cdn.gamma.app/z3n406kubdfbysb/generated-images/Vz49KyM-6mfnb4Ymiwyq1.png)
## 📊 Medición del impacto

- Tiempo ahorrado.
- Calidad del código.
- Reducción de bugs.

---

## 🪜 Próximos pasos

- Especialización en agentes.
- Integración con pipelines CI/CD.
- Construcción de framework propio de buenas prácticas con IA.

![bg right:25% ](https://images.unsplash.com/photo-1617826235850-757e7d5120c1?q=80&w=2021&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D)

---

![bg right](https://cdn.gamma.app/z3n406kubdfbysb/generated-images/7dutgjvbnL65nO7a_AlYt.png)
## 📚 Recursos

- Documentación oficial:  
  GitHub Copilot, ChatGPT, Ollama.
- Tutoriales de MCP y agentes ([HAPI Stack](https://mcp.com.ai)).
- Ejemplos de PRDs y cómo desglosarlos en tareas técnicas.
- Plantillas de [prompts efectivos](https://code.visualstudio.com/docs/copilot/customization/prompt-files) para distintas fases del desarrollo.

---

<!-- backgroundImage: "linear-gradient(to bottom, #000, #000)" -->
![bg left](https://cdn.gamma.app/z3n406kubdfbysb/generated-images/JOHSHrWh9O-sMGdNdN4yd.png)
<!-- _class: lead -->
# ¡Gracias!

**La IA es poderosa, pero su verdadero valor se desbloquea cuando se integra de manera estructurada y consciente en el flujo de trabajo del equipo.**

**¡Potencia tu desarrollo con IA! 🚀**
