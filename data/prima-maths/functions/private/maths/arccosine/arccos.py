from math import sqrt

# the mod


def acos(x):
	# from https://developer.download.nvidia.com/cg/acos.html
	if (x<0):
		negate = 1
	else:
		negate = 0
	x = abs(x)
	ret = -0.0187293
	ret = ret * x
	ret = ret + 0.0742610
	ret = ret * x
	ret = ret - 0.2121144
	ret = ret * x
	ret = ret + 1.5707288
	ret = ret * sqrt(1.0-x)
	ret = ret - 2 * negate * ret
	return negate * 3.14159265358979 + ret

def acosint(n):
	# input fake floats with 1 <=> 10^3
	# convert to 10^4
	n *= 10
	negate = int(n<0)	
	n = abs(n)
	ret = -187
	ret = ret * n
	ret /= 10000
	ret += 742
	ret = ret * n
	ret /= 10000
	ret -= 2121
	ret = ret * n
	ret /= 10000
	ret += 15707
	ret = (ret) * (sqrt(10000-n))/100
	ret -= 2 * ret * negate
	return int((negate * 31415) + ret)

def acosint2(n):
	# input fake floats with 1 <=> 10^4

	negate = int(n<0)
	n = abs(n)
	ret = -187
	ret = int(ret * n)
	ret = int(ret/10000)
	ret += 742
	ret = int(ret * n)
	ret = int(ret/10000)
	ret -= 2121
	ret = int(ret * n)
	ret = int(ret/10000)
	ret += 15707
	s = int(sqrt(10000-n))
	print(s)
	ret = (ret) * (s)/100
	ret -= int(2 * ret * negate)
	return int((negate * 31415) + ret)

print(acosint(-842), acosint2(-8420), acos(0.8421052632))