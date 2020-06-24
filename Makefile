NUM:=5

all:install build

install:
	pip3 install cupy-cuda102 cython --user --trusted-host https://mirrors.huaweicloud.com -i https://mirrors.huaweicloud.com/repository/pypi/simple --timeout 60
	pip3 install -r requirements.txt --user --trusted-host https://mirrors.sustc.us -i https://mirrors.sustc.us/pypi/simple --timeout 60

uninstall:
	pip3 uninstall -r requirements.txt -y

build:
	cd model/utils/nms/; python build.py build_ext --inplace
	cd data; python3 generate_task_json.py
	cd weights; sh ./download_weights.sh

clean:
	@rm -rf *.log *.pkl

run:
	./run_server.sh street_5 yolo 11112
	sleep 2
	./run_client.sh street_5 $(NUM) yolo 11112

stop:
	./stop.sh street_5 yolo

watch:
	watch -n 1 nvidia-smi