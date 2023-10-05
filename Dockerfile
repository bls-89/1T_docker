FROM postgres:latest
ENV POSTGRES_PASSWORD=password_bs
ENV POSTGRES_USER=bs_user
ENV POSTGRES_DB=database_bs
COPY bs_init_scripts/init.sql /docker-entrypoint-initdb.d/init.sql
VOLUME /my_data:/var/lib/postgresql/data