.class final Lcom/nuance/nmdp/speechkit/ak$2$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/ak$2;->a(Lcom/nuance/nmdp/speechkit/en;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/nuance/nmdp/speechkit/ak$2;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/ak$2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/ak$2$4;->c:Lcom/nuance/nmdp/speechkit/ak$2;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/ak$2$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/ak$2$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ak$2$4;->c:Lcom/nuance/nmdp/speechkit/ak$2;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/ak$2;->a:Lcom/nuance/nmdp/speechkit/ak;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/ak;->a:Lcom/nuance/nmdp/speechkit/aj;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/ak$2$4;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/ak$2$4;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/aj;->b(Ljava/lang/String;)V

    return-void
.end method
