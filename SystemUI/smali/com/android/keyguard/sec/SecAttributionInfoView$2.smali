.class Lcom/android/keyguard/sec/SecAttributionInfoView$2;
.super Landroid/os/Handler;
.source "SecAttributionInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SecAttributionInfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecAttributionInfoView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView$2;->this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/content/Intent;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView$2;->this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;

    check-cast v1, Landroid/content/Intent;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    # invokes: Lcom/android/keyguard/sec/SecAttributionInfoView;->startActivityForCurrentUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V
    invoke-static {v2, v1, v3, v4, v5}, Lcom/android/keyguard/sec/SecAttributionInfoView;->access$200(Lcom/android/keyguard/sec/SecAttributionInfoView;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "SecAttributionInfoView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find the component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
