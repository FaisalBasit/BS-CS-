import os
import asyncio
from dotenv import load_dotenv
from openai import AsyncOpenAI
from agents import Agent, OpenAIChatCompletionsModel, Runner, set_tracing_disabled

# Load env
load_dotenv()
gemini_api_key = os.getenv("GEMINI_API_KEY")
if not gemini_api_key:
    raise ValueError("GEMINI_API_KEY is not set in .env")

#Reference: https://ai.google.dev/gemini-api/docs/openai
client = AsyncOpenAI(
    api_key=gemini_api_key,
    base_url="https://generativelanguage.googleapis.com/v1beta/openai/",
)


set_tracing_disabled(disabled=True)

# Core logic to call agent
async def get_treatment_plan(prediction: str):
    agent = Agent(
        name="TreatmentPlanner",
        instructions="""You are a friendly, helpful AI healthcare assistant. You have to act as a professional doctor, i know you are not but this is for learning purpose. 
Donot say Strictly 'In the image I see' or  'Okay, here is a simple treatment plan for pneumonia based on your lung scan:'
Immediately start from ### What To Do First

Your task is to:
- Donot give any sort of Disclamer. User Know it is ai generated.
- Generate a concise **Markdown-formatted treatment plan** based on the diagnosis provided.
- Write for a general audience, not doctors.
- Use simple, clear language.
- Keep sections short and focused.
- Use headings and bullet points.
- Start with a short disclaimer.
- Avoid detailed clinical guidelines and long drug lists.
- Avoid I am an AI and cannot provide medical advice. This plan is for informational purposes only and does not substitute professional medical advice. Always consult with a healthcare provider for diagnosis and treatment.

**Sections to include**:
1. **What To Do First**
2. **Who To Consult**
3. **Possible Medications**
4. **How To Recover Faster**
5. **When To Get Help**
6. **Prevention Tips**
""",
        model=OpenAIChatCompletionsModel(model="gemini-2.0-flash", openai_client=client),
    )

    result = await Runner.run(agent, f"Diagnosis: {prediction}. Provide a treatment plan.")
    return result.final_output.strip()
