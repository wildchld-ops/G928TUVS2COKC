.class synthetic Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$1;
.super Ljava/lang/Object;
.source "WaveShape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$android$visualeffect$naturalcurve$wave$WaveShape$SideType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;->values()[Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$1;->$SwitchMap$com$samsung$android$visualeffect$naturalcurve$wave$WaveShape$SideType:[I

    :try_start_0
    sget-object v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$1;->$SwitchMap$com$samsung$android$visualeffect$naturalcurve$wave$WaveShape$SideType:[I

    sget-object v1, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;->Upside:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$1;->$SwitchMap$com$samsung$android$visualeffect$naturalcurve$wave$WaveShape$SideType:[I

    sget-object v1, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;->Downside:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$1;->$SwitchMap$com$samsung$android$visualeffect$naturalcurve$wave$WaveShape$SideType:[I

    sget-object v1, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;->Bothside:Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/naturalcurve/wave/WaveShape$SideType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
