.class Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer$1;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Lcom/samsung/android/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;-><init>(Lcom/android/server/notification/NotificationManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

.field final synthetic val$this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer$1;->this$1:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer$1;->val$this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Lcom/samsung/android/motion/MREvent;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/motion/MREvent;->getMotion()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer$1;->this$1:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer$1;->this$1:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer$1;->this$1:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer$1;->this$1:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->unregister()V

    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer$1;->this$1:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mIsPlaying:Z
    invoke-static {v1, v3}, Lcom/android/server/notification/NotificationManagerService;->access$302(Lcom/android/server/notification/NotificationManagerService;Z)Z

    const-string v1, "NotificationService"

    const-string v2, "MREvent.FLIP_TOP_TO_BOTTOM"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer$1;->this$1:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer$1;->this$1:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer$1;->this$1:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->unregister()V

    :cond_2
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer$1;->this$1:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mIsPlaying:Z
    invoke-static {v1, v3}, Lcom/android/server/notification/NotificationManagerService;->access$302(Lcom/android/server/notification/NotificationManagerService;Z)Z

    const-string v1, "NotificationService"

    const-string v2, "MREvent.FLIP_TOP_TO_BOTTOM"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer$1;->this$1:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer$1;->this$1:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer$1;->this$1:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->unregister()V

    :cond_3
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer$1;->this$1:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mIsPlaying:Z
    invoke-static {v2, v3}, Lcom/android/server/notification/NotificationManagerService;->access$302(Lcom/android/server/notification/NotificationManagerService;Z)Z

    const-string v2, "NotificationService"

    const-string v3, "MREvent.FLIP_TOP_TO_BOTTOM"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    throw v1

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
