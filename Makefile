today:=$(shell date)
first_line="% $(today)\n\n"
mp_filename=`date +"%y_%m_%d".md`
mp_basepath=src/`date +"%y/%m"`
mp_path=$(mp_basepath)/$(mp_filename)
git_msg_date=`date +"%d/%m/%y"`
count_path=src/`date +"%y"`

all: mp open

mp:
	@mkdir -p $(mp_basepath)
	@echo $(first_line) >> $(mp_path)

open:
	@vim +3 $(mp_path)

commit: count
	@git add $(mp_path) $(count_path)/wc.txt
	@git commit -m "update: $(git_msg_date)"

amend: count
	@git add $(mp_path) $(count_path)/wc.txt
	@git commit --amend --no-edit

count:
	@wc $(count_path)/*/* > $(count_path)/wc.txt


view:
	@tail $(count_path)/wc.txt
