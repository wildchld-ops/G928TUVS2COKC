.class final Lcom/nuance/nmdp/speechkit/s$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/s$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmdp/speechkit/GenericResult;

.field private synthetic b:Lcom/nuance/nmdp/speechkit/s$1;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/s$1;Lcom/nuance/nmdp/speechkit/GenericResult;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/s$1$1;->b:Lcom/nuance/nmdp/speechkit/s$1;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/s$1$1;->a:Lcom/nuance/nmdp/speechkit/GenericResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/s$1$1;->b:Lcom/nuance/nmdp/speechkit/s$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/s$1;->a:Lcom/nuance/nmdp/speechkit/s;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/s;->a(Lcom/nuance/nmdp/speechkit/s;)Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/s$1$1;->b:Lcom/nuance/nmdp/speechkit/s$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/s$1;->a:Lcom/nuance/nmdp/speechkit/s;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/s;->a(Lcom/nuance/nmdp/speechkit/s;)Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/s$1$1;->b:Lcom/nuance/nmdp/speechkit/s$1;

    iget-object v1, v1, Lcom/nuance/nmdp/speechkit/s$1;->a:Lcom/nuance/nmdp/speechkit/s;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/s$1$1;->a:Lcom/nuance/nmdp/speechkit/GenericResult;

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/s$1$1;->b:Lcom/nuance/nmdp/speechkit/s$1;

    iget-object v3, v3, Lcom/nuance/nmdp/speechkit/s$1;->a:Lcom/nuance/nmdp/speechkit/s;

    invoke-static {v3}, Lcom/nuance/nmdp/speechkit/s;->b(Lcom/nuance/nmdp/speechkit/s;)Lcom/nuance/nmdp/speechkit/SpeechError;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;->onComplete(Lcom/nuance/nmdp/speechkit/GenericCommand;Lcom/nuance/nmdp/speechkit/GenericResult;Lcom/nuance/nmdp/speechkit/SpeechError;)V

    :cond_0
    return-void
.end method
