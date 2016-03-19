.class final Lcom/nuance/nmdp/speechkit/es$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/es;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/es$1;->a:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/es$1;->a:[Ljava/lang/Object;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/es$1;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v2, v0, v1

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
