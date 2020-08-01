# Username Creator
# [cool, coolbeans, cool, coolerbeans, coolbeans, cool, cool]
# [cool, coolbeans, cool1, coolerbeans, coolbeans1, cool2, cool3]

def username_creator(list):


    usernames = {}
    results = []


    for name in list:
        if(usernames[name]):
            usernames[name] += 1
            new_name = name + str(usernames[name])
            results.push(new_name)
        else:
            usernames[name] = 0
            results.push(name)


    return results


print(username_creator(["cool", "coolbeans", "cool", "coolerbeans", "coolbeans", "cool", "cool"]))
