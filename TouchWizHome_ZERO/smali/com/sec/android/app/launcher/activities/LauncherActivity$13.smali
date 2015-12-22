.class Lcom/sec/android/app/launcher/activities/LauncherActivity$13;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/LauncherActivity;->relayoutAllViews(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$13;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$13;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$2300(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->surfaceChanged()V

    return-void
.end method
