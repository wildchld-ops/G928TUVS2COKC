.class synthetic Lcom/ime/framework/engine/bsthwr/DecHandwriting$2;
.super Ljava/lang/Object;
.source "DecHandwriting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/engine/bsthwr/DecHandwriting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ime$framework$engine$bsthwr$DecHandwriting$eRecogType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/ime/framework/engine/bsthwr/DecHandwriting$eRecogType;->values()[Lcom/ime/framework/engine/bsthwr/DecHandwriting$eRecogType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ime/framework/engine/bsthwr/DecHandwriting$2;->$SwitchMap$com$ime$framework$engine$bsthwr$DecHandwriting$eRecogType:[I

    :try_start_0
    sget-object v0, Lcom/ime/framework/engine/bsthwr/DecHandwriting$2;->$SwitchMap$com$ime$framework$engine$bsthwr$DecHandwriting$eRecogType:[I

    sget-object v1, Lcom/ime/framework/engine/bsthwr/DecHandwriting$eRecogType;->RECOG_CHAR:Lcom/ime/framework/engine/bsthwr/DecHandwriting$eRecogType;

    invoke-virtual {v1}, Lcom/ime/framework/engine/bsthwr/DecHandwriting$eRecogType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/ime/framework/engine/bsthwr/DecHandwriting$2;->$SwitchMap$com$ime$framework$engine$bsthwr$DecHandwriting$eRecogType:[I

    sget-object v1, Lcom/ime/framework/engine/bsthwr/DecHandwriting$eRecogType;->RECOG_STRING:Lcom/ime/framework/engine/bsthwr/DecHandwriting$eRecogType;

    invoke-virtual {v1}, Lcom/ime/framework/engine/bsthwr/DecHandwriting$eRecogType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/ime/framework/engine/bsthwr/DecHandwriting$2;->$SwitchMap$com$ime$framework$engine$bsthwr$DecHandwriting$eRecogType:[I

    sget-object v1, Lcom/ime/framework/engine/bsthwr/DecHandwriting$eRecogType;->RECOG_TEXT:Lcom/ime/framework/engine/bsthwr/DecHandwriting$eRecogType;

    invoke-virtual {v1}, Lcom/ime/framework/engine/bsthwr/DecHandwriting$eRecogType;->ordinal()I

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
