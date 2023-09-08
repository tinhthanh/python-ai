FROM python:3.10-slim

WORKDIR /code

COPY ./requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY ./src ./src

CMD ["uvicorn", "src.main:app" , "--host", "0.0.0.0" ,"--port" , "80" , "--reload" ]
#

#docker build -t vetgo-ai .

#docker run --name vetgo-ai-container -p 3333:80 vetgo-ai

#docker rm vetgo-ai-container

#docker run --name vetgo-ai-container -p 3333:80 -d vetgo-ai

# docker run --name vetgo-ai-container -p 3333:80 -d -v ${pwd}:/code vetgo-ai

# docker-compose up
