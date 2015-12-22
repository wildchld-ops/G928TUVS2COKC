.class Lcom/android/internal/app/ResolverActivity$3;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$3;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceAdded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 10

    # getter for: Lcom/android/internal/app/ResolverActivity;->DEBUG_DEV:Z
    invoke-static {}, Lcom/android/internal/app/ResolverActivity;->access$500()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ResolverActivity"

    const-string/jumbo v2, "onDeviceAdded"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$3;->this$0:Lcom/android/internal/app/ResolverActivity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move v6, p5

    # invokes: Lcom/android/internal/app/ResolverActivity;->getRecentIconType([BIJI)I
    invoke-static/range {v1 .. v6}, Lcom/android/internal/app/ResolverActivity;->access$800(Lcom/android/internal/app/ResolverActivity;[BIJI)I

    move-result v6

    new-instance v0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$3;->this$0:Lcom/android/internal/app/ResolverActivity;

    move-object v2, p1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;III)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$3;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mDeviceList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$000(Lcom/android/internal/app/ResolverActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$3;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mListupCompleted:Z
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$900(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    const/16 v1, 0x3e8

    iput v1, v9, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$3;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mDeviceList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$000(Lcom/android/internal/app/ResolverActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v9, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$3;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v1, v1, Lcom/android/internal/app/ResolverActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method public onDeviceChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 3

    # getter for: Lcom/android/internal/app/ResolverActivity;->DEBUG_DEV:Z
    invoke-static {}, Lcom/android/internal/app/ResolverActivity;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ResolverActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDeviceChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onDeviceRemoved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    # getter for: Lcom/android/internal/app/ResolverActivity;->DEBUG_DEV:Z
    invoke-static {}, Lcom/android/internal/app/ResolverActivity;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ResolverActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDeviceRemoved"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onDiscoveryFinished()V
    .locals 2

    # getter for: Lcom/android/internal/app/ResolverActivity;->DEBUG_DEV:Z
    invoke-static {}, Lcom/android/internal/app/ResolverActivity;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ResolverActivity"

    const-string/jumbo v1, "onDiscoveryFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onDiscoveryStarted()V
    .locals 2

    # getter for: Lcom/android/internal/app/ResolverActivity;->DEBUG_DEV:Z
    invoke-static {}, Lcom/android/internal/app/ResolverActivity;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ResolverActivity"

    const-string/jumbo v1, "onDiscoveryStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
