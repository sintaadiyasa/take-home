def sorting_ganjil_genap(arr):
    genap = [num for num in arr if num % 2 == 0]
    ganjil = [num for num in arr if num % 2 != 0]

    genap.sort(reverse=True)
    ganjil.sort()

    return ganjil + genap

input = [3, 2, 5, 1, 8, 9, 6]
output = sorting_ganjil_genap(input)
print(output)