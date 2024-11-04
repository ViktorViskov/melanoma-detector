from random import random

from fastapi import FastAPI
from fastapi import HTTPException
from fastapi import Form

from models import dto


app = FastAPI()

@app.post("/check", response_model=dto.MelanomaStatus)
def check_for_melanoma(base64_file: str = Form()):
    # logick for get image
    if base64_file == 'error':
        raise HTTPException(422, "Image is corrupt")
    
    # working with tf
    # here
    
    return dto.MelanomaStatus.get_from_float(random())