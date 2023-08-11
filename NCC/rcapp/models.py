from django.db import models
from core import models as rcModel
    
class CorrectCode(models.Model):
    question = models.OneToOneField(rcModel.Question, on_delete=models.CASCADE)
    correct_code = models.TextField()
    lang_choice = [
        ("python","python"),("cpp","cpp"),("c","c")
    ]
    language = models.CharField( max_length=10 , choices = lang_choice)

    def __str__(self):
        return f"{self.question.questionId}"