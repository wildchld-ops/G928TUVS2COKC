.class public final enum Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;
.super Ljava/lang/Enum;
.source "WaveShape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SideType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

.field public static final enum Bothside:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

.field public static final enum Downside:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

.field public static final enum Upside:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    const-string v1, "Upside"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;->Upside:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    new-instance v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    const-string v1, "Downside"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;->Downside:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    new-instance v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    const-string v1, "Bothside"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;->Bothside:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    sget-object v1, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;->Upside:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;->Downside:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;->Bothside:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;->$VALUES:[Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;
    .locals 1

    const-class v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;
    .locals 1

    sget-object v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;->$VALUES:[Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    invoke-virtual {v0}, [Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    return-object v0
.end method
