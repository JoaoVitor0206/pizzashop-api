ALTER TABLE "restaurants" DROP CONSTRAINT "restaurants_manage_id_users_id_fk";
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "restaurants" ADD CONSTRAINT "restaurants_manage_id_users_id_fk" FOREIGN KEY ("manage_id") REFERENCES "public"."users"("id") ON DELETE set null ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
