.class final Lcom/nuance/nmdp/speechkit/q$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/q;->stopRecording()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmdp/speechkit/q;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/q;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/q$5;->a:Lcom/nuance/nmdp/speechkit/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/q$5;->a:Lcom/nuance/nmdp/speechkit/q;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/q;->d(Lcom/nuance/nmdp/speechkit/q;)Lcom/nuance/nmdp/speechkit/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/n;->e()V

    return-void
.end method
