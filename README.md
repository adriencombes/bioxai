# Hackathon AI x Bio (feel free to propose a name)

### To do setup (for pyenv / virtualenv / direnv)

- Create `.env` file, that has **DATASET_DIR** and **HUGGINGFACE_TOKEN** (you can use `.envsample`)
- `direnv allow`
- `sudo apt install libvips libvips-dev openslide-tools` *(for hest library)*
- `make setup_virtualenv`

### Downloading data

You can then download data using `python download_data.py` (edit this file to switch method if you wanna download complete dataset)

### Opening data

- In a notebook, open one sample with :

```python
from hest import iter_hest
import os

dataset_path = os.path.join(os.environ.get("DATASET_DIR"), 'hest')

for st in iter_hest(dataset_path, id_list=['TENX96'], load_transcripts=True):
    sample = st
```
