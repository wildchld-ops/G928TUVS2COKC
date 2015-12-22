.class Landroid/media/audiofx/SoundAlive$BaseErrorListener;
.super Ljava/lang/Object;
.source "SoundAlive.java"

# interfaces
.implements Landroid/media/audiofx/AudioEffect$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/SoundAlive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseErrorListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/audiofx/SoundAlive;


# direct methods
.method private constructor <init>(Landroid/media/audiofx/SoundAlive;)V
    .locals 0

    iput-object p1, p0, Landroid/media/audiofx/SoundAlive$BaseErrorListener;->this$0:Landroid/media/audiofx/SoundAlive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/audiofx/SoundAlive;Landroid/media/audiofx/SoundAlive$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/audiofx/SoundAlive$BaseErrorListener;-><init>(Landroid/media/audiofx/SoundAlive;)V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/media/audiofx/SoundAlive$BaseErrorListener;->this$0:Landroid/media/audiofx/SoundAlive;

    # getter for: Landroid/media/audiofx/SoundAlive;->mErrorListenerLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/media/audiofx/SoundAlive;->access$300(Landroid/media/audiofx/SoundAlive;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/media/audiofx/SoundAlive$BaseErrorListener;->this$0:Landroid/media/audiofx/SoundAlive;

    # getter for: Landroid/media/audiofx/SoundAlive;->mErrorListener:Landroid/media/audiofx/SoundAlive$OnErrorListener;
    invoke-static {v1}, Landroid/media/audiofx/SoundAlive;->access$400(Landroid/media/audiofx/SoundAlive;)Landroid/media/audiofx/SoundAlive$OnErrorListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/audiofx/SoundAlive$BaseErrorListener;->this$0:Landroid/media/audiofx/SoundAlive;

    # getter for: Landroid/media/audiofx/SoundAlive;->mErrorListener:Landroid/media/audiofx/SoundAlive$OnErrorListener;
    invoke-static {v1}, Landroid/media/audiofx/SoundAlive;->access$400(Landroid/media/audiofx/SoundAlive;)Landroid/media/audiofx/SoundAlive$OnErrorListener;

    move-result-object v0

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/media/audiofx/SoundAlive$OnErrorListener;->onError()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
