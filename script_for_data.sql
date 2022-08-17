-- Create table
create table MUSIC_LIST
(
  title  NVARCHAR2(100),
  genre  NVARCHAR2(50),
  artist NVARCHAR2(200),
  album  NVARCHAR2(200),
  year   NUMBER,
  length NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table
comment on table MUSIC_LIST
   is 'Summary table of all songs in the player';
-- Add comments to the columns
comment on column MUSIC_LIST.title
   is 'Name';
comment on column MUSIC_LIST.genre
   is 'Genre';
comment on column MUSIC_LIST.artist
   is 'Artist';
comment on column MUSIC_LIST.album
   is 'Album';
comment on column MUSIC_LIST.year
   is 'Release year';
comment on column MUSIC_LIST.length
   is 'Duration (min)';
   
   
-- the main query
select t.*
from music_list t;
