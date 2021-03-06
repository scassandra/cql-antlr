grammar CqlTypes;

options {
    language = Java;
}

data_type
    : native_type
    | list_type
    | set_type
    | map_type
    ;


native_type
    : 'ascii'
    | 'bigint'
    | 'blob'
    | 'boolean'
    | 'counter'
    | 'decimal'
    | 'double'
    | 'float'
    | 'inet'
    | 'int'
    | 'text'
    | 'timestamp'
    | 'timeuuid'
    | 'uuid'
    | 'varchar'
    | 'varint'
    ;

list_type
    : 'list' '<' native_type '>'
    ;

set_type
    : 'set' '<' native_type '>'
    ;

map_type
    : 'map' '<' native_type ',' native_type '>'
    ;