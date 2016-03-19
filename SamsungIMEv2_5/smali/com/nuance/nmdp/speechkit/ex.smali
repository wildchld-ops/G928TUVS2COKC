.class final Lcom/nuance/nmdp/speechkit/ex;
.super Lcom/nuance/nmdp/speechkit/eq;


# instance fields
.field private c:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/eq;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ex;->a:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/ex;->c:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 1

    sget-boolean v0, Lcom/nuance/nmdp/speechkit/ep;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ex;->c:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    sget-boolean v0, Lcom/nuance/nmdp/speechkit/ep;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ex;->c:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    :cond_0
    return-void
.end method

.method public final f()I
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/ex;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method
