from django.shortcuts import render
from .models import CorrectCode
from core import judgeUtils

container = 69

def getOp(question,ip):
    correctCodeQuery = CorrectCode.objects.get(question__questionId = question)
    codeStatus=  judgeUtils.runCode(correctCodeQuery.question,correctCodeQuery.correct_code,correctCodeQuery.language,False,container,ip)
    # print(codeStatus)
    return {"output":codeStatus.get('output')}

