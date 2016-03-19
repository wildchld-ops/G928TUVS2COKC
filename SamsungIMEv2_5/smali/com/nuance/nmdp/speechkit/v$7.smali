.class final Lcom/nuance/nmdp/speechkit/v$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/v;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmdp/speechkit/v;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/v;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/v$7;->a:Lcom/nuance/nmdp/speechkit/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v$7;->a:Lcom/nuance/nmdp/speechkit/v;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/v;->b(Lcom/nuance/nmdp/speechkit/v;)Lcom/nuance/nmdp/speechkit/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/an;->d()V

    return-void
.end method
