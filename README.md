# Python Selenium

## Instructions

Start your Dockerfile with:

`FROM rodolfocugler/python-selenium:tag`

Copy your code to this Docker image and run using the command python3

```
COPY requirements.txt ./

RUN python3 -m pip install --no-cache-dir -r requirements.txt

COPY . .

CMD python3 app.py
```