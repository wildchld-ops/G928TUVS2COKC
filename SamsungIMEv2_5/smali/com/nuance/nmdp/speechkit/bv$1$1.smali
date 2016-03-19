.class final Lcom/nuance/nmdp/speechkit/bv$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/bv$1;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmdp/speechkit/bv$1;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/bv$1;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/bv$1$1;->a:Lcom/nuance/nmdp/speechkit/bv$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bv$1$1;->a:Lcom/nuance/nmdp/speechkit/bv$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/bv$1;->a:Lcom/nuance/nmdp/speechkit/bv;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/bv;->a(Lcom/nuance/nmdp/speechkit/bv;)Lcom/nuance/nmdp/speechkit/bs;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/bs;->g()V

    return-void
.end method
