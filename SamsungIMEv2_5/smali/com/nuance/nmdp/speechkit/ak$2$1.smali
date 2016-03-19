.class final Lcom/nuance/nmdp/speechkit/ak$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/ak$2;->a(S)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:S

.field private synthetic b:Lcom/nuance/nmdp/speechkit/ak$2;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/ak$2;S)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/ak$2$1;->b:Lcom/nuance/nmdp/speechkit/ak$2;

    iput-short p2, p0, Lcom/nuance/nmdp/speechkit/ak$2$1;->a:S

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ak$2$1;->b:Lcom/nuance/nmdp/speechkit/ak$2;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/ak$2;->a:Lcom/nuance/nmdp/speechkit/ak;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/ak;->a:Lcom/nuance/nmdp/speechkit/aj;

    iget-short v1, p0, Lcom/nuance/nmdp/speechkit/ak$2$1;->a:S

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/aj;->f()V

    return-void
.end method
