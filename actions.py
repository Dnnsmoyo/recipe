# This files contains your custom actions which can be used to run
# custom Python code.
#
# See this guide on how to implement these action:
# https://rasa.com/docs/rasa/core/actions/#custom-actions/


# This is a simple example for a custom action which utters "Hello World!"

# from typing import Any, Text, Dict, List
#
from __future__ import absolute_import
from __future__ import division
from __future__ import unicode_literals




from rasa_sdk import Action

from rasa_sdk.events import SlotSet

import requests

import json

from rasa_sdk.events import AllSlotsReset

class ActionRecipe(Action):
	def name(self):
		return 'action_recipe'
		
	def run(self, dispatcher, tracker, domain):
		
		rec = tracker.get_slot('recipe')
		current = requests.get('https://api.edamam.com/search?q={}&app_id=7dc7e329&app_key=64d0749f26d76176329f5b9103633917'.format(rec)).json()
		try:
			label = current['hits'][0]['recipe']['label']
			ingredients = current['hits'][0]['recipe']['ingredients'][0]['text']
			ingredients2 = current['hits'][0]['recipe']['ingredients'][1]['text']
			ingredients3 = current['hits'][0]['recipe']['ingredients'][2]['text']
			ingredients4 = current['hits'][0]['recipe']['ingredients'][3]['text']
			ingredients5 = current['hits'][0]['recipe']['ingredients'][4]['text']
			ingredients6 = current['hits'][0]['recipe']['ingredients'][5]['text']
			ingredients7 = current['hits'][0]['recipe']['ingredients'][6]['text']
			ingredients8 = current['hits'][0]['recipe']['ingredients'][7]['text']
			ingredients9 = current['hits'][0]['recipe']['ingredients'][8]['text']
			response = """This is a recipe for {}. You will need: {} and {} and {} and {} and {} and {} and {} and {}.""".format(label,ingredients,ingredients2,ingredients3,ingredients4,ingredients5,ingredients6,ingredients7,ingredients8,ingredients9)	
			dispatcher.utter_message(response)
		except IndexError:
			pass
		return []
