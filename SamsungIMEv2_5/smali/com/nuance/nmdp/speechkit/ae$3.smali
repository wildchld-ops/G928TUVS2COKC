.class final Lcom/nuance/nmdp/speechkit/ae$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/ae$3;->a:Lcom/nuance/nmdp/speechkit/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ae$3;->a:Lcom/nuance/nmdp/speechkit/ae;

    const-string v1, "Audio prompt completed"

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ae$3;->a:Lcom/nuance/nmdp/speechkit/ae;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/ae;->a(Lcom/nuance/nmdp/speechkit/ae;Z)V

    return-void
.end method
