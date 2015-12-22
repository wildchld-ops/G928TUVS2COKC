.class Lcom/sec/android/app/launcher/activities/LauncherActivity$5;
.super Landroid/database/ContentObserver;
.source "LauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/LauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$5;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$5;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAccessibility:Lcom/sec/android/app/launcher/activities/Accessibility;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$500(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/android/app/launcher/activities/Accessibility;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$5;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAccessibility:Lcom/sec/android/app/launcher/activities/Accessibility;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$500(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/android/app/launcher/activities/Accessibility;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$5;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_large_cursor"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/sec/android/app/launcher/activities/Accessibility;->setLargeCursorEnabled(Z)V

    :cond_1
    return-void
.end method
