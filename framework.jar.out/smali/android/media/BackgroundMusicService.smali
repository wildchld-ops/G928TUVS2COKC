.class public Landroid/media/BackgroundMusicService;
.super Ljava/lang/Object;
.source "BackgroundMusicService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/BackgroundMusicService$FadeOutThread;,
        Landroid/media/BackgroundMusicService$FadeInThread;
    }
.end annotation


# static fields
.field private static BACKGROUND_MUSIC_PATH:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "BackgroundMusicService"


# instance fields
.field private mAudioService:Landroid/media/AudioService;

.field private mContext:Landroid/content/Context;

.field private mMediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "/system/media/audio/ui/"

    sput-object v0, Landroid/media/BackgroundMusicService;->BACKGROUND_MUSIC_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioService;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/BackgroundMusicService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Landroid/media/BackgroundMusicService;->mAudioService:Landroid/media/AudioService;

    iput-object v0, p0, Landroid/media/BackgroundMusicService;->mMediaPlayer:Landroid/media/MediaPlayer;

    iput-object p1, p0, Landroid/media/BackgroundMusicService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/media/BackgroundMusicService;->mAudioService:Landroid/media/AudioService;

    return-void
.end method

.method static synthetic access$000(Landroid/media/BackgroundMusicService;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Landroid/media/BackgroundMusicService;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$002(Landroid/media/BackgroundMusicService;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    iput-object p1, p0, Landroid/media/BackgroundMusicService;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method


# virtual methods
.method public play(II)V
    .locals 6

    const/4 v5, 0x3

    iget-object v1, p0, Landroid/media/BackgroundMusicService;->mAudioService:Landroid/media/AudioService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/BackgroundMusicService;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/BackgroundMusicService;->mAudioService:Landroid/media/AudioService;

    invoke-static {v5}, Landroid/media/AudioService;->getDefaultStreamVolume(I)I

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/media/BackgroundMusicService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/media/AudioService;->setStreamVolume(IIILjava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/BackgroundMusicService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Landroid/media/BackgroundMusicService;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/BackgroundMusicService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/BackgroundMusicService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    iget-object v1, p0, Landroid/media/BackgroundMusicService;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object v1, p0, Landroid/media/BackgroundMusicService;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    packed-switch p1, :pswitch_data_0

    iget-object v1, p0, Landroid/media/BackgroundMusicService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/BackgroundMusicService;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Landroid/media/BackgroundMusicService;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/media/BackgroundMusicService;->BACKGROUND_MUSIC_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "backgroundmusic-wizard.mp3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    new-instance v1, Landroid/media/BackgroundMusicService$FadeInThread;

    invoke-direct {v1, p0, p2}, Landroid/media/BackgroundMusicService$FadeInThread;-><init>(Landroid/media/BackgroundMusicService;I)V

    invoke-virtual {v1}, Landroid/media/BackgroundMusicService$FadeInThread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Landroid/media/BackgroundMusicService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/BackgroundMusicService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/media/BackgroundMusicService$FadeOutThread;

    invoke-direct {v0, p0}, Landroid/media/BackgroundMusicService$FadeOutThread;-><init>(Landroid/media/BackgroundMusicService;)V

    invoke-virtual {v0}, Landroid/media/BackgroundMusicService$FadeOutThread;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/media/BackgroundMusicService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/BackgroundMusicService;->mMediaPlayer:Landroid/media/MediaPlayer;

    goto :goto_0
.end method
