ALTER TABLE "restaurants" ADD COLUMN "manage_id" text;--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "restaurants" ADD CONSTRAINT "restaurants_manage_id_users_id_fk" FOREIGN KEY ("manage_id") REFERENCES "public"."users"("id") ON DELETE no action ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
