.class final Lcom/nuance/nmdp/speechkit/Prompt$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/Prompt;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmdp/speechkit/Prompt;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/Prompt;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/Prompt$1;->a:Lcom/nuance/nmdp/speechkit/Prompt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/Prompt$1;->a:Lcom/nuance/nmdp/speechkit/Prompt;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/Prompt;->a(Lcom/nuance/nmdp/speechkit/Prompt;)Lcom/nuance/nmdp/speechkit/v;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/Prompt$1;->a:Lcom/nuance/nmdp/speechkit/Prompt;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/Prompt;->a(Lcom/nuance/nmdp/speechkit/Prompt;)Lcom/nuance/nmdp/speechkit/v;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/Prompt$1;->a:Lcom/nuance/nmdp/speechkit/Prompt;

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/v;->a(Lcom/nuance/nmdp/speechkit/Prompt;)V

    :cond_0
    return-void
.end method
