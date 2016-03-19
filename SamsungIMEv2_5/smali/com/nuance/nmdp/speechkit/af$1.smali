.class final Lcom/nuance/nmdp/speechkit/af$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/af;->a(Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/ca;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmdp/speechkit/ca;

.field private synthetic b:Ljava/lang/Object;

.field private synthetic c:Lcom/nuance/nmdp/speechkit/af;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/af;Lcom/nuance/nmdp/speechkit/ca;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/af$1;->c:Lcom/nuance/nmdp/speechkit/af;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/af$1;->a:Lcom/nuance/nmdp/speechkit/ca;

    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/af$1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/af$1;->c:Lcom/nuance/nmdp/speechkit/af;

    const-string v1, "Vibration finished"

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/af$1;->a:Lcom/nuance/nmdp/speechkit/ca;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/af$1;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/ca;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/af$1;->c:Lcom/nuance/nmdp/speechkit/af;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/af;->a(Lcom/nuance/nmdp/speechkit/af;)Landroid/os/Vibrator;

    return-void
.end method
