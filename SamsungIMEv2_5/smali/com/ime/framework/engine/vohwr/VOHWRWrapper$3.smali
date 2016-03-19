.class Lcom/ime/framework/engine/vohwr/VOHWRWrapper$3;
.super Landroid/os/Handler;
.source "VOHWRWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/engine/vohwr/VOHWRWrapper;->initConfigurationHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/engine/vohwr/VOHWRWrapper;


# direct methods
.method constructor <init>(Lcom/ime/framework/engine/vohwr/VOHWRWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/engine/vohwr/VOHWRWrapper$3;->this$0:Lcom/ime/framework/engine/vohwr/VOHWRWrapper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ime/framework/engine/vohwr/VOHWRWrapper$3;->this$0:Lcom/ime/framework/engine/vohwr/VOHWRWrapper;

    # invokes: Lcom/ime/framework/engine/vohwr/VOHWRWrapper;->configureLanguage()V
    invoke-static {v0}, Lcom/ime/framework/engine/vohwr/VOHWRWrapper;->access$100(Lcom/ime/framework/engine/vohwr/VOHWRWrapper;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ime/framework/engine/vohwr/VOHWRWrapper$3;->this$0:Lcom/ime/framework/engine/vohwr/VOHWRWrapper;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ime/framework/engine/vohwr/VOHWRWrapper;->CommitAndInitText(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/ime/framework/engine/vohwr/VOHWRWrapper$3;->this$0:Lcom/ime/framework/engine/vohwr/VOHWRWrapper;

    iget-object v1, p0, Lcom/ime/framework/engine/vohwr/VOHWRWrapper$3;->this$0:Lcom/ime/framework/engine/vohwr/VOHWRWrapper;

    iget v1, v1, Lcom/ime/framework/engine/vohwr/VOHWRWrapper;->mCurBase:I

    iget-object v2, p0, Lcom/ime/framework/engine/vohwr/VOHWRWrapper$3;->this$0:Lcom/ime/framework/engine/vohwr/VOHWRWrapper;

    iget v2, v2, Lcom/ime/framework/engine/vohwr/VOHWRWrapper;->mCurIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/ime/framework/engine/vohwr/VOHWRWrapper;->changeCursorFromEditField(II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
