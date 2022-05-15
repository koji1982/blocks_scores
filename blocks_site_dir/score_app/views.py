from django.http import HttpResponse


def index(request):
    return HttpResponse('Blocks_score')