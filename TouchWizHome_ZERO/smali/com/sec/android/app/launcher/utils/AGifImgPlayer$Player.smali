.class Lcom/sec/android/app/launcher/utils/AGifImgPlayer$Player;
.super Ljava/lang/Object;
.source "AGifImgPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/utils/AGifImgPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Player"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/utils/AGifImgPlayer;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/launcher/utils/AGifImgPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer$Player;->this$0:Lcom/sec/android/app/launcher/utils/AGifImgPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/launcher/utils/AGifImgPlayer;Lcom/sec/android/app/launcher/utils/AGifImgPlayer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/utils/AGifImgPlayer$Player;-><init>(Lcom/sec/android/app/launcher/utils/AGifImgPlayer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer$Player;->this$0:Lcom/sec/android/app/launcher/utils/AGifImgPlayer;

    # getter for: Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mIsCancelled:Z
    invoke-static {v1}, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->access$000(Lcom/sec/android/app/launcher/utils/AGifImgPlayer;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer$Player;->this$0:Lcom/sec/android/app/launcher/utils/AGifImgPlayer;

    # getter for: Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mPaused:Z
    invoke-static {v1}, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->access$100(Lcom/sec/android/app/launcher/utils/AGifImgPlayer;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer$Player;->this$0:Lcom/sec/android/app/launcher/utils/AGifImgPlayer;

    # getter for: Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mIsCancelled:Z
    invoke-static {v1}, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->access$000(Lcom/sec/android/app/launcher/utils/AGifImgPlayer;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer$Player;->this$0:Lcom/sec/android/app/launcher/utils/AGifImgPlayer;

    # getter for: Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mCurrentMediaView:Lcom/sec/android/app/launcher/views/AGifImageView;
    invoke-static {v1}, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->access$200(Lcom/sec/android/app/launcher/utils/AGifImgPlayer;)Lcom/sec/android/app/launcher/views/AGifImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/AGifImageView;->drawBitmap()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer$Player;->this$0:Lcom/sec/android/app/launcher/utils/AGifImgPlayer;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer$Player;->this$0:Lcom/sec/android/app/launcher/utils/AGifImgPlayer;

    # getter for: Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mFrameDuration:I
    invoke-static {v1}, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->access$300(Lcom/sec/android/app/launcher/utils/AGifImgPlayer;)I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AGifImgPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer$Player;->this$0:Lcom/sec/android/app/launcher/utils/AGifImgPlayer;

    # getter for: Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mPauseLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->access$400(Lcom/sec/android/app/launcher/utils/AGifImgPlayer;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/utils/AGifImgPlayer$Player;->this$0:Lcom/sec/android/app/launcher/utils/AGifImgPlayer;

    # getter for: Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->mPauseLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/sec/android/app/launcher/utils/AGifImgPlayer;->access$400(Lcom/sec/android/app/launcher/utils/AGifImgPlayer;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_1
    move-exception v0

    :try_start_3
    const-string v1, "AGifImgPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
