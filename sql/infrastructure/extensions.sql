begin;
set local search_path to public;

create extension if not exists btree_gist;
create extension if not exists pgcrypto;
create extension if not exists hstore;
create extension if not exists tablefunc;
create extension if not exists fuzzystrmatch;

commit;
