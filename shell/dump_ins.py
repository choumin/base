import sys
import json

def dump_ins(ins):
	ins_file = '/home/zhoumin/shell/.ins'
	fp = open(ins_file)
	ins_json = json.loads(fp.read())
	if ins not in ins_json:
		print("sorry, " + ins + " not in ins set")
		return
	print(json.dumps(ins_json[ins]))
	
def main():
	if len(sys.argv) < 2:
		return
	ins = sys.argv[1]
	dump_ins(ins)
	
if __name__ == "__main__":
	main()
