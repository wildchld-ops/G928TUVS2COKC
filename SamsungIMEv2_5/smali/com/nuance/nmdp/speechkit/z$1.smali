.class final Lcom/nuance/nmdp/speechkit/z$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/z;-><init>(Lcom/nuance/nmdp/speechkit/v;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/nuance/nmdp/speechkit/z;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/z;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/z$1;->c:Lcom/nuance/nmdp/speechkit/z;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/z$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/z$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/z$1;->c:Lcom/nuance/nmdp/speechkit/z;

    new-instance v1, Lcom/nuance/nmdp/speechkit/y;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/z$1;->c:Lcom/nuance/nmdp/speechkit/z;

    invoke-static {v2}, Lcom/nuance/nmdp/speechkit/z;->a(Lcom/nuance/nmdp/speechkit/z;)Lcom/nuance/nmdp/speechkit/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/v;->c()Lcom/nuance/nmdp/speechkit/an;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/z$1;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/z$1;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/z$1;->c:Lcom/nuance/nmdp/speechkit/z;

    invoke-static {v5}, Lcom/nuance/nmdp/speechkit/z;->b(Lcom/nuance/nmdp/speechkit/z;)Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nuance/nmdp/speechkit/y;-><init>(Lcom/nuance/nmdp/speechkit/an;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;)V

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/z;->a(Lcom/nuance/nmdp/speechkit/z;Lcom/nuance/nmdp/speechkit/y;)Lcom/nuance/nmdp/speechkit/y;

    return-void
.end method
