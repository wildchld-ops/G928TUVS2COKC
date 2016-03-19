.class public Lcom/myscript/atk/inw/factory/RendererFactory;
.super Ljava/lang/Object;
.source "RendererFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myscript/atk/inw/factory/RendererFactory$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRenderer(Lcom/myscript/atk/inw/renderer/Renderer$RendererType;)Lcom/myscript/atk/inw/renderer/Renderer;
    .locals 3

    sget-object v1, Lcom/myscript/atk/inw/factory/RendererFactory$1;->$SwitchMap$com$myscript$atk$inw$renderer$Renderer$RendererType:[I

    invoke-virtual {p0}, Lcom/myscript/atk/inw/renderer/Renderer$RendererType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/myscript/atk/inw/renderer/SimpleRenderer;

    invoke-direct {v0}, Lcom/myscript/atk/inw/renderer/SimpleRenderer;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/myscript/atk/inw/renderer/PressureRenderer;

    invoke-direct {v0}, Lcom/myscript/atk/inw/renderer/PressureRenderer;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/myscript/atk/inw/renderer/MarkerRenderer;

    invoke-direct {v0}, Lcom/myscript/atk/inw/renderer/MarkerRenderer;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/myscript/atk/inw/renderer/EraserRenderer;

    invoke-direct {v0}, Lcom/myscript/atk/inw/renderer/EraserRenderer;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
