
## happy path
* greet
    - utter_greet
* inform{"recipe" : "chicken"}
    - action_recipe
    - slot{"requested_slot" : "recipe"}
    - slot{"recipe" : "chicken"}
    - slot{"recipe" : "pie"}
    - slot{"recipe" : "omelette"}
    - slot{"recipe" : "salad"}
    - slot{"recipe" : "lasagna"}
    - slot{"recipe" : "potatoes"}

* inform{"recipe" : "pie"}
    - action_recipe
    - slot{"requested_slot" : "recipe"}
    - slot{"recipe" : "chicken"}
    - slot{"recipe" : "pie"}
    - slot{"recipe" : "omelette"}
    - slot{"recipe" : "salad"}
    - slot{"recipe" : "lasagna"}
    - slot{"recipe" : "potatoes"}

* inform{"recipe" : "omelette"}
    - action_recipe
    - slot{"requested_slot" : "recipe"}
    - slot{"recipe" : "chicken"}
    - slot{"recipe" : "pie"}
    - slot{"recipe" : "omelette"}
    - slot{"recipe" : "salad"}
    - slot{"recipe" : "lasagna"}
    - slot{"recipe" : "potatoes"}

* inform{"recipe" : "salad"}
    - action_recipe
    - slot{"requested_slot" : "recipe"}
    - slot{"recipe" : "chicken"}
    - slot{"recipe" : "pie"}
    - slot{"recipe" : "omelette"}
    - slot{"recipe" : "salad"}
    - slot{"recipe" : "lasagna"}
    - slot{"recipe" : "potatoes"}

* inform{"recipe" : "lasagna"}
    - action_recipe
    - slot{"requested_slot" : "recipe"}
    - slot{"recipe" : "chicken"}
    - slot{"recipe" : "pie"}
    - slot{"recipe" : "omelette"}
    - slot{"recipe" : "salad"}
    - slot{"recipe" : "lasagna"}
    - slot{"recipe" : "potatoes"}

* inform{"recipe" : "potatoes"}
    - action_recipe
    - slot{"requested_slot" : "recipe"}
    - slot{"recipe" : "chicken"}
    - slot{"recipe" : "pie"}
    - slot{"recipe" : "omelette"}
    - slot{"recipe" : "salad"}
    - slot{"recipe" : "lasagna"}
    - slot{"recipe" : "potatoes"}






