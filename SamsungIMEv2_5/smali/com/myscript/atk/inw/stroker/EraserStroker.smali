.class public final Lcom/myscript/atk/inw/stroker/EraserStroker;
.super Lcom/myscript/atk/inw/stroker/PressureStroker;
.source "EraserStroker.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x2

    new-instance v1, Lcom/myscript/atk/inw/stroker/pressure/EraserPressureSimulator;

    invoke-direct {v1}, Lcom/myscript/atk/inw/stroker/pressure/EraserPressureSimulator;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/myscript/atk/inw/stroker/PressureStroker;-><init>(ILcom/myscript/atk/inw/stroker/pressure/PressureService;)V

    return-void
.end method


# virtual methods
.method public setStylus(Z)V
    .locals 0

    return-void
.end method

.method public strokerType()Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;
    .locals 1

    sget-object v0, Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;->StrokerTypeEraser:Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;

    return-object v0
.end method
