FROM java:8
ENV FLINK_APP_NAME flink-1.4.0
# ADD flink-1.4.0-bin-hadoop24-scala_2.11.tgz /usr/share/
ADD flink-1.4.0/ /usr/share/$FLINK_APP_NAME/
ENV PATH /usr/share/flink-1.4.0/bin:$PATH
EXPOSE 8081
CMD ["start-local.sh"]