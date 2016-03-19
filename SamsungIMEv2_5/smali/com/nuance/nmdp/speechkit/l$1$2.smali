.class final Lcom/nuance/nmdp/speechkit/l$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/l$1;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmdp/speechkit/l$1;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/l$1;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/l$1$2;->a:Lcom/nuance/nmdp/speechkit/l$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/l$1$2;->a:Lcom/nuance/nmdp/speechkit/l$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/l$1;->a:Lcom/nuance/nmdp/speechkit/l;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/l;->a(Lcom/nuance/nmdp/speechkit/l;)Lcom/nuance/nmdp/speechkit/NluRecognizer$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/l$1$2;->a:Lcom/nuance/nmdp/speechkit/l$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/l$1;->a:Lcom/nuance/nmdp/speechkit/l;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/l;->a(Lcom/nuance/nmdp/speechkit/l;)Lcom/nuance/nmdp/speechkit/NluRecognizer$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/l$1$2;->a:Lcom/nuance/nmdp/speechkit/l$1;

    iget-object v1, v1, Lcom/nuance/nmdp/speechkit/l$1;->a:Lcom/nuance/nmdp/speechkit/l;

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/NluRecognizer$Listener;->onRecordingBegin(Lcom/nuance/nmdp/speechkit/NluRecognizer;)V

    :cond_0
    return-void
.end method
