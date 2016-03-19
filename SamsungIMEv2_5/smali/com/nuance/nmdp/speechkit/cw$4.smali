.class final Lcom/nuance/nmdp/speechkit/cw$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/co;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/cw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmdp/speechkit/cw;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/cw;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/cw$4;->a:Lcom/nuance/nmdp/speechkit/cw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw$4;->a:Lcom/nuance/nmdp/speechkit/cw;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/cw;->a(Lcom/nuance/nmdp/speechkit/cw;B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
