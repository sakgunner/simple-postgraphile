create table public.list (
    id serial primary key,

    title text
);

create table public.task (
    id serial primary key,

    title text,
    status text default 'DOING',
    parent_id integer not null references public.list(id),
    order_no integer
);
