# Hackathon AI x Bio (feel free to propose a name)

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
