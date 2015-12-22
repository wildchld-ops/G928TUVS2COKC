.class final enum Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;
.super Ljava/lang/Enum;
.source "WaveEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SineWaveStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;

.field public static final enum MOVE:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;

.field public static final enum STAY:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;

    const-string v1, "MOVE"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;->MOVE:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;

    new-instance v0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;

    const-string v1, "STAY"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;->STAY:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;

    sget-object v1, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;->MOVE:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;->STAY:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;->$VALUES:[Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;
    .locals 1

    const-class v0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;
    .locals 1

    sget-object v0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;->$VALUES:[Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;

    invoke-virtual {v0}, [Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$SineWaveStatus;

    return-object v0
.end method
