rates = {'Economy': 10, 'Premium': 18, 'SUV': 25}

def calculate_fare(km, vehicle, hour):
    base = rates[vehicle] * km

    if 17 <= hour <= 20:
        base *= 1.5

    return base

vehicle = input("Enter vehicle type: ")
km = float(input("Enter distance: "))
hour = int(input("Enter hour (0-23): "))

if vehicle not in rates:
    print("Service Not Available")
else:
    fare = calculate_fare(km, vehicle, hour)
    print("Total Fare:", fare)