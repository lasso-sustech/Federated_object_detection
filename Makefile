
all:install build

install:
	pip3 install cupy-cuda102 cython --user -i https://mirrors.huaweicloud.com/repository/pypi/simple
	pip3 install -r requirements.txt --user -i https://mirrors.huaweicloud.com/repository/pypi/simple

build:
	cd model/utils/nms/; python build.py build_ext --inplace
	cd data; python3 generate_task_json.py

clean:
	@rm -rf *.log

run:
	./run_server.sh street_5 yolo 11112
	./run_client.sh street_5 5 yolo 11112

stop:
	./stop.sh