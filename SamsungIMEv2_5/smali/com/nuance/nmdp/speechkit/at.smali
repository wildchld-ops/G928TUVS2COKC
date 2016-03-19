.class final Lcom/nuance/nmdp/speechkit/at;
.super Lcom/nuance/nmdp/speechkit/aj;


# instance fields
.field private final a:Lcom/nuance/nmdp/speechkit/aq;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/aq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/aj;-><init>(Lcom/nuance/nmdp/speechkit/ak;)V

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/at;->a:Lcom/nuance/nmdp/speechkit/aq;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/at;->a:Lcom/nuance/nmdp/speechkit/aq;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/aq;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " transaction"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/at;->a:Lcom/nuance/nmdp/speechkit/aq;

    new-instance v1, Lcom/nuance/nmdp/speechkit/au;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/at;->a:Lcom/nuance/nmdp/speechkit/aq;

    invoke-direct {v1, v2}, Lcom/nuance/nmdp/speechkit/au;-><init>(Lcom/nuance/nmdp/speechkit/aq;)V

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/aq;->a(Lcom/nuance/nmdp/speechkit/aj;)V

    return-void
.end method
