.class final Lcom/nuance/nmdp/speechkit/x$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/x$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmdp/speechkit/GenericRecognition;

.field private synthetic b:Lcom/nuance/nmdp/speechkit/x$1;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/x$1;Lcom/nuance/nmdp/speechkit/GenericRecognition;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/x$1$2;->b:Lcom/nuance/nmdp/speechkit/x$1;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/x$1$2;->a:Lcom/nuance/nmdp/speechkit/GenericRecognition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/x$1$2;->b:Lcom/nuance/nmdp/speechkit/x$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/x$1;->a:Lcom/nuance/nmdp/speechkit/x;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/x;->a(Lcom/nuance/nmdp/speechkit/x;)Lcom/nuance/nmdp/speechkit/TextRecognizer$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/x$1$2;->b:Lcom/nuance/nmdp/speechkit/x$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/x$1;->a:Lcom/nuance/nmdp/speechkit/x;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/x;->a(Lcom/nuance/nmdp/speechkit/x;)Lcom/nuance/nmdp/speechkit/TextRecognizer$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/x$1$2;->b:Lcom/nuance/nmdp/speechkit/x$1;

    iget-object v1, v1, Lcom/nuance/nmdp/speechkit/x$1;->a:Lcom/nuance/nmdp/speechkit/x;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/x$1$2;->a:Lcom/nuance/nmdp/speechkit/GenericRecognition;

    invoke-interface {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/TextRecognizer$Listener;->onResults(Lcom/nuance/nmdp/speechkit/TextRecognizer;Lcom/nuance/nmdp/speechkit/GenericRecognition;)V

    :cond_0
    return-void
.end method
