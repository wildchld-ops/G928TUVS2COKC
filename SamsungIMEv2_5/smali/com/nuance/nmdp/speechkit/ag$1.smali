.class final Lcom/nuance/nmdp/speechkit/ag$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/ag;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmdp/speechkit/ai;

.field private synthetic b:Lcom/nuance/nmdp/speechkit/ag;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/ag;Lcom/nuance/nmdp/speechkit/ai;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/ag$1;->b:Lcom/nuance/nmdp/speechkit/ag;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/ag$1;->a:Lcom/nuance/nmdp/speechkit/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ag$1;->a:Lcom/nuance/nmdp/speechkit/ai;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/ag$1;->b:Lcom/nuance/nmdp/speechkit/ag;

    iget-object v1, v1, Lcom/nuance/nmdp/speechkit/ag;->b:Lcom/nuance/nmdp/speechkit/ak;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/ag$1;->b:Lcom/nuance/nmdp/speechkit/ag;

    iget v2, v2, Lcom/nuance/nmdp/speechkit/ag;->a:I

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/ag$1;->b:Lcom/nuance/nmdp/speechkit/ag;

    invoke-static {v3}, Lcom/nuance/nmdp/speechkit/ag;->a(Lcom/nuance/nmdp/speechkit/ag;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/ag$1;->b:Lcom/nuance/nmdp/speechkit/ag;

    invoke-static {v4}, Lcom/nuance/nmdp/speechkit/ag;->b(Lcom/nuance/nmdp/speechkit/ag;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/nmdp/speechkit/ai;->a(Lcom/nuance/nmdp/speechkit/ah;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ag$1;->a:Lcom/nuance/nmdp/speechkit/ai;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/ag$1;->b:Lcom/nuance/nmdp/speechkit/ag;

    iget-object v1, v1, Lcom/nuance/nmdp/speechkit/ag;->b:Lcom/nuance/nmdp/speechkit/ak;

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/ai;->a(Lcom/nuance/nmdp/speechkit/ah;)V

    return-void
.end method
