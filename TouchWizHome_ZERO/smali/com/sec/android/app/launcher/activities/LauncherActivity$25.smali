.class Lcom/sec/android/app/launcher/activities/LauncherActivity$25;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/LauncherActivity;->changeHomeScreenMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

.field final synthetic val$isCurrentDBHomeOnlyMode:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$25;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iput-boolean p2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$25;->val$isCurrentDBHomeOnlyMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/launcher/data/IconBitmapCache;->getInstance()Lcom/sec/android/app/launcher/data/IconBitmapCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/IconBitmapCache;->clear()V

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$25;->val$isCurrentDBHomeOnlyMode:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lcom/sec/android/app/launcher/data/IconBitmapCache;->USE_CACHE:Z

    invoke-static {}, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->instance()Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->instance()Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->finish()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$25;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->recreate()V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
