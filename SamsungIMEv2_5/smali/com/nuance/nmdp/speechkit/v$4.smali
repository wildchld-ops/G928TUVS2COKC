.class final Lcom/nuance/nmdp/speechkit/v$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/v;->a(Lcom/nuance/nmdp/speechkit/SpeechKit$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nuance/nmdp/speechkit/SpeechKit$Listener;

.field private synthetic b:Lcom/nuance/nmdp/speechkit/v;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/v;Lcom/nuance/nmdp/speechkit/SpeechKit$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/v$4;->b:Lcom/nuance/nmdp/speechkit/v;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/v$4;->a:Lcom/nuance/nmdp/speechkit/SpeechKit$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v$4;->b:Lcom/nuance/nmdp/speechkit/v;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/v;->b(Lcom/nuance/nmdp/speechkit/v;)Lcom/nuance/nmdp/speechkit/an;

    move-result-object v0

    new-instance v1, Lcom/nuance/nmdp/speechkit/v$4$1;

    invoke-direct {v1, p0}, Lcom/nuance/nmdp/speechkit/v$4$1;-><init>(Lcom/nuance/nmdp/speechkit/v$4;)V

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/an;->a(Lcom/nuance/nmdp/speechkit/ai;)Lcom/nuance/nmdp/speechkit/ah;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/ah;->a()V

    :cond_0
    return-void
.end method
