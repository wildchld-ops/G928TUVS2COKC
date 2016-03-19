.class public final Lcom/nuance/nmdp/speechkit/ec;
.super Lcom/nuance/nmdp/speechkit/dy;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/ck$j;


# instance fields
.field private a:Lcom/nuance/nmdp/speechkit/dt;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/dt;B)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/dy;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const/4 v0, 0x6

    invoke-super {p0, v0}, Lcom/nuance/nmdp/speechkit/dy;->a(B)V

    :goto_0
    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/ec;->a:Lcom/nuance/nmdp/speechkit/dt;

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    const/4 v0, 0x7

    invoke-super {p0, v0}, Lcom/nuance/nmdp/speechkit/dy;->a(B)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    invoke-super {p0, v0}, Lcom/nuance/nmdp/speechkit/dy;->a(B)V

    goto :goto_0
.end method


# virtual methods
.method protected final a()[B
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ec;->a:Lcom/nuance/nmdp/speechkit/dt;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/dt;->b()[B

    move-result-object v0

    return-object v0
.end method
