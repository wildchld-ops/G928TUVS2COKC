.class public interface abstract Lcom/nuance/nmdp/speechkit/ei;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmdp/speechkit/ei$a;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/nuance/nmdp/speechkit/ei$a;

    const-string v1, "ABORT_END"

    invoke-direct {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/ei$a;-><init>(Ljava/lang/String;B)V

    new-instance v0, Lcom/nuance/nmdp/speechkit/ei$a;

    const-string v1, "ABORT_BACK"

    invoke-direct {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/ei$a;-><init>(Ljava/lang/String;B)V

    new-instance v0, Lcom/nuance/nmdp/speechkit/ei$a;

    const-string v1, "ABORT_NEW"

    invoke-direct {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/ei$a;-><init>(Ljava/lang/String;B)V

    new-instance v0, Lcom/nuance/nmdp/speechkit/ei$a;

    const-string v1, "STOPPED_TOO_SOON"

    invoke-direct {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/ei$a;-><init>(Ljava/lang/String;B)V

    new-instance v0, Lcom/nuance/nmdp/speechkit/ei$a;

    const-string v1, "PREEMPTED"

    invoke-direct {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/ei$a;-><init>(Ljava/lang/String;B)V

    return-void
.end method


# virtual methods
.method public abstract a()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmdp/speechkit/da;,
            Lcom/nuance/nmdp/speechkit/db;
        }
    .end annotation
.end method

.method public abstract a(Lcom/nuance/nmdp/speechkit/ck$j;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmdp/speechkit/da;,
            Lcom/nuance/nmdp/speechkit/db;
        }
    .end annotation
.end method
