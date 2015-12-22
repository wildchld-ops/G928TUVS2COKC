.class public final enum Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;
.super Ljava/lang/Enum;
.source "AbstractWaveEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VerticalAlign"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;

.field public static final enum BOTTOM:Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;

.field public static final enum CENTER:Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;

.field public static final enum TOP:Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;->TOP:Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;

    new-instance v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;->CENTER:Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;

    new-instance v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;->BOTTOM:Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;

    sget-object v1, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;->TOP:Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;->CENTER:Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;->BOTTOM:Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;->$VALUES:[Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;
    .locals 1

    const-class v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;
    .locals 1

    sget-object v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;->$VALUES:[Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;

    invoke-virtual {v0}, [Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;

    return-object v0
.end method
