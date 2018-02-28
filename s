[1mdiff --git a/db/schema.rb b/db/schema.rb[m
[1mindex 80ea217..02d40df 100644[m
[1m--- a/db/schema.rb[m
[1m+++ b/db/schema.rb[m
[36m@@ -10,12 +10,8 @@[m
 #[m
 # It's strongly recommended that you check this file into your version control system.[m
 [m
[31m-[m
 ActiveRecord::Schema.define(version: 20180228112936) do[m
 [m
[31m-ActiveRecord::Schema.define(version: 20180228112640) do[m
[31m-[m
[31m-[m
   # These are extensions that must be enabled in order to support this database[m
   enable_extension "plpgsql"[m
 [m
[36m@@ -29,9 +25,9 @@[m [mActiveRecord::Schema.define(version: 20180228112640) do[m
     t.datetime "created_at", null: false[m
     t.datetime "updated_at", null: false[m
     t.string "spec"[m
[31m-    t.string "photo"[m
     t.float "latitude"[m
     t.float "longitude"[m
[32m+[m[32m    t.string "photo"[m
     t.index ["user_id"], name: "index_bikes_on_user_id"[m
   end[m
 [m
