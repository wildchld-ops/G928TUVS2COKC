.class Lcom/sec/android/app/launcher/activities/LauncherActivity$14;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/LauncherActivity;->setEnableHotWord(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

.field final synthetic val$setEnabled:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$14;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iput-boolean p2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$14;->val$setEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$14;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$2500(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/google/android/hotword/client/HotwordServiceClient;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$14;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$2500(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/google/android/hotword/client/HotwordServiceClient;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$14;->val$setEnabled:Z

    invoke-virtual {v0, v1}, Lcom/google/android/hotword/client/HotwordServiceClient;->requestHotwordDetection(Z)V

    const-string v0, "LauncherActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnableHotWord : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$14;->val$setEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "LauncherActivity"

    const-string v1, "setEnableHotWord mHotwordServiceClient is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
