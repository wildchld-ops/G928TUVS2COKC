.class public final Lcom/nuance/nmdp/speechkit/ee;
.super Lcom/nuance/nmdp/speechkit/dy;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/ck$j;


# instance fields
.field private a:Lcom/nuance/nmdp/speechkit/dt;

.field private b:Lcom/nuance/nmdp/speechkit/cx;

.field private c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/dk;Lcom/nuance/nmdp/speechkit/dt;Lcom/nuance/nmdp/speechkit/cx;)V
    .locals 2

    const/16 v0, 0x7f

    invoke-direct {p0, p1, v0}, Lcom/nuance/nmdp/speechkit/dy;-><init>(Ljava/lang/String;B)V

    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/ee;->a:Lcom/nuance/nmdp/speechkit/dt;

    iput-object p4, p0, Lcom/nuance/nmdp/speechkit/ee;->b:Lcom/nuance/nmdp/speechkit/cx;

    invoke-virtual {p2}, Lcom/nuance/nmdp/speechkit/dk;->a()I

    move-result v0

    iput v0, p0, Lcom/nuance/nmdp/speechkit/ee;->c:I

    const-string v0, "audio_id"

    iget v1, p0, Lcom/nuance/nmdp/speechkit/ee;->c:I

    invoke-virtual {p3, v0, v1}, Lcom/nuance/nmdp/speechkit/dt;->b(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    iget v0, p0, Lcom/nuance/nmdp/speechkit/ee;->c:I

    return v0
.end method

.method protected final d()[B
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ee;->a:Lcom/nuance/nmdp/speechkit/dt;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/dt;->b()[B

    move-result-object v0

    return-object v0
.end method

.method protected final e()Lcom/nuance/nmdp/speechkit/cx;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ee;->b:Lcom/nuance/nmdp/speechkit/cx;

    return-object v0
.end method
