FROM python:2.7.16

RUN set -x \
  && git clone https://github.com/hsnr-gamera/gamera.git /code/gamera \
  && cd /code/gamera \
  && python setup.py install --nowx

RUN set -x \
  && git clone https://github.com/DDMAL/document-preprocessing-toolkit.git /code/document-preprocessing-toolkit \
  && cd /code/document-preprocessing-toolkit/ \
  && pip install ./background-estimation ./border-removal ./new_binarization_toolkit ./stable_paths_toolkit ./staffline-removal \
  && pip install ./lyric-extraction \
  && pip install svn+svn://svn.code.sf.net/p/music-staves/code/ \
  && pip install pillow
