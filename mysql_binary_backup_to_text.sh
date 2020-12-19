DUMP_FILE=/tmp/sql.sql.sql

create_dump_from_backup(){
    LOCAL_PWD=`pwd`
    DIR=/tmp/sql-conversion
    mkdir ${DIR}
    cd ${DIR}

    BACKUP_FILE=`find /tmp/backup -maxdepth 1 -size +15M |sort -nr |head -1`
    BASENAME=`basename -s .tgz "${BACKUP_FILE}"`

    cp "${BACKUP_FILE}" working.tgz
    tar -xzf working.tgz

    /usr/local/libexec/mysqld \
        --basedir=/usr/local \
        --datadir="${DIR}/${BASENAME}" \
        --log-error="${DIR}/sql.log" \
        --pid-file="${DIR}/pid" \
        --socket="${DIR}/socket" \
        --skip-grant-tables \
        --plugin-load=ha_xtradb.so \
        --skip-networking &

    while [ !-e "${DIR}/pid" ]; do
        sleep 1
    done

    mysqldump --add-drop-table -u root --socket="${DIR}/socket" db_name >> ${DUMP_FILE}

    kill -9 `cat "${DIR}/pid"`
    cd /tmp
    rm -rf ${DIR}
    cd ${LOCAL_PWD}
}
