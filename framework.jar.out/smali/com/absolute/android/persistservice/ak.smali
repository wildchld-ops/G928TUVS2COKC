.class final Lcom/absolute/android/persistservice/ak;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/absolute/android/persistservice/ai;


# direct methods
.method private constructor <init>(Lcom/absolute/android/persistservice/ai;)V
    .locals 0

    iput-object p1, p0, Lcom/absolute/android/persistservice/ak;->a:Lcom/absolute/android/persistservice/ai;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/absolute/android/persistservice/ai;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ak;-><init>(Lcom/absolute/android/persistservice/ai;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v1, 0x3

    monitor-enter p0

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/absolute/android/persistservice/ak;->a:Lcom/absolute/android/persistservice/ai;

    invoke-static {v0}, Lcom/absolute/android/persistservice/ai;->a(Lcom/absolute/android/persistservice/ai;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/ak;->a:Lcom/absolute/android/persistservice/ai;

    invoke-static {v0}, Lcom/absolute/android/persistservice/ai;->b(Lcom/absolute/android/persistservice/ai;)Lcom/absolute/android/persistence/IABTPing;

    move-result-object v0

    invoke-interface {v0}, Lcom/absolute/android/persistence/IABTPing;->ping()Z

    iget-object v0, p0, Lcom/absolute/android/persistservice/ak;->a:Lcom/absolute/android/persistservice/ai;

    invoke-static {v0}, Lcom/absolute/android/persistservice/ai;->d(Lcom/absolute/android/persistservice/ai;)Lcom/absolute/android/persistservice/o;

    move-result-object v0

    iget-object v1, p0, Lcom/absolute/android/persistservice/ak;->a:Lcom/absolute/android/persistservice/ai;

    invoke-static {v1}, Lcom/absolute/android/persistservice/ai;->c(Lcom/absolute/android/persistservice/ai;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/o;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v0, 0x3

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/absolute/android/persistservice/ak;->removeMessages(I)V

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/absolute/android/persistservice/ak;->a:Lcom/absolute/android/persistservice/ai;

    invoke-static {v1}, Lcom/absolute/android/persistservice/ai;->e(Lcom/absolute/android/persistservice/ai;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/absolute/android/persistservice/ak;->sendEmptyMessageDelayed(IJ)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v0, p0, Lcom/absolute/android/persistservice/ak;->a:Lcom/absolute/android/persistservice/ai;

    invoke-static {v0}, Lcom/absolute/android/persistservice/ai;->d(Lcom/absolute/android/persistservice/ai;)Lcom/absolute/android/persistservice/o;

    move-result-object v0

    iget-object v1, p0, Lcom/absolute/android/persistservice/ak;->a:Lcom/absolute/android/persistservice/ai;

    invoke-static {v1}, Lcom/absolute/android/persistservice/ai;->c(Lcom/absolute/android/persistservice/ai;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistservice/o;->a(Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
