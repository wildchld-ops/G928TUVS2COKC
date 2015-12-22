.class Landroid/media/BackgroundMusicService$FadeInThread;
.super Ljava/lang/Thread;
.source "BackgroundMusicService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/BackgroundMusicService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FadeInThread"
.end annotation


# instance fields
.field private mDuration:I

.field final synthetic this$0:Landroid/media/BackgroundMusicService;


# direct methods
.method public constructor <init>(Landroid/media/BackgroundMusicService;I)V
    .locals 1

    iput-object p1, p0, Landroid/media/BackgroundMusicService$FadeInThread;->this$0:Landroid/media/BackgroundMusicService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/BackgroundMusicService$FadeInThread;->mDuration:I

    iput p2, p0, Landroid/media/BackgroundMusicService$FadeInThread;->mDuration:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :try_start_0
    iget v1, p0, Landroid/media/BackgroundMusicService$FadeInThread;->mDuration:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/media/BackgroundMusicService$FadeInThread;->mDuration:I

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    :cond_0
    iget-object v1, p0, Landroid/media/BackgroundMusicService$FadeInThread;->this$0:Landroid/media/BackgroundMusicService;

    # getter for: Landroid/media/BackgroundMusicService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Landroid/media/BackgroundMusicService;->access$000(Landroid/media/BackgroundMusicService;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/BackgroundMusicService$FadeInThread;->this$0:Landroid/media/BackgroundMusicService;

    # getter for: Landroid/media/BackgroundMusicService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Landroid/media/BackgroundMusicService;->access$000(Landroid/media/BackgroundMusicService;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v1, p0, Landroid/media/BackgroundMusicService$FadeInThread;->this$0:Landroid/media/BackgroundMusicService;

    # getter for: Landroid/media/BackgroundMusicService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Landroid/media/BackgroundMusicService;->access$000(Landroid/media/BackgroundMusicService;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
