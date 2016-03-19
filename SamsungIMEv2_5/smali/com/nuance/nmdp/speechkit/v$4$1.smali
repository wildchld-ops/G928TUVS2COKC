.class final Lcom/nuance/nmdp/speechkit/v$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/ai;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/v$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmdp/speechkit/v$4;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/v$4;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/v$4$1;->a:Lcom/nuance/nmdp/speechkit/v$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nuance/nmdp/speechkit/ah;)V
    .locals 2

    invoke-static {}, Lcom/nuance/nmdp/speechkit/v;->n()Lcom/nuance/nmdp/speechkit/v;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v$4$1;->a:Lcom/nuance/nmdp/speechkit/v$4;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/v$4;->a:Lcom/nuance/nmdp/speechkit/SpeechKit$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v$4$1;->a:Lcom/nuance/nmdp/speechkit/v$4;

    iget-object v1, v0, Lcom/nuance/nmdp/speechkit/v$4;->a:Lcom/nuance/nmdp/speechkit/SpeechKit$Listener;

    invoke-static {}, Lcom/nuance/nmdp/speechkit/v;->n()Lcom/nuance/nmdp/speechkit/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/v;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/SpeechKit;

    invoke-interface {v1, v0}, Lcom/nuance/nmdp/speechkit/SpeechKit$Listener;->onConnectionDone(Lcom/nuance/nmdp/speechkit/SpeechKit;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/ah;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/nuance/nmdp/speechkit/v;->n()Lcom/nuance/nmdp/speechkit/v;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v$4$1;->a:Lcom/nuance/nmdp/speechkit/v$4;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/v$4;->a:Lcom/nuance/nmdp/speechkit/SpeechKit$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v$4$1;->a:Lcom/nuance/nmdp/speechkit/v$4;

    iget-object v1, v0, Lcom/nuance/nmdp/speechkit/v$4;->a:Lcom/nuance/nmdp/speechkit/SpeechKit$Listener;

    invoke-static {}, Lcom/nuance/nmdp/speechkit/v;->n()Lcom/nuance/nmdp/speechkit/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/v;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/SpeechKit;

    invoke-interface {v1, v0, p2, p3}, Lcom/nuance/nmdp/speechkit/SpeechKit$Listener;->onConnectionError(Lcom/nuance/nmdp/speechkit/SpeechKit;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
