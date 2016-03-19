.class final Lcom/nuance/nmdp/speechkit/ae$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/ae;->e()Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmdp/speechkit/ae;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/ae$2;->a:Lcom/nuance/nmdp/speechkit/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ae$2;->a:Lcom/nuance/nmdp/speechkit/ae;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error during audio prompt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/ab;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ae$2;->a:Lcom/nuance/nmdp/speechkit/ae;

    invoke-static {v0, v3}, Lcom/nuance/nmdp/speechkit/ae;->a(Lcom/nuance/nmdp/speechkit/ae;Z)V

    return v3
.end method
