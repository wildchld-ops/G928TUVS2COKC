.class final Lcom/nuance/nmdp/speechkit/v$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/v;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;IZ[BLcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;ZIIIZZZZ)V
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

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/v$1;->a:Lcom/nuance/nmdp/speechkit/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v$1;->a:Lcom/nuance/nmdp/speechkit/v;

    new-instance v1, Lcom/nuance/nmdp/speechkit/an;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/v$1;->a:Lcom/nuance/nmdp/speechkit/v;

    invoke-static {v2}, Lcom/nuance/nmdp/speechkit/v;->a(Lcom/nuance/nmdp/speechkit/v;)Lcom/nuance/nmdp/speechkit/al;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nuance/nmdp/speechkit/an;-><init>(Lcom/nuance/nmdp/speechkit/al;)V

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/v;->a(Lcom/nuance/nmdp/speechkit/v;Lcom/nuance/nmdp/speechkit/an;)Lcom/nuance/nmdp/speechkit/an;

    return-void
.end method
