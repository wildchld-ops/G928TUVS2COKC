.class public abstract Lcom/nuance/nmdp/speechkit/ag;
.super Lcom/nuance/nmdp/speechkit/aj;


# instance fields
.field protected final a:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Z


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/ak;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/aj;-><init>(Lcom/nuance/nmdp/speechkit/ak;)V

    iput p2, p0, Lcom/nuance/nmdp/speechkit/ag;->a:I

    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/ag;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/nuance/nmdp/speechkit/ag;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/nuance/nmdp/speechkit/ag;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/nuance/nmdp/speechkit/ag;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ag;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/nuance/nmdp/speechkit/ag;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ag;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transaction error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nuance/nmdp/speechkit/ag;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ag;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ag;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transaction error text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/ag;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ag;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ag;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transaction suggestion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/ag;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ag;->b:Lcom/nuance/nmdp/speechkit/ak;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/ak;->e()V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ag;->b:Lcom/nuance/nmdp/speechkit/ak;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/ak;->c()Lcom/nuance/nmdp/speechkit/ai;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nuance/nmdp/speechkit/ag;->e:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/ag;->b:Lcom/nuance/nmdp/speechkit/ak;

    iget v2, p0, Lcom/nuance/nmdp/speechkit/ag;->a:I

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/ag;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/ag;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/nmdp/speechkit/ai;->a(Lcom/nuance/nmdp/speechkit/ah;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/ag;->b:Lcom/nuance/nmdp/speechkit/ak;

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/ai;->a(Lcom/nuance/nmdp/speechkit/ah;)V

    :goto_0
    return-void

    :cond_2
    new-instance v1, Lcom/nuance/nmdp/speechkit/ag$1;

    invoke-direct {v1, p0, v0}, Lcom/nuance/nmdp/speechkit/ag$1;-><init>(Lcom/nuance/nmdp/speechkit/ag;Lcom/nuance/nmdp/speechkit/ai;)V

    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/by;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
