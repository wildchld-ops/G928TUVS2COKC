.class Landroid/media/BackgroundMusicService$FadeOutThread;
.super Ljava/lang/Thread;
.source "BackgroundMusicService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/BackgroundMusicService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FadeOutThread"
.end annotation


# instance fields
.field private mDuration:I

.field final synthetic this$0:Landroid/media/BackgroundMusicService;


# direct methods
.method public constructor <init>(Landroid/media/BackgroundMusicService;)V
    .locals 1

    iput-object p1, p0, Landroid/media/BackgroundMusicService$FadeOutThread;->this$0:Landroid/media/BackgroundMusicService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, 0xbb8

    iput v0, p0, Landroid/media/BackgroundMusicService$FadeOutThread;->mDuration:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    const/16 v0, 0x64

    const/4 v2, 0x0

    :goto_0
    const/16 v4, 0x64

    if-ge v2, v4, :cond_1

    const/high16 v4, 0x3f800000    # 1.0f

    int-to-float v5, v2

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    sub-float v3, v4, v5

    iget-object v4, p0, Landroid/media/BackgroundMusicService$FadeOutThread;->this$0:Landroid/media/BackgroundMusicService;

    # getter for: Landroid/media/BackgroundMusicService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Landroid/media/BackgroundMusicService;->access$000(Landroid/media/BackgroundMusicService;)Landroid/media/MediaPlayer;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/media/BackgroundMusicService$FadeOutThread;->this$0:Landroid/media/BackgroundMusicService;

    # getter for: Landroid/media/BackgroundMusicService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Landroid/media/BackgroundMusicService;->access$000(Landroid/media/BackgroundMusicService;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4, v3, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    :try_start_0
    iget v4, p0, Landroid/media/BackgroundMusicService$FadeOutThread;->mDuration:I

    div-int/lit8 v4, v4, 0x64

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_1
    iget-object v4, p0, Landroid/media/BackgroundMusicService$FadeOutThread;->this$0:Landroid/media/BackgroundMusicService;

    # getter for: Landroid/media/BackgroundMusicService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Landroid/media/BackgroundMusicService;->access$000(Landroid/media/BackgroundMusicService;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/media/BackgroundMusicService$FadeOutThread;->this$0:Landroid/media/BackgroundMusicService;

    # getter for: Landroid/media/BackgroundMusicService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Landroid/media/BackgroundMusicService;->access$000(Landroid/media/BackgroundMusicService;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->stop()V

    :cond_2
    iget-object v4, p0, Landroid/media/BackgroundMusicService$FadeOutThread;->this$0:Landroid/media/BackgroundMusicService;

    # getter for: Landroid/media/BackgroundMusicService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Landroid/media/BackgroundMusicService;->access$000(Landroid/media/BackgroundMusicService;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    iget-object v4, p0, Landroid/media/BackgroundMusicService$FadeOutThread;->this$0:Landroid/media/BackgroundMusicService;

    const/4 v5, 0x0

    # setter for: Landroid/media/BackgroundMusicService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4, v5}, Landroid/media/BackgroundMusicService;->access$002(Landroid/media/BackgroundMusicService;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    return-void
.end method
