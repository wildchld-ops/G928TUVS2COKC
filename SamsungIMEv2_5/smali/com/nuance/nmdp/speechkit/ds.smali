.class public final Lcom/nuance/nmdp/speechkit/ds;
.super Lcom/nuance/nmdp/speechkit/dy;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/ck$j;


# instance fields
.field private a:Lcom/nuance/nmdp/speechkit/dt;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/dt;)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/nuance/nmdp/speechkit/dy;-><init>(Ljava/lang/String;B)V

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/ds;->a:Lcom/nuance/nmdp/speechkit/dt;

    return-void
.end method


# virtual methods
.method protected final a()[B
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ds;->a:Lcom/nuance/nmdp/speechkit/dt;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/dt;->b()[B

    move-result-object v0

    return-object v0
.end method
