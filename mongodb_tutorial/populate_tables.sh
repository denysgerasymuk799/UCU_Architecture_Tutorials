docker run --rm -it --network my-mongo-network \
    --mount type=bind,source="$(pwd)"/cql_files,target=/cql_files \
    mongo \
    cqlsh mongo-node1 -f /cql_files/populate_tables.cql

printf 'Collections are created and populated\n'
