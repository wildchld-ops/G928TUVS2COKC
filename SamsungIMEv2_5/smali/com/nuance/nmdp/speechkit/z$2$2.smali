.class final Lcom/nuance/nmdp/speechkit/z$2$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/z$2;->onSpeakingDone(Lcom/nuance/nmdp/speechkit/Vocalizer;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/SpeechError;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/nuance/nmdp/speechkit/SpeechError;

.field private synthetic c:Ljava/lang/Object;

.field private synthetic d:Lcom/nuance/nmdp/speechkit/z$2;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/z$2;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/SpeechError;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/z$2$2;->d:Lcom/nuance/nmdp/speechkit/z$2;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/z$2$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/z$2$2;->b:Lcom/nuance/nmdp/speechkit/SpeechError;

    iput-object p4, p0, Lcom/nuance/nmdp/speechkit/z$2$2;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/z$2$2;->d:Lcom/nuance/nmdp/speechkit/z$2;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/z$2;->a:Lcom/nuance/nmdp/speechkit/z;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/z;->c(Lcom/nuance/nmdp/speechkit/z;)Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/z$2$2;->d:Lcom/nuance/nmdp/speechkit/z$2;

    iget-object v1, v1, Lcom/nuance/nmdp/speechkit/z$2;->a:Lcom/nuance/nmdp/speechkit/z;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/z$2$2;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/z$2$2;->b:Lcom/nuance/nmdp/speechkit/SpeechError;

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/z$2$2;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;->onSpeakingDone(Lcom/nuance/nmdp/speechkit/Vocalizer;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/SpeechError;Ljava/lang/Object;)V

    return-void
.end method
