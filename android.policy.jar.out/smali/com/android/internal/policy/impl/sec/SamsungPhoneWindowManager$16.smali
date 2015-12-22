.class Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$16;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->insertLog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$16;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "app_id"

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$16;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "feature"

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$16;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFeatureForLogging:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->access$1100(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$16;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mExtraForLogging:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->access$1200(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, "extra"

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$16;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mExtraForLogging:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->access$1200(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "data"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "com.samsung.android.providers.context"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$16;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$16;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    # setter for: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFeatureForLogging:Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->access$1102(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$16;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    # setter for: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mExtraForLogging:Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->access$1202(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    return-void

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "SamsungWindowManager"

    const-string v4, "insetLog Exception"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$16;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    # setter for: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFeatureForLogging:Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->access$1102(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$16;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    # setter for: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mExtraForLogging:Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->access$1202(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$16;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    # setter for: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFeatureForLogging:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->access$1102(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$16;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    # setter for: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mExtraForLogging:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->access$1202(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Ljava/lang/String;)Ljava/lang/String;

    throw v3
.end method
