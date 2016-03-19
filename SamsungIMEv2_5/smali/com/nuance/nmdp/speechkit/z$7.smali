.class final Lcom/nuance/nmdp/speechkit/z$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/z;->setVoice(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/nuance/nmdp/speechkit/z;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/z;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/z$7;->b:Lcom/nuance/nmdp/speechkit/z;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/z$7;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/z$7;->b:Lcom/nuance/nmdp/speechkit/z;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/z;->d(Lcom/nuance/nmdp/speechkit/z;)Lcom/nuance/nmdp/speechkit/y;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/z$7;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/y;->setVoice(Ljava/lang/String;)V

    return-void
.end method
