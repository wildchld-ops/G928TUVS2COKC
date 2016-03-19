.class final Lcom/nuance/nmdp/speechkit/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/b;->cancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmdp/speechkit/b;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/b;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/b$3;->a:Lcom/nuance/nmdp/speechkit/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/b$3;->a:Lcom/nuance/nmdp/speechkit/b;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/b;->d(Lcom/nuance/nmdp/speechkit/b;)Lcom/nuance/nmdp/speechkit/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/a;->c()V

    return-void
.end method
