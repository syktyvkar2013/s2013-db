from django.db import models

# Create your models here.
class Engine_type(models.Model):
    name = models.CharField(max_length=150)

class Transmission_type(models.Model):
    name = models.CharField(max_length=150)

class Wd_type(models.Model):
    name = models.CharField(max_length=150)
    
class Hand_type(models.Model):
    name = models.CharField(max_length=150)

class Body_type(models.Model):
    name = models.CharField(max_length=150)

class State_type(models.Model):
    name = models.CharField(max_length=150)

class Custom_type(models.Model):
    name = models.CharField(max_length=150)

class Changable_type(models.Model):
    name = models.CharField(max_length=150)

class City(models.Model):
    name = models.CharField(max_length=150)

    
class Ad(models.Model):
    model = models.CharField(max_length=50)
    modification = models.CharField(max_length=50)
    year = models.DateField()
    transmission = models.ForeignKey(Transmission_type)
    mileage = models.IntegerField(default=0)
    engine_capacity = models.IntegerField(default = 0)
    engine_power = models.IntegerField(default = 0)
    engine_type = models.ForeignKey(Engine_type)
    wd = models.ForeignKey(Wd_type)
    hand = models.ForeignKey(Hand_type)
    body = models.ForeignKey(Body_type)
    state = models.ForeignKey(State_type)
    custom = models.ForeignKey(Custom_type)
    changable = models.ForeignKey(Changable_type)
    ownersnum = models.IntegerField(default=1)
    city = models.ForeignKey(City)
    location = models.CharField(max_length=500)
    person = models.CharField(max_length=500)
    phone = models.IntegerField(default=0)
    call_time = models.CharField(max_length=500)
    
    pub_date = models.DateField()
    views = models.IntegerField(default=1)
    "freetext"
    description = models.TextField()
    
    options_freetext = models.TextField()
    
    agent = models.BooleanField(default=True)
    real_state = models.IntegerField(default=0)
    urgency = models.BooleanField(default=False)
    fake_honeyspot = models.BooleanField(default=False)
    fake = models.BooleanField(default=False)
    repeat = models.BooleanField(default=False)
    discount = models.BooleanField(default=False)
    
    