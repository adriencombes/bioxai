import datasets
import os
from huggingface_hub import login
login(token=os.environ.get('HUGGINGFACE_TOKEN'))

local_dir=os.path.join(os.environ.get('DATASET_DIR'), 'hest')

def download_all():
    dataset = datasets.load_dataset(
        'MahmoodLab/hest',
        cache_dir=local_dir,
        patterns='*'
    )

def download_sample():
    ids_to_query = ['TENX96', 'TENX99'] # list of ids to query

    list_patterns = [f"*{id}[_.]**" for id in ids_to_query]
    dataset = datasets.load_dataset(
        'MahmoodLab/hest',
        cache_dir=local_dir,
        patterns=list_patterns
    )

if __name__ == "__main__":
    download_sample()
