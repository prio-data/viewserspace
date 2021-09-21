
FROM peder2911/notebook_server:2.0.0
RUN pip install viewser~=4.0.0

COPY requirements.txt /home/views/vzr_requirements.txt
RUN pip install -r /home/views/vzr_requirements.txt

COPY run_viewserspace.sh /home/views/run_viewserspace.sh

CMD /home/views/run_viewserspace.sh
