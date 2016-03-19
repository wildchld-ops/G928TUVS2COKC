.class final Lcom/nuance/nmdp/speechkit/z$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nuance/nmdp/speechkit/z;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/z;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/z$2;->a:Lcom/nuance/nmdp/speechkit/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSpeakingBegin(Lcom/nuance/nmdp/speechkit/Vocalizer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/z$2;->a:Lcom/nuance/nmdp/speechkit/z;

    new-instance v1, Lcom/nuance/nmdp/speechkit/z$2$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/nuance/nmdp/speechkit/z$2$1;-><init>(Lcom/nuance/nmdp/speechkit/z$2;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/z;->a(Lcom/nuance/nmdp/speechkit/z;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onSpeakingDone(Lcom/nuance/nmdp/speechkit/Vocalizer;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/SpeechError;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/z$2;->a:Lcom/nuance/nmdp/speechkit/z;

    new-instance v1, Lcom/nuance/nmdp/speechkit/z$2$2;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/nuance/nmdp/speechkit/z$2$2;-><init>(Lcom/nuance/nmdp/speechkit/z$2;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/SpeechError;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/z;->b(Lcom/nuance/nmdp/speechkit/z;Ljava/lang/Runnable;)V

    return-void
.end method
