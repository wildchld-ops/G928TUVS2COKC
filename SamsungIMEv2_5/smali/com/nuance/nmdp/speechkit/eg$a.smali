.class public final Lcom/nuance/nmdp/speechkit/eg$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/eg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/nuance/nmdp/speechkit/eg;

.field private e:Z


# direct methods
.method protected constructor <init>(ILcom/nuance/nmdp/speechkit/eg;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/nuance/nmdp/speechkit/eg$a;->a:I

    invoke-static {p2}, Lcom/nuance/nmdp/speechkit/eg;->e(Lcom/nuance/nmdp/speechkit/eg;)Lcom/nuance/nmdp/speechkit/dk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/dk;->d()[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/nuance/nmdp/speechkit/eg;->e(Lcom/nuance/nmdp/speechkit/eg;)Lcom/nuance/nmdp/speechkit/dk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/dk;->d()[B

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/dk;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/eg$a;->b:Ljava/lang/String;

    :goto_0
    const-string v0, "INTERNAL_ERROR"

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/eg$a;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/eg$a;->d:Lcom/nuance/nmdp/speechkit/eg;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/eg$a;->e:Z

    return-void

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/eg$a;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lcom/nuance/nmdp/speechkit/eg$a;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg$a;->c:Ljava/lang/String;

    const-string v1, "INTERNAL_ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/eg$a;->c:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg$a;->d:Lcom/nuance/nmdp/speechkit/eg;

    invoke-static {v0, p0}, Lcom/nuance/nmdp/speechkit/eg;->a(Lcom/nuance/nmdp/speechkit/eg;Lcom/nuance/nmdp/speechkit/eg$a;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/eg$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/eg$a;->c:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    iget v0, p0, Lcom/nuance/nmdp/speechkit/eg$a;->a:I

    return v0
.end method

.method protected final a(Lcom/nuance/nmdp/speechkit/ei$a;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg$a;->c:Ljava/lang/String;

    const-string v1, "INTERNAL_ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/ei$a;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/eg$a;->c:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg$a;->d:Lcom/nuance/nmdp/speechkit/eg;

    invoke-static {v0, p0}, Lcom/nuance/nmdp/speechkit/eg;->a(Lcom/nuance/nmdp/speechkit/eg;Lcom/nuance/nmdp/speechkit/eg$a;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/eg$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/ei$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/eg$a;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/eg$a;->b:Ljava/lang/String;

    return-void
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected final d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/eg$a;->e:Z

    return-void
.end method

.method protected final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/eg$a;->e:Z

    return v0
.end method
