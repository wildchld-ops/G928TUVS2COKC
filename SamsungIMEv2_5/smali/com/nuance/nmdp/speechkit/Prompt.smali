.class public final Lcom/nuance/nmdp/speechkit/Prompt;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/nuance/nmdp/speechkit/cb;

.field private final b:Lcom/nuance/nmdp/speechkit/v;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/Prompt;->a:Lcom/nuance/nmdp/speechkit/cb;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/Prompt;->b:Lcom/nuance/nmdp/speechkit/v;

    return-void
.end method

.method static synthetic a(Lcom/nuance/nmdp/speechkit/Prompt;)Lcom/nuance/nmdp/speechkit/v;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/Prompt;->b:Lcom/nuance/nmdp/speechkit/v;

    return-object v0
.end method

.method public static vibration(I)Lcom/nuance/nmdp/speechkit/Prompt;
    .locals 3

    const/4 v0, 0x0

    if-gtz p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/nuance/nmdp/speechkit/af;

    invoke-direct {v2, p0}, Lcom/nuance/nmdp/speechkit/af;-><init>(I)V

    new-instance v1, Lcom/nuance/nmdp/speechkit/Prompt;

    invoke-direct {v1, v2, v0}, Lcom/nuance/nmdp/speechkit/Prompt;-><init>(Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/v;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method final a()Lcom/nuance/nmdp/speechkit/cb;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/Prompt;->a:Lcom/nuance/nmdp/speechkit/cb;

    return-object v0
.end method

.method public final release()V
    .locals 1

    new-instance v0, Lcom/nuance/nmdp/speechkit/Prompt$1;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/Prompt$1;-><init>(Lcom/nuance/nmdp/speechkit/Prompt;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/by;->a(Ljava/lang/Runnable;)V

    return-void
.end method
