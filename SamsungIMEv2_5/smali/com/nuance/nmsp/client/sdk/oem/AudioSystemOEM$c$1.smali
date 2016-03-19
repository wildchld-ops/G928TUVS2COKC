.class final Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;


# direct methods
.method constructor <init>(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c$1;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c$1;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;)V
    :try_end_0
    .catch Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c$1;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->b(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c$1;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->c(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
