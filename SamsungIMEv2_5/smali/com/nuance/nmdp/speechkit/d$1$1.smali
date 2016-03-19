.class final Lcom/nuance/nmdp/speechkit/d$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/d$1;->a(Lcom/nuance/nmdp/speechkit/SpeechError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmdp/speechkit/SpeechError;

.field private synthetic b:Lcom/nuance/nmdp/speechkit/d$1;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/d$1;Lcom/nuance/nmdp/speechkit/SpeechError;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/d$1$1;->b:Lcom/nuance/nmdp/speechkit/d$1;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/d$1$1;->a:Lcom/nuance/nmdp/speechkit/SpeechError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/d$1$1;->b:Lcom/nuance/nmdp/speechkit/d$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/d$1;->a:Lcom/nuance/nmdp/speechkit/d;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/d;->a(Lcom/nuance/nmdp/speechkit/d;)Lcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/d$1$1;->b:Lcom/nuance/nmdp/speechkit/d$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/d$1;->a:Lcom/nuance/nmdp/speechkit/d;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/d;->a(Lcom/nuance/nmdp/speechkit/d;)Lcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/d$1$1;->b:Lcom/nuance/nmdp/speechkit/d$1;

    iget-object v1, v1, Lcom/nuance/nmdp/speechkit/d$1;->a:Lcom/nuance/nmdp/speechkit/d;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/d$1$1;->a:Lcom/nuance/nmdp/speechkit/SpeechError;

    invoke-interface {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;->onError(Lcom/nuance/nmdp/speechkit/DataUploadCommand;Lcom/nuance/nmdp/speechkit/SpeechError;)V

    :cond_0
    return-void
.end method
