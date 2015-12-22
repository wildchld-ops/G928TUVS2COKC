.class Landroid/media/MediaFocusControl$1;
.super Landroid/telephony/PhoneStateListener;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaFocusControl;


# direct methods
.method constructor <init>(Landroid/media/MediaFocusControl;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaFocusControl$1;->this$0:Landroid/media/MediaFocusControl;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    # getter for: Landroid/media/MediaFocusControl;->mRingingLock:Ljava/lang/Object;
    invoke-static {}, Landroid/media/MediaFocusControl;->access$1900()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaFocusControl$1;->this$0:Landroid/media/MediaFocusControl;

    const/4 v3, 0x1

    # setter for: Landroid/media/MediaFocusControl;->mIsRinging:Z
    invoke-static {v1, v3}, Landroid/media/MediaFocusControl;->access$2002(Landroid/media/MediaFocusControl;Z)Z

    monitor-exit v2

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    if-eq p1, v4, :cond_2

    if-nez p1, :cond_0

    :cond_2
    # getter for: Landroid/media/MediaFocusControl;->mRingingLock:Ljava/lang/Object;
    invoke-static {}, Landroid/media/MediaFocusControl;->access$1900()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Landroid/media/MediaFocusControl$1;->this$0:Landroid/media/MediaFocusControl;

    const/4 v3, 0x0

    # setter for: Landroid/media/MediaFocusControl;->mIsRinging:Z
    invoke-static {v1, v3}, Landroid/media/MediaFocusControl;->access$2002(Landroid/media/MediaFocusControl;Z)Z

    if-ne p1, v4, :cond_3

    const/4 v1, 0x3

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/media/MediaFocusControl$1;->this$0:Landroid/media/MediaFocusControl;

    # getter for: Landroid/media/MediaFocusControl;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Landroid/media/MediaFocusControl;->access$100(Landroid/media/MediaFocusControl;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "sidesync_source_connect"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.intent.action.SPLIT_SOUND_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "enabled"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Landroid/media/MediaFocusControl$1;->this$0:Landroid/media/MediaFocusControl;

    # getter for: Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MediaFocusControl;->access$2100(Landroid/media/MediaFocusControl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Landroid/media/MediaFocusControl$1;->this$0:Landroid/media/MediaFocusControl;

    const/4 v3, 0x1

    # setter for: Landroid/media/MediaFocusControl;->mSplitSoundService:Z
    invoke-static {v1, v3}, Landroid/media/MediaFocusControl;->access$2202(Landroid/media/MediaFocusControl;Z)Z

    :cond_3
    if-nez p1, :cond_4

    iget-object v1, p0, Landroid/media/MediaFocusControl$1;->this$0:Landroid/media/MediaFocusControl;

    # getter for: Landroid/media/MediaFocusControl;->mSplitSoundService:Z
    invoke-static {v1}, Landroid/media/MediaFocusControl;->access$2200(Landroid/media/MediaFocusControl;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.intent.action.SPLIT_SOUND_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "enabled"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Landroid/media/MediaFocusControl$1;->this$0:Landroid/media/MediaFocusControl;

    # getter for: Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MediaFocusControl;->access$2100(Landroid/media/MediaFocusControl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Landroid/media/MediaFocusControl$1;->this$0:Landroid/media/MediaFocusControl;

    const/4 v3, 0x0

    # setter for: Landroid/media/MediaFocusControl;->mSplitSoundService:Z
    invoke-static {v1, v3}, Landroid/media/MediaFocusControl;->access$2202(Landroid/media/MediaFocusControl;Z)Z

    :cond_4
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    iget-object v1, p0, Landroid/media/MediaFocusControl$1;->this$0:Landroid/media/MediaFocusControl;

    # getter for: Landroid/media/MediaFocusControl;->mRilState:I
    invoke-static {v1}, Landroid/media/MediaFocusControl;->access$2300(Landroid/media/MediaFocusControl;)I

    move-result v1

    if-eq v0, v1, :cond_1

    const-string v1, "MediaFocusControl"

    const-string v2, "##################################################"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "### RIL State is changed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaFocusControl$1;->this$0:Landroid/media/MediaFocusControl;

    # getter for: Landroid/media/MediaFocusControl;->mRilState:I
    invoke-static {v3}, Landroid/media/MediaFocusControl;->access$2300(Landroid/media/MediaFocusControl;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MediaFocusControl"

    const-string v2, "##################################################"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string/jumbo v1, "ril_state_connected=1"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroid/media/MediaFocusControl$1;->this$0:Landroid/media/MediaFocusControl;

    # setter for: Landroid/media/MediaFocusControl;->mRilState:I
    invoke-static {v1, v0}, Landroid/media/MediaFocusControl;->access$2302(Landroid/media/MediaFocusControl;I)I

    :cond_1
    return-void
.end method
