.class Landroid/media/AudioService$FineVolumeState;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FineVolumeState"
.end annotation


# instance fields
.field private final mIndex:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexMax:I

.field private mVolumeIndexSettingName:Ljava/lang/String;

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;)V
    .locals 7

    iput-object p1, p0, Landroid/media/AudioService$FineVolumeState;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v4, 0x8

    const/high16 v5, 0x3f400000    # 0.75f

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v3, p0, Landroid/media/AudioService$FineVolumeState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    const v2, 0x5fffffff

    const/16 v3, 0x9

    iput v3, p0, Landroid/media/AudioService$FineVolumeState;->mIndexMax:I

    const/4 v1, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const/4 v3, 0x1

    shl-int v0, v3, v1

    and-int v3, v0, v2

    if-nez v3, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    xor-int/lit8 v3, v0, -0x1

    and-int/2addr v2, v3

    iget-object v3, p0, Landroid/media/AudioService$FineVolumeState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/AudioService$FineVolumeState;-><init>(Landroid/media/AudioService;)V

    return-void
.end method

.method private getValidIndex(I)I
    .locals 1

    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    return p1

    :cond_1
    iget v0, p0, Landroid/media/AudioService$FineVolumeState;->mIndexMax:I

    if-le p1, v0, :cond_0

    iget p1, p0, Landroid/media/AudioService$FineVolumeState;->mIndexMax:I

    goto :goto_0
.end method


# virtual methods
.method public applyFineVolume(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audioParam;fine_volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/media/AudioService$FineVolumeState;->getIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void
.end method

.method public getIndex(I)I
    .locals 4

    const-class v2, Landroid/media/AudioService$VolumeStreamState;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService$FineVolumeState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/media/AudioService$FineVolumeState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v2

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMaxIndex()I
    .locals 1

    iget v0, p0, Landroid/media/AudioService$FineVolumeState;->mIndexMax:I

    return v0
.end method

.method public setIndex(II)Z
    .locals 5

    const-class v2, Landroid/media/AudioService$FineVolumeState;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, p2}, Landroid/media/AudioService$FineVolumeState;->getIndex(I)I

    move-result v0

    invoke-direct {p0, p1}, Landroid/media/AudioService$FineVolumeState;->getValidIndex(I)I

    move-result p1

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Landroid/media/AudioService$FineVolumeState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v1

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
