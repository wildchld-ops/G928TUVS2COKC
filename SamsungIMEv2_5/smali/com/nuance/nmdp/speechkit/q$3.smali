.class final Lcom/nuance/nmdp/speechkit/q$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/q;->setPrompt(ILcom/nuance/nmdp/speechkit/Prompt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/nuance/nmdp/speechkit/Prompt;

.field private synthetic c:Lcom/nuance/nmdp/speechkit/q;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/q;ILcom/nuance/nmdp/speechkit/Prompt;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/q$3;->c:Lcom/nuance/nmdp/speechkit/q;

    iput p2, p0, Lcom/nuance/nmdp/speechkit/q$3;->a:I

    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/q$3;->b:Lcom/nuance/nmdp/speechkit/Prompt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/q$3;->c:Lcom/nuance/nmdp/speechkit/q;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/q;->d(Lcom/nuance/nmdp/speechkit/q;)Lcom/nuance/nmdp/speechkit/n;

    move-result-object v0

    iget v1, p0, Lcom/nuance/nmdp/speechkit/q$3;->a:I

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/q$3;->b:Lcom/nuance/nmdp/speechkit/Prompt;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/n;->a(ILcom/nuance/nmdp/speechkit/Prompt;)V

    return-void
.end method
