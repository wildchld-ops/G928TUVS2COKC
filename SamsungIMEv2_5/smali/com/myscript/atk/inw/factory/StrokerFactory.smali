.class public Lcom/myscript/atk/inw/factory/StrokerFactory;
.super Ljava/lang/Object;
.source "StrokerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myscript/atk/inw/factory/StrokerFactory$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createStroker(Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;)Lcom/myscript/atk/inw/stroker/Stroker;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/myscript/atk/inw/factory/StrokerFactory$1;->$SwitchMap$com$myscript$atk$inw$stroker$Stroker$StrokerType:[I

    invoke-virtual {p0}, Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/myscript/atk/inw/stroker/SimpleStroker;

    invoke-direct {v0}, Lcom/myscript/atk/inw/stroker/SimpleStroker;-><init>()V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/myscript/atk/inw/stroker/PressureStroker;->createSimulatedPressureStroker()Lcom/myscript/atk/inw/stroker/PressureStroker;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/myscript/atk/inw/stroker/MarkerStroker;

    invoke-direct {v0}, Lcom/myscript/atk/inw/stroker/MarkerStroker;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/myscript/atk/inw/stroker/EraserStroker;

    invoke-direct {v0}, Lcom/myscript/atk/inw/stroker/EraserStroker;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/myscript/atk/inw/stroker/StraightStroker;

    invoke-direct {v0}, Lcom/myscript/atk/inw/stroker/StraightStroker;-><init>()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
