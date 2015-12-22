.class final enum Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;
.super Ljava/lang/Enum;
.source "WaveEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "OpaqueType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;

.field public static final enum BOTH:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;

.field public static final enum BOTTOM:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;

.field public static final enum TOP:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;

    const-string v1, "BOTH"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;->BOTH:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;

    new-instance v0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;->TOP:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;

    new-instance v0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;->BOTTOM:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;

    sget-object v1, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;->BOTH:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;->TOP:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;->BOTTOM:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;->$VALUES:[Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;
    .locals 1

    const-class v0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;
    .locals 1

    sget-object v0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;->$VALUES:[Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;

    invoke-virtual {v0}, [Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect$OpaqueType;

    return-object v0
.end method
