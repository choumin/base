import sys


G = 1024 * 1024 * 1024
M = 1024 * 1024
K = 1024
BASE10 = 10
BASE16 = 16

def deal_g(base, num):
	try:
		if base == BASE16:
			num_10 = int(num, 16)
		else:
			num_10 = num
	except:
		return "invalid hexadecimal number"
	
	if num_10 == 0:
		return "0G"

	if num_10 < G:
		return "0G " + deal_m(base, num) 

	ret = num_10 / G

	return str(ret) + "G " + deal_m(BASE10, (num_10 - ret * G))

def deal_m(base, num):
	try:
		if base == BASE16:
			num_10 = int(num, 16)
		else:
			num_10 = num
	except:
		return "invalid hexadecimal number"

	if num_10 == 0:
		return "0M"

	if num_10 < M:
		return "0M " + deal_k(base, num)

	ret = num_10 / M

	return str(ret) + "M " + deal_k(BASE10, (num_10 - ret * M))

def deal_k(base, num):
	try:
		if base == BASE16:
			num_10 = int(num, 16)
		else:
			num_10 = num
	except:
		return "invalid hexadecimal number"

	if num_10 == 0:
		return "0K"

	if num_10 < K:
		return str(num_10) + "B"

	ret = num_10 / K

	return str(ret) + "K " + str(num_10 - ret * K) + "B"

def main():
	if len(sys.argv) < 3:
		print("invalid parameters")
		return 

	#print(len(sys.argv))

	if sys.argv[1] == '-g':
		ret = deal_g(BASE16, sys.argv[2])	
	elif sys.argv[1] == '-m':
		ret = deal_m(BASE16, sys.argv[2])	
	elif sys.argv[1] == '-k':
		ret = deal_k(BASE16, sys.argv[2])	
	else:
		print("invalid parameters")
		return
	
	print(ret)
		
	 
if __name__ == "__main__":
	main()
