.class public final Lcom/nuance/nmdp/speechkit/af;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/cb;


# instance fields
.field private a:Z

.field private final b:I

.field private c:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/af;->a:Z

    iput p1, p0, Lcom/nuance/nmdp/speechkit/af;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/af;->c:Landroid/os/Vibrator;

    return-void
.end method

.method static synthetic a(Lcom/nuance/nmdp/speechkit/af;)Landroid/os/Vibrator;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/af;->c:Landroid/os/Vibrator;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/af;->c:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/af;->c:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/af;->c:Landroid/os/Vibrator;

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/ca;Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Landroid/content/Context;

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/af;->c:Landroid/os/Vibrator;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/af;->c:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    const-string v0, "Unable to get vibrator service"

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/ab;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p3}, Lcom/nuance/nmdp/speechkit/ca;->a(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/af;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "Can\'t start disposed vibration prompt."

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/ab;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p3}, Lcom/nuance/nmdp/speechkit/ca;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting vibration ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nuance/nmdp/speechkit/af;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/af;->c:Landroid/os/Vibrator;

    iget v1, p0, Lcom/nuance/nmdp/speechkit/af;->b:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/nuance/nmdp/speechkit/af$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/nuance/nmdp/speechkit/af$1;-><init>(Lcom/nuance/nmdp/speechkit/af;Lcom/nuance/nmdp/speechkit/ca;Ljava/lang/Object;)V

    iget v1, p0, Lcom/nuance/nmdp/speechkit/af;->b:I

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/by;->a(Ljava/lang/Runnable;I)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Unable to vibrate"

    invoke-static {p0, v1, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p2, p3}, Lcom/nuance/nmdp/speechkit/ca;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/af;->a:Z

    return v0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/af;->a:Z

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/af;->c:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/af;->c:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/af;->c:Landroid/os/Vibrator;

    :cond_0
    return-void
.end method
