.class final Lcom/nuance/nmdp/speechkit/ev;
.super Lcom/nuance/nmdp/speechkit/eq;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/eq;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ev;->b:Lcom/nuance/nmdp/speechkit/es;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/ev;->b:Lcom/nuance/nmdp/speechkit/es;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/es;->a()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/es;->a(Landroid/bluetooth/BluetoothDevice;)Z

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ev;->b:Lcom/nuance/nmdp/speechkit/es;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/ev;->b:Lcom/nuance/nmdp/speechkit/es;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/es;->a()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/es;->b(Landroid/bluetooth/BluetoothDevice;)Z

    return-void
.end method

.method public final f()I
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/ev;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method
