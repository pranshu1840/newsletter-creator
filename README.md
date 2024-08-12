# Newsletter Creator CrewAI with GUI

Welcome to the Newsletter Generator CrewAI project, powered by [crewAI](https://crewai.com). This template facilitates the setup of a multi-agent AI system, utilizing crewAI's robust and versatile framework. Our aim is to empower your agents to work together seamlessly on intricate tasks, enhancing their combined intelligence and effectiveness.

## Installation

Ensure you have Python >=3.10 <=3.13 installed on your system. This project uses [Poetry](https://python-poetry.org/) for dependency management and package handling, offering a seamless setup and execution experience.

First, if you haven't already, install poetry:

```bash
pip install poetry
```

Next, navigate to your project directory and install the dependencies:

1. First lock the dependencies and then install them:
```bash
poetry lock
```
```bash
poetry install
```

### Customizing

**Add your `OPENAI_API_KEY`, `ANTHROPIC_API_KEY`, and `EXA_API_KEY` into the `.env` file.**

- Modify `src/newsletter_gen/config/agents.yaml` to define your agents.
- Modify `src/newsletter_gen/config/tasks.yaml` to define your tasks.
- Modify `src/newsletter_gen/crew.py` to add your own logic, tools, and specific args.
- Modify `src/newsletter_gen/main.py` to add custom inputs for your agents and tasks.

## Running the Project

To kickstart your crew of AI agents and begin task execution, run this from the root folder of your project:

```bash
streamlit run src/gui/app.py
```

This command initializes the newsletter-gen Crew, assembling the agents and assigning them tasks as defined in your configuration.

This example, unmodified, will create a `report.md` file with the output of research on LLMs in the root folder.

### Running with Docker Compose

If you prefer using Docker, you can build and run the application with Docker Compose:

1. Build and run the containers:
    ```bash
    docker-compose up --build
    ```

2. To stop and remove the containers, use:
    ```bash
    docker-compose down
    ```

## Understanding Your Crew

The Newsletter Generator Crew consists of several AI agents, each with distinct roles, objectives, and tools. These agents work together on various tasks specified in `config/tasks.yaml`, utilizing their combined expertise to accomplish complex goals. The `config/agents.yaml` file details the capabilities and settings for each agent in the crew.
