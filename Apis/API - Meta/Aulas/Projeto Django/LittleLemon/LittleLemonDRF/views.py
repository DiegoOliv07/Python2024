from rest_framework.views import APIView
from rest_framework.response import Response

class RatingsView(APIView):
    def get(self, request):
        # Lógica para obter ratings
        return Response({"message": "List of ratings"})
