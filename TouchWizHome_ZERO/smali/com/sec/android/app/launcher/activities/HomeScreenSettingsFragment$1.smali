.class Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment$1;
.super Ljava/lang/Object;
.source "HomeScreenSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment;->setHomeScreenGrid(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment$1;->this$0:Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->instance()Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->instance()Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_enter_screen_grid"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->instance()Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->instance()Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->finish()V

    :cond_0
    const/4 v1, 0x0

    return v1
.end method
