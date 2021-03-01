# Python Selenium

## Instructions

Start your Dockerfile with:

`FROM rodolfocugler/python-selenium:tag`

Copy your code to this Docker image and run using the command python

```
COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD python app.py
```
