from pathlib import Path
import yaml

BASE_DIR = Path(__file__).resolve().parent
CONFIG_PATH = BASE_DIR / "config.yaml"
RULES_DIR = BASE_DIR / "rules"


def load_config():
    with open(CONFIG_PATH, "r", encoding="utf-8") as file:
        return yaml.safe_load(file)


def list_rules(config):
    tasks = []

    for table_name, table_config in config["tables"].items():
        if table_config.get("enabled", False):
            for rule in table_config.get("rules", []):
                tasks.append((table_name, rule))

    return tasks


def main():
    config = load_config()
    tasks = list_rules(config)

    print("Data Quality Rules to Execute:")

    for table_name, rule in tasks:
        print(f"Table: {table_name}, Rule: {rule}")


if __name__ == "__main__":
    main()
