.class public final Lcom/ime/framework/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final FIRST_LINE_HORIZONTAL_GAP_INDEX:I = 0x2

.field public static final FUNCTION_LINE_HORIZONTAL_GAP_INDEX:I = 0x1

.field private static RATIO_OF_SWIFTKEY_ERROR_CORRECTION:I = 0x0

.field private static RATIO_OF_SWIFTKEY_ERROR_CORRECTION_HEIGHT_LAND:I = 0x0

.field private static RATIO_OF_SWIFTKEY_ERROR_CORRECTION_HEIGHT_PORT:I = 0x0

.field private static RATIO_OF_SWIFTKEY_ERROR_CORRECTION_WIDTH_LAND:I = 0x0

.field private static RATIO_OF_SWIFTKEY_ERROR_CORRECTION_WIDTH_PORT:I = 0x0

.field public static final SECOND_LINE_HORIZONTAL_GAP_INDEX:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SamsungKeypad"

.field public static final THIRD_LINE_HORIZONTAL_GAP_INDEX:I = 0x4

.field public static final USE_CUSTOM_AREA_INDEX_SIZE:I = 0x5

.field public static final VERTICAL_GAP_INDEX:I

.field private static period_sec:J

.field private static sec:J

.field private static totalAvg:I

.field private static totalCnt:I

.field private static totalSec:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    sput v0, Lcom/ime/framework/util/Utils;->RATIO_OF_SWIFTKEY_ERROR_CORRECTION:I

    const/16 v0, 0x8

    sput v0, Lcom/ime/framework/util/Utils;->RATIO_OF_SWIFTKEY_ERROR_CORRECTION_HEIGHT_PORT:I

    const/4 v0, 0x5

    sput v0, Lcom/ime/framework/util/Utils;->RATIO_OF_SWIFTKEY_ERROR_CORRECTION_HEIGHT_LAND:I

    const/4 v0, 0x2

    sput v0, Lcom/ime/framework/util/Utils;->RATIO_OF_SWIFTKEY_ERROR_CORRECTION_WIDTH_PORT:I

    const/4 v0, 0x4

    sput v0, Lcom/ime/framework/util/Utils;->RATIO_OF_SWIFTKEY_ERROR_CORRECTION_WIDTH_LAND:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsEmoticons(Ljava/lang/String;)Z
    .locals 7

    const v6, 0xd800

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-gt v6, v0, :cond_1

    const v5, 0xdbff

    if-gt v0, v5, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sub-int v5, v0, v6

    mul-int/lit16 v5, v5, 0x400

    const v6, 0xdc00

    sub-int v6, v1, v6

    add-int/2addr v5, v6

    const/high16 v6, 0x10000

    add-int v2, v5, v6

    const v5, 0x1d000

    if-gt v5, v2, :cond_2

    const v5, 0x1f77f

    if-gt v2, v5, :cond_2

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x20e3

    if-eq v1, v5, :cond_0

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    const/16 v5, 0x2100

    if-gt v5, v0, :cond_4

    const/16 v5, 0x27ff

    if-le v0, v5, :cond_0

    :cond_4
    const/16 v5, 0x2b05

    if-gt v5, v0, :cond_5

    const/16 v5, 0x2b07

    if-le v0, v5, :cond_0

    :cond_5
    const/16 v5, 0x2934

    if-gt v5, v0, :cond_6

    const/16 v5, 0x2935

    if-le v0, v5, :cond_0

    :cond_6
    const/16 v5, 0x3297

    if-gt v5, v0, :cond_7

    const/16 v5, 0x3299

    if-le v0, v5, :cond_0

    :cond_7
    const/16 v5, 0xa9

    if-eq v0, v5, :cond_0

    const/16 v5, 0xae

    if-eq v0, v5, :cond_0

    const/16 v5, 0x303d

    if-eq v0, v5, :cond_0

    const/16 v5, 0x3030

    if-eq v0, v5, :cond_0

    const/16 v5, 0x2b55

    if-eq v0, v5, :cond_0

    const/16 v5, 0x2b1c

    if-eq v0, v5, :cond_0

    const/16 v5, 0x2b1b

    if-eq v0, v5, :cond_0

    const/16 v5, 0x2b50

    if-ne v0, v5, :cond_2

    goto :goto_0
.end method

.method public static containsKoreanLetter(Ljava/lang/String;)Z
    .locals 3

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/ime/framework/util/Utils;->isKoreanLetter(C)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static convertHalftoFull(C)C
    .locals 1

    const/16 v0, 0x21

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7e

    if-gt p0, v0, :cond_0

    const v0, 0xfee0

    add-int/2addr v0, p0

    int-to-char p0, v0

    :cond_0
    return p0
.end method

.method public static convertToTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getAvailableInternalMemory()J
    .locals 8

    const-wide/16 v0, 0x0

    :try_start_0
    new-instance v3, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v4

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v6

    mul-long/2addr v4, v6

    const-wide/32 v6, 0x100000

    div-long v0, v4, v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getChnShiftedFullWidthSymbol(I)I
    .locals 1

    move v0, p0

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const v0, 0xff01

    goto :goto_0

    :pswitch_2
    const v0, 0xffe5

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x2026

    goto :goto_0

    :pswitch_4
    const v0, 0xff08

    goto :goto_0

    :pswitch_5
    const v0, 0xff09

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static varargs getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static getCurrentLanguageScriptType(I)I
    .locals 6

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v2

    array-length v1, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v5, v2, v0

    invoke-virtual {v5}, Lcom/ime/framework/common/Language;->getId()I

    move-result v5

    if-ne v5, p0, :cond_1

    aget-object v5, v2, v0

    invoke-virtual {v5}, Lcom/ime/framework/common/Language;->getScriptType()I

    move-result v4

    :cond_0
    return v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getCustomKeyText(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "\u2026\u2026"

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x3f7
        :pswitch_0
    .end packed-switch
.end method

.method private static getDistanceSquare(IIIIII)I
    .locals 4

    const/4 v0, 0x0

    if-le p1, p5, :cond_2

    if-le p0, p4, :cond_0

    sub-int v1, p1, p5

    sub-int v2, p1, p5

    mul-int/2addr v1, v2

    sub-int v2, p0, p4

    sub-int v3, p0, p4

    mul-int/2addr v2, v3

    add-int v0, v1, v2

    :goto_0
    return v0

    :cond_0
    if-gt p0, p4, :cond_1

    if-lt p2, p4, :cond_1

    sub-int v1, p1, p5

    sub-int v2, p1, p5

    mul-int v0, v1, v2

    goto :goto_0

    :cond_1
    sub-int v1, p1, p5

    sub-int v2, p1, p5

    mul-int/2addr v1, v2

    sub-int v2, p4, p2

    sub-int v3, p4, p2

    mul-int/2addr v2, v3

    add-int v0, v1, v2

    goto :goto_0

    :cond_2
    if-gt p1, p5, :cond_5

    if-lt p3, p5, :cond_5

    if-le p0, p4, :cond_3

    sub-int v1, p0, p4

    sub-int v2, p0, p4

    mul-int v0, v1, v2

    goto :goto_0

    :cond_3
    if-gt p0, p4, :cond_4

    if-lt p2, p4, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    sub-int v1, p4, p2

    sub-int v2, p4, p2

    mul-int v0, v1, v2

    goto :goto_0

    :cond_5
    if-le p0, p4, :cond_6

    sub-int v1, p5, p3

    sub-int v2, p5, p3

    mul-int/2addr v1, v2

    sub-int v2, p0, p4

    sub-int v3, p0, p4

    mul-int/2addr v2, v3

    add-int v0, v1, v2

    goto :goto_0

    :cond_6
    if-gt p0, p4, :cond_7

    if-lt p2, p4, :cond_7

    sub-int v1, p5, p3

    sub-int v2, p5, p3

    mul-int v0, v1, v2

    goto :goto_0

    :cond_7
    sub-int v1, p5, p3

    sub-int v2, p5, p3

    mul-int/2addr v1, v2

    sub-int v2, p4, p2

    sub-int v3, p4, p2

    mul-int/2addr v2, v3

    add-int v0, v1, v2

    goto :goto_0
.end method

.method private static getDistanceSquareHD(Lcom/ime/framework/view/Keyboard$Key;IIIII[Z)I
    .locals 9

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p0, Lcom/ime/framework/view/Keyboard$Key;->x:I

    iget v8, p0, Lcom/ime/framework/view/Keyboard$Key;->width:I

    add-int v3, v7, v8

    iget v2, p0, Lcom/ime/framework/view/Keyboard$Key;->x:I

    iget v4, p0, Lcom/ime/framework/view/Keyboard$Key;->y:I

    iget v7, p0, Lcom/ime/framework/view/Keyboard$Key;->y:I

    iget v8, p0, Lcom/ime/framework/view/Keyboard$Key;->height:I

    add-int v1, v7, v8

    if-le v4, p2, :cond_7

    sub-int v6, v4, p2

    const/4 v7, 0x0

    aget-boolean v7, p6, v7

    if-eqz v7, :cond_0

    const/16 v7, 0x500

    if-eq p3, v7, :cond_6

    sub-int v7, v1, v4

    sub-int v7, v4, v7

    if-ge v7, p2, :cond_0

    div-int/lit8 v7, p4, 0x5

    if-gt v6, v7, :cond_0

    const/4 v6, 0x0

    :cond_0
    :goto_0
    const/4 v7, 0x0

    aget-boolean v7, p6, v7

    if-eqz v7, :cond_1

    if-lt v6, p4, :cond_1

    iget v7, p0, Lcom/ime/framework/view/Keyboard$Key;->height:I

    add-int/2addr v6, v7

    :cond_1
    if-le v2, p1, :cond_a

    sub-int v5, v2, p1

    const/4 v7, 0x3

    aget-boolean v7, p6, v7

    if-eqz v7, :cond_3

    const/16 v7, 0x500

    if-eq p3, v7, :cond_3

    iget-object v7, p0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    const/16 v8, 0x6c

    if-eq v7, v8, :cond_2

    iget-object v7, p0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    const/16 v8, 0x3163

    if-ne v7, v8, :cond_3

    :cond_2
    if-ge v5, p5, :cond_3

    move v5, p5

    :cond_3
    :goto_1
    const/4 v7, 0x4

    aget-boolean v7, p6, v7

    if-eqz v7, :cond_4

    const/16 v7, 0x500

    if-eq p3, v7, :cond_10

    iget-object v7, p0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    const/16 v8, -0x190

    if-ne v7, v8, :cond_f

    const/16 v7, 0x10

    if-gt v5, v7, :cond_4

    const/4 v5, 0x0

    :cond_4
    :goto_2
    const/4 v7, 0x1

    aget-boolean v7, p6, v7

    if-eqz v7, :cond_5

    const/16 v7, 0x500

    if-eq p3, v7, :cond_12

    iget-object v7, p0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    const/16 v8, 0x20

    if-ne v7, v8, :cond_5

    const/16 v7, 0x10

    if-gt v5, v7, :cond_5

    const/4 v5, 0x0

    :cond_5
    :goto_3
    mul-int v7, v6, v6

    mul-int v8, v5, v5

    add-int v0, v7, v8

    return v0

    :cond_6
    iget v7, p0, Lcom/ime/framework/view/Keyboard$Key;->height:I

    add-int/2addr v6, v7

    goto :goto_0

    :cond_7
    if-gt v4, p2, :cond_8

    if-lt v1, p2, :cond_8

    const/4 v6, 0x0

    goto :goto_0

    :cond_8
    sub-int v6, p2, v1

    const/4 v7, 0x0

    aget-boolean v7, p6, v7

    if-eqz v7, :cond_0

    const/16 v7, 0x500

    if-eq p3, v7, :cond_9

    sub-int v7, v1, v4

    add-int/2addr v7, v1

    if-le v7, p2, :cond_0

    mul-int/lit8 v7, p4, 0x4

    div-int/lit8 v7, v7, 0x5

    if-ge v6, v7, :cond_0

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_9
    sub-int v7, v1, v4

    add-int/2addr v7, v1

    if-le v7, p2, :cond_0

    if-ge v6, p4, :cond_0

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_a
    if-gt v2, p1, :cond_b

    if-lt v3, p1, :cond_b

    const/4 v5, 0x0

    goto :goto_1

    :cond_b
    sub-int v5, p1, v3

    const/4 v7, 0x2

    aget-boolean v7, p6, v7

    if-eqz v7, :cond_d

    const/16 v7, 0x500

    if-eq p3, v7, :cond_d

    iget-object v7, p0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    const/16 v8, 0x71

    if-eq v7, v8, :cond_c

    iget-object v7, p0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    const/16 v8, 0x77

    if-eq v7, v8, :cond_c

    iget-object v7, p0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    const/16 v8, 0x65

    if-eq v7, v8, :cond_c

    iget-object v7, p0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    const/16 v8, 0x72

    if-eq v7, v8, :cond_c

    iget-object v7, p0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    const/16 v8, 0x3142

    if-eq v7, v8, :cond_c

    iget-object v7, p0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    const/16 v8, 0x3148

    if-eq v7, v8, :cond_c

    iget-object v7, p0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    const/16 v8, 0x3137

    if-eq v7, v8, :cond_c

    iget-object v7, p0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    const/16 v8, 0x3131

    if-ne v7, v8, :cond_d

    :cond_c
    if-ge v5, p5, :cond_d

    const/4 v5, 0x0

    :cond_d
    const/4 v7, 0x3

    aget-boolean v7, p6, v7

    if-eqz v7, :cond_3

    const/16 v7, 0x500

    if-eq p3, v7, :cond_3

    iget-object v7, p0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    const/16 v8, 0x61

    if-eq v7, v8, :cond_e

    iget-object v7, p0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    const/16 v8, 0x3141

    if-ne v7, v8, :cond_3

    :cond_e
    if-ge v5, p5, :cond_3

    move v5, p5

    goto/16 :goto_1

    :cond_f
    iget-object v7, p0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    const/4 v8, -0x5

    if-ne v7, v8, :cond_4

    const/16 v7, 0x10

    if-gt v5, v7, :cond_4

    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_10
    const/16 v7, 0x500

    if-ne p3, v7, :cond_4

    iget-object v7, p0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    const/16 v8, -0x190

    if-ne v7, v8, :cond_11

    const/16 v7, 0x28

    if-gt v5, v7, :cond_4

    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_11
    iget-object v7, p0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    const/4 v8, -0x5

    if-ne v7, v8, :cond_4

    const/16 v7, 0x28

    if-gt v5, v7, :cond_4

    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_12
    const/16 v7, 0x500

    if-ne p3, v7, :cond_5

    iget-object v7, p0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    const/16 v8, 0x20

    if-ne v7, v8, :cond_5

    const/16 v7, 0x28

    if-gt v5, v7, :cond_5

    const/4 v5, 0x0

    goto/16 :goto_3
.end method

.method private static getDistanceSquareKor(Lcom/ime/framework/view/Keyboard$Key;Lcom/ime/framework/view/Keyboard$Key;IIIII[IZZZZZ)I
    .locals 16

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/ime/framework/view/Keyboard$Key;->x:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/ime/framework/view/Keyboard$Key;->width:I

    add-int v8, v12, v13

    move-object/from16 v0, p0

    iget v7, v0, Lcom/ime/framework/view/Keyboard$Key;->x:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/ime/framework/view/Keyboard$Key;->y:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/ime/framework/view/Keyboard$Key;->y:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/ime/framework/view/Keyboard$Key;->height:I

    add-int v6, v12, v13

    if-eqz p8, :cond_1

    const/4 v12, -0x1

    move/from16 v0, p6

    if-eq v0, v12, :cond_1

    move-object/from16 v0, p1

    iget v11, v0, Lcom/ime/framework/view/Keyboard$Key;->gap:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p9, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v13, 0x0

    aget v4, v12, v13

    if-eqz p12, :cond_8

    if-nez p6, :cond_5

    mul-int/lit8 v12, p4, 0x2

    div-int/lit8 v12, v12, 0x5

    if-ge v7, v12, :cond_2

    mul-int/lit8 v12, v11, 0x6

    div-int/lit8 v2, v12, 0xd

    :goto_0
    if-nez p10, :cond_0

    const/4 v12, 0x3

    move/from16 v0, p6

    if-ne v0, v12, :cond_6

    const/16 v12, 0x20

    if-ne v4, v12, :cond_6

    move-object/from16 v0, p1

    iget v12, v0, Lcom/ime/framework/view/Keyboard$Key;->width:I

    int-to-double v12, v12

    const-wide v14, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v12, v14

    double-to-int v12, v12

    add-int v2, v11, v12

    :cond_0
    :goto_1
    add-int/lit8 v12, v3, -0x1

    sub-int/2addr v9, v12

    sub-int v12, p5, v3

    add-int/2addr v6, v12

    const/4 v12, 0x0

    aget v12, p7, v12

    sub-int/2addr v7, v12

    add-int/lit8 v12, v2, -0x1

    add-int/2addr v8, v12

    const/4 v12, 0x0

    sub-int v13, v11, v2

    aput v13, p7, v12

    :cond_1
    move/from16 v0, p3

    if-le v9, v0, :cond_16

    move/from16 v0, p2

    if-le v7, v0, :cond_14

    sub-int v12, v9, p3

    sub-int v13, v9, p3

    mul-int/2addr v12, v13

    sub-int v13, v7, p2

    sub-int v14, v7, p2

    mul-int/2addr v13, v14

    add-int v5, v12, v13

    :goto_2
    return v5

    :cond_2
    div-int/lit8 v12, p4, 0x2

    if-ge v7, v12, :cond_3

    mul-int/lit8 v12, v11, 0x7

    div-int/lit8 v2, v12, 0xf

    goto :goto_0

    :cond_3
    mul-int/lit8 v12, p4, 0xb

    div-int/lit8 v12, v12, 0x14

    if-ge v7, v12, :cond_4

    mul-int/lit8 v12, v11, 0x7

    div-int/lit8 v2, v12, 0xe

    goto :goto_0

    :cond_4
    mul-int/lit8 v12, v11, 0x7

    div-int/lit8 v2, v12, 0xd

    goto :goto_0

    :cond_5
    div-int/lit8 v2, v11, 0x2

    goto :goto_0

    :cond_6
    const/4 v12, 0x2

    move/from16 v0, p6

    if-ne v0, v12, :cond_7

    const/16 v12, 0x2e

    if-ne v4, v12, :cond_7

    move-object/from16 v0, p0

    iget v12, v0, Lcom/ime/framework/view/Keyboard$Key;->height:I

    int-to-double v12, v12

    const-wide v14, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v12, v14

    double-to-int v12, v12

    neg-int v3, v12

    goto :goto_1

    :cond_7
    const/16 v12, -0x6c

    if-ne v4, v12, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_8
    div-int/lit8 v2, v11, 0x2

    if-nez p10, :cond_0

    const/4 v12, 0x3

    move/from16 v0, p6

    if-ne v0, v12, :cond_9

    const/16 v12, 0x20

    if-ne v4, v12, :cond_9

    move-object/from16 v0, p1

    iget v12, v0, Lcom/ime/framework/view/Keyboard$Key;->width:I

    int-to-double v12, v12

    const-wide v14, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v12, v14

    double-to-int v12, v12

    add-int v2, v11, v12

    goto :goto_1

    :cond_9
    const/4 v12, 0x2

    move/from16 v0, p6

    if-ne v0, v12, :cond_a

    const/16 v12, 0x2e

    if-ne v4, v12, :cond_a

    move-object/from16 v0, p0

    iget v12, v0, Lcom/ime/framework/view/Keyboard$Key;->height:I

    int-to-double v12, v12

    const-wide v14, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v12, v14

    double-to-int v12, v12

    neg-int v3, v12

    goto/16 :goto_1

    :cond_a
    const/16 v12, -0x6c

    if-ne v4, v12, :cond_0

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v13, 0x0

    aget v4, v12, v13

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v13, 0x0

    aget v10, v12, v13

    if-eqz p10, :cond_d

    const/4 v3, 0x1

    const/16 v12, 0xa

    if-ne v4, v12, :cond_c

    if-nez p12, :cond_c

    move v2, v11

    goto/16 :goto_1

    :cond_c
    div-int/lit8 v2, v11, 0x2

    goto/16 :goto_1

    :cond_d
    if-nez p12, :cond_13

    const/16 v12, -0x66

    if-ne v4, v12, :cond_e

    const/16 v12, -0x6c

    if-ne v10, v12, :cond_e

    mul-int/lit8 v12, v11, 0x3

    div-int/lit8 v2, v12, 0x5

    goto/16 :goto_1

    :cond_e
    const/16 v12, -0x66

    if-eq v4, v12, :cond_f

    const/16 v12, -0x6c

    if-ne v4, v12, :cond_10

    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_10
    const/4 v12, 0x3

    move/from16 v0, p6

    if-ne v0, v12, :cond_11

    const/16 v12, 0x20

    if-ne v4, v12, :cond_11

    move-object/from16 v0, p1

    iget v12, v0, Lcom/ime/framework/view/Keyboard$Key;->width:I

    int-to-double v12, v12

    const-wide v14, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v12, v14

    double-to-int v12, v12

    add-int v2, v11, v12

    goto/16 :goto_1

    :cond_11
    const/4 v12, 0x2

    move/from16 v0, p6

    if-ne v0, v12, :cond_12

    const/16 v12, 0x2e

    if-ne v4, v12, :cond_12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/ime/framework/view/Keyboard$Key;->height:I

    int-to-double v12, v12

    const-wide v14, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v12, v14

    double-to-int v12, v12

    neg-int v3, v12

    goto/16 :goto_1

    :cond_12
    div-int/lit8 v2, v11, 0x2

    goto/16 :goto_1

    :cond_13
    div-int/lit8 v2, v11, 0x2

    goto/16 :goto_1

    :cond_14
    move/from16 v0, p2

    if-gt v7, v0, :cond_15

    move/from16 v0, p2

    if-lt v8, v0, :cond_15

    sub-int v12, v9, p3

    sub-int v13, v9, p3

    mul-int v5, v12, v13

    goto/16 :goto_2

    :cond_15
    sub-int v12, v9, p3

    sub-int v13, v9, p3

    mul-int/2addr v12, v13

    sub-int v13, p2, v8

    sub-int v14, p2, v8

    mul-int/2addr v13, v14

    add-int v5, v12, v13

    goto/16 :goto_2

    :cond_16
    move/from16 v0, p3

    if-gt v9, v0, :cond_19

    move/from16 v0, p3

    if-lt v6, v0, :cond_19

    move/from16 v0, p2

    if-le v7, v0, :cond_17

    sub-int v12, v7, p2

    sub-int v13, v7, p2

    mul-int v5, v12, v13

    goto/16 :goto_2

    :cond_17
    move/from16 v0, p2

    if-gt v7, v0, :cond_18

    move/from16 v0, p2

    if-lt v8, v0, :cond_18

    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_18
    sub-int v12, p2, v8

    sub-int v13, p2, v8

    mul-int v5, v12, v13

    goto/16 :goto_2

    :cond_19
    move/from16 v0, p2

    if-le v7, v0, :cond_1a

    sub-int v12, p3, v6

    sub-int v13, p3, v6

    mul-int/2addr v12, v13

    sub-int v13, v7, p2

    sub-int v14, v7, p2

    mul-int/2addr v13, v14

    add-int v5, v12, v13

    goto/16 :goto_2

    :cond_1a
    move/from16 v0, p2

    if-gt v7, v0, :cond_1b

    move/from16 v0, p2

    if-lt v8, v0, :cond_1b

    sub-int v12, p3, v6

    sub-int v13, p3, v6

    mul-int v5, v12, v13

    goto/16 :goto_2

    :cond_1b
    sub-int v12, p3, v6

    sub-int v13, p3, v6

    mul-int/2addr v12, v13

    sub-int v13, p2, v8

    sub-int v14, p2, v8

    mul-int/2addr v13, v14

    add-int v5, v12, v13

    goto/16 :goto_2
.end method

.method public static getFieldFromClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static getFieldValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 1

    if-nez p2, :cond_0

    :goto_0
    return-object p1

    :cond_0
    :try_start_0
    invoke-virtual {p2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getHWKeyboardCountryCode(Lcom/ime/framework/common/Language;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "pt"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "BR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_0
    const-string v3, "es"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "es"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "US"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_1
    const-string v3, "nl"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "nl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "BE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_2
    invoke-virtual {p0}, Lcom/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "fr"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "CA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_3
    const-string v3, "fr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "fr"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "BE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    const-string v3, "de"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "de"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "CH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    const-string v3, "fr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "fr"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "CH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    move-object v0, v2

    :goto_0
    return-object v0

    :cond_7
    invoke-virtual {p0}, Lcom/ime/framework/common/Language;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getHangleShiftedChar(I)I
    .locals 1

    move v0, p0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    const/16 v0, 0x3132

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x3138

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x3143

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x3146

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x3149

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x3152

    goto :goto_0

    :sswitch_6
    const/16 v0, 0x3156

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3131 -> :sswitch_0
        0x3137 -> :sswitch_1
        0x3142 -> :sswitch_2
        0x3145 -> :sswitch_3
        0x3148 -> :sswitch_4
        0x3150 -> :sswitch_5
        0x3154 -> :sswitch_6
    .end sparse-switch
.end method

.method public static getLanguageCodeName(Lcom/ime/framework/common/Language;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string v2, "SamsungIME"

    const-string v3, "getLanguageCodeName - lang == null. return \"\""

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/ime/framework/common/Language;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/ime/framework/common/Language;->getId()I

    move-result v2

    const v3, 0x656e4742

    if-ne v2, v3, :cond_1

    const-string v0, "UK"

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p0}, Lcom/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ime/framework/common/Language;->getId()I

    move-result v2

    const/high16 v3, 0x6b6f0000

    if-ne v2, v3, :cond_3

    const-string v2, "kr"

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/ime/framework/common/Language;->getId()I

    move-result v2

    const/high16 v3, 0x6b6d0000

    if-ne v2, v3, :cond_4

    const-string v2, "kh"

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/ime/framework/common/Language;->getId()I

    move-result v2

    const/high16 v3, 0x746c0000

    if-ne v2, v3, :cond_5

    const-string v2, "fil"

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getListFromStringArray([Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    array-length v5, p0

    if-lez v5, :cond_0

    if-eqz p1, :cond_0

    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static varargs getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static getMonthText(I)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    const/16 v2, -0x8d

    if-gt p0, v2, :cond_0

    const/16 v2, -0x98

    if-lt p0, v2, :cond_0

    add-int/lit16 v2, p0, 0x8d

    neg-int v0, v2

    const/16 v2, 0x1e

    invoke-static {v0, v2}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public static getRepositoryData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;
    .locals 12

    const/4 v6, 0x0

    const/4 v4, 0x0

    if-nez v4, :cond_1

    new-instance v5, Lcom/ime/framework/util/PropertyXmlLoaderManager;

    invoke-direct {v5}, Lcom/ime/framework/util/PropertyXmlLoaderManager;-><init>()V

    invoke-virtual {v5}, Lcom/ime/framework/util/PropertyXmlLoaderManager;->createXmlLoader()Lcom/ime/framework/util/AbstractPropertyXmlLoader;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/ime/framework/util/AbstractPropertyXmlLoader;->getRepositoryXmlParser(Landroid/content/res/Resources;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    :try_start_0
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2

    :goto_1
    const/4 v10, 0x1

    if-eq v2, v10, :cond_0

    const/4 v10, 0x2

    if-ne v2, v10, :cond_2

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v10, "Property"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x0

    const-string v11, "key"

    invoke-interface {v3, v10, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x0

    const-string v11, "value"

    invoke-interface {v3, v10, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const-string v11, "type"

    invoke-interface {v3, v10, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "string"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v6, v9

    :cond_2
    :goto_2
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    goto :goto_1

    :cond_3
    const-string v10, "int"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_2

    :cond_4
    const-string v10, "short"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-static {v9}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v10

    invoke-static {v10}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    goto :goto_2

    :cond_5
    const-string v10, "bool"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_2

    :cond_6
    const-string v10, "float"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static getSystemStatusBarHeight(Landroid/content/Context;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public static getTheMatchedKeyIndex(II[Lcom/ime/framework/view/Keyboard$Key;)I
    .locals 8

    const/4 v5, -0x1

    const/4 v1, 0x0

    :goto_0
    array-length v6, p2

    if-ge v1, v6, :cond_3

    aget-object v6, p2, v1

    iget v2, v6, Lcom/ime/framework/view/Keyboard$Key;->x:I

    aget-object v6, p2, v1

    iget v4, v6, Lcom/ime/framework/view/Keyboard$Key;->y:I

    aget-object v6, p2, v1

    iget v6, v6, Lcom/ime/framework/view/Keyboard$Key;->x:I

    aget-object v7, p2, v1

    iget v7, v7, Lcom/ime/framework/view/Keyboard$Key;->width:I

    add-int v3, v6, v7

    aget-object v6, p2, v1

    iget v6, v6, Lcom/ime/framework/view/Keyboard$Key;->y:I

    aget-object v7, p2, v1

    iget v7, v7, Lcom/ime/framework/view/Keyboard$Key;->height:I

    add-int v0, v6, v7

    if-ge p1, v4, :cond_1

    move v1, v5

    :cond_0
    :goto_1
    return v1

    :cond_1
    if-lt p0, v2, :cond_2

    if-gt p0, v3, :cond_2

    if-lt p1, v4, :cond_2

    if-le p1, v0, :cond_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v5

    goto :goto_1
.end method

.method public static getTheMatchedKeyIndexForV15(II[Lcom/ime/framework/view/Keyboard$Key;Z)I
    .locals 20

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v8

    if-eqz p3, :cond_1

    sget v10, Lcom/ime/framework/util/Utils;->RATIO_OF_SWIFTKEY_ERROR_CORRECTION_HEIGHT_LAND:I

    sget v11, Lcom/ime/framework/util/Utils;->RATIO_OF_SWIFTKEY_ERROR_CORRECTION:I

    :goto_0
    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    :goto_1
    move-object/from16 v0, p2

    array-length v14, v0

    if-ge v5, v14, :cond_f

    aget-object v14, p2, v5

    iget v14, v14, Lcom/ime/framework/view/Keyboard$Key;->width:I

    mul-int/2addr v14, v11

    div-int/lit8 v4, v14, 0x64

    aget-object v14, p2, v5

    iget v14, v14, Lcom/ime/framework/view/Keyboard$Key;->height:I

    mul-int/2addr v14, v10

    div-int/lit8 v3, v14, 0x64

    aget-object v14, p2, v5

    iget v14, v14, Lcom/ime/framework/view/Keyboard$Key;->x:I

    add-int v6, v14, v4

    aget-object v14, p2, v5

    iget v13, v14, Lcom/ime/framework/view/Keyboard$Key;->y:I

    aget-object v14, p2, v5

    iget v14, v14, Lcom/ime/framework/view/Keyboard$Key;->x:I

    aget-object v15, p2, v5

    iget v15, v15, Lcom/ime/framework/view/Keyboard$Key;->width:I

    add-int/2addr v14, v15

    sub-int v12, v14, v4

    aget-object v14, p2, v5

    iget v14, v14, Lcom/ime/framework/view/Keyboard$Key;->y:I

    aget-object v15, p2, v5

    iget v15, v15, Lcom/ime/framework/view/Keyboard$Key;->height:I

    add-int/2addr v14, v15

    add-int v2, v14, v3

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v14

    if-nez v14, :cond_a

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v14

    if-nez v14, :cond_a

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_a

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboard()Z

    move-result v14

    if-nez v14, :cond_a

    aget-object v14, p2, v5

    iget v14, v14, Lcom/ime/framework/view/Keyboard$Key;->y:I

    if-ge v9, v14, :cond_5

    add-int/lit8 v7, v7, 0x1

    const/4 v14, 0x3

    if-ne v7, v14, :cond_3

    if-nez p3, :cond_2

    const/4 v6, 0x0

    :goto_2
    int-to-double v14, v3

    const-wide v16, 0x4003333333333333L    # 2.4

    mul-double v14, v14, v16

    double-to-int v14, v14

    add-int/2addr v2, v14

    aget-object v14, p2, v5

    iget v14, v14, Lcom/ime/framework/view/Keyboard$Key;->y:I

    sub-int v13, v14, v3

    :cond_0
    :goto_3
    aget-object v14, p2, v5

    iget v9, v14, Lcom/ime/framework/view/Keyboard$Key;->y:I

    move/from16 v0, p0

    if-lt v0, v6, :cond_e

    move/from16 v0, p0

    if-gt v0, v12, :cond_e

    move/from16 v0, p1

    if-lt v0, v13, :cond_e

    move/from16 v0, p1

    if-gt v0, v2, :cond_e

    :goto_4
    return v5

    :cond_1
    sget v10, Lcom/ime/framework/util/Utils;->RATIO_OF_SWIFTKEY_ERROR_CORRECTION_HEIGHT_PORT:I

    sget v11, Lcom/ime/framework/util/Utils;->RATIO_OF_SWIFTKEY_ERROR_CORRECTION:I

    goto/16 :goto_0

    :cond_2
    aget-object v14, p2, v5

    iget v14, v14, Lcom/ime/framework/view/Keyboard$Key;->x:I

    int-to-double v0, v4

    move-wide/from16 v16, v0

    const-wide v18, 0x4012cccccccccccdL    # 4.7

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v15, v0

    sub-int v6, v14, v15

    goto :goto_2

    :cond_3
    const/4 v14, 0x4

    if-ne v7, v14, :cond_0

    aget-object v14, p2, v5

    iget-object v14, v14, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    const/16 v15, -0x190

    if-ne v14, v15, :cond_0

    if-nez p3, :cond_4

    const/4 v6, 0x0

    goto :goto_3

    :cond_4
    int-to-double v14, v4

    const-wide v16, 0x400e666666666666L    # 3.8

    mul-double v14, v14, v16

    double-to-int v14, v14

    sub-int/2addr v6, v14

    goto :goto_3

    :cond_5
    const/4 v14, 0x3

    if-ne v7, v14, :cond_7

    move-object/from16 v0, p2

    array-length v14, v0

    add-int/lit8 v14, v14, -0x1

    if-ge v5, v14, :cond_0

    aget-object v14, p2, v5

    iget v14, v14, Lcom/ime/framework/view/Keyboard$Key;->y:I

    add-int/lit8 v15, v5, 0x1

    aget-object v15, p2, v15

    iget v15, v15, Lcom/ime/framework/view/Keyboard$Key;->y:I

    if-ge v14, v15, :cond_0

    if-nez p3, :cond_6

    aget-object v14, p2, v5

    iget v14, v14, Lcom/ime/framework/view/Keyboard$Key;->x:I

    aget-object v15, p2, v5

    iget v15, v15, Lcom/ime/framework/view/Keyboard$Key;->width:I

    add-int/2addr v14, v15

    mul-int/lit8 v15, v4, 0x8

    add-int v12, v14, v15

    :goto_5
    int-to-double v14, v3

    const-wide v16, 0x4003333333333333L    # 2.4

    mul-double v14, v14, v16

    double-to-int v14, v14

    add-int/2addr v2, v14

    aget-object v14, p2, v5

    iget v14, v14, Lcom/ime/framework/view/Keyboard$Key;->y:I

    sub-int v13, v14, v3

    goto/16 :goto_3

    :cond_6
    aget-object v14, p2, v5

    iget v14, v14, Lcom/ime/framework/view/Keyboard$Key;->x:I

    aget-object v15, p2, v5

    iget v15, v15, Lcom/ime/framework/view/Keyboard$Key;->width:I

    add-int/2addr v14, v15

    int-to-double v0, v4

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4012000000000000L    # 4.5

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v15, v0

    add-int/2addr v14, v15

    add-int/lit8 v12, v14, 0x1

    goto :goto_5

    :cond_7
    const/4 v14, 0x4

    if-ne v7, v14, :cond_0

    aget-object v14, p2, v5

    iget-object v14, v14, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    const/16 v15, -0x190

    if-eq v14, v15, :cond_0

    add-int/2addr v2, v3

    move-object/from16 v0, p2

    array-length v14, v0

    add-int/lit8 v14, v14, -0x1

    if-ge v5, v14, :cond_8

    add-int/lit8 v14, v5, 0x1

    aget-object v14, p2, v14

    iget-object v14, v14, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    const/4 v15, -0x5

    if-ne v14, v15, :cond_8

    aget-object v14, p2, v5

    iget v14, v14, Lcom/ime/framework/view/Keyboard$Key;->x:I

    aget-object v15, p2, v5

    iget v15, v15, Lcom/ime/framework/view/Keyboard$Key;->width:I

    add-int/2addr v14, v15

    add-int v12, v14, v4

    goto/16 :goto_3

    :cond_8
    aget-object v14, p2, v5

    iget-object v14, v14, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    const/4 v15, -0x5

    if-ne v14, v15, :cond_0

    if-nez p3, :cond_9

    aget-object v14, p2, v5

    iget v14, v14, Lcom/ime/framework/view/Keyboard$Key;->x:I

    aget-object v15, p2, v5

    iget v15, v15, Lcom/ime/framework/view/Keyboard$Key;->width:I

    add-int/2addr v14, v15

    mul-int/lit8 v15, v4, 0x8

    add-int v12, v14, v15

    goto/16 :goto_3

    :cond_9
    aget-object v14, p2, v5

    iget v14, v14, Lcom/ime/framework/view/Keyboard$Key;->x:I

    aget-object v15, p2, v5

    iget v15, v15, Lcom/ime/framework/view/Keyboard$Key;->width:I

    add-int/2addr v14, v15

    int-to-double v0, v4

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4004000000000000L    # 2.5

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v15, v0

    add-int v12, v14, v15

    goto/16 :goto_3

    :cond_a
    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v14

    if-nez v14, :cond_c

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v14

    if-nez v14, :cond_c

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_c

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboard()Z

    move-result v14

    if-nez v14, :cond_c

    aget-object v14, p2, v5

    iget v14, v14, Lcom/ime/framework/view/Keyboard$Key;->y:I

    if-ge v9, v14, :cond_b

    add-int/lit8 v7, v7, 0x1

    :cond_b
    const/4 v14, 0x1

    if-ne v7, v14, :cond_0

    const/4 v14, 0x1

    if-ne v5, v14, :cond_0

    aget-object v14, p2, v5

    iget-object v14, v14, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    const/16 v15, 0x2e

    if-ne v14, v15, :cond_0

    if-nez p3, :cond_0

    const/4 v6, 0x0

    const/4 v13, 0x0

    add-int/2addr v12, v4

    goto/16 :goto_3

    :cond_c
    aget-object v14, p2, v5

    iget v14, v14, Lcom/ime/framework/view/Keyboard$Key;->y:I

    if-ge v9, v14, :cond_d

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    :cond_d
    const/4 v14, 0x4

    if-ne v7, v14, :cond_0

    aget-object v14, p2, v5

    iget-object v14, v14, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    const/16 v15, -0x190

    if-eq v14, v15, :cond_0

    add-int/2addr v2, v3

    move-object/from16 v0, p2

    array-length v14, v0

    add-int/lit8 v14, v14, -0x1

    if-ge v5, v14, :cond_0

    add-int/lit8 v14, v5, 0x1

    aget-object v14, p2, v14

    iget-object v14, v14, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    const/4 v15, -0x5

    if-ne v14, v15, :cond_0

    aget-object v14, p2, v5

    iget v14, v14, Lcom/ime/framework/view/Keyboard$Key;->x:I

    aget-object v15, p2, v5

    iget v15, v15, Lcom/ime/framework/view/Keyboard$Key;->width:I

    add-int/2addr v14, v15

    add-int v12, v14, v4

    goto/16 :goto_3

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_f
    const/4 v5, -0x1

    goto/16 :goto_4
.end method

.method public static getTheNearestKeyIndex(IILcom/ime/framework/view/Keyboard;IZ)I
    .locals 26

    const/16 v24, -0x1

    const v22, 0x7fffffff

    const/4 v9, -0x1

    const/4 v8, 0x0

    if-lez p3, :cond_1

    move/from16 v20, p3

    :goto_0
    if-nez p4, :cond_2

    if-ltz p0, :cond_0

    if-ltz p1, :cond_0

    move/from16 v0, p0

    move/from16 v1, v20

    if-gt v0, v1, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/ime/framework/view/Keyboard;->getHeight()I

    move-result v4

    move/from16 v0, p1

    if-le v0, v4, :cond_2

    :cond_0
    move/from16 v25, v24

    :goto_1
    return v25

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/ime/framework/view/Keyboard;->getMinWidth()I

    move-result v20

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v19

    if-nez v19, :cond_3

    move/from16 v25, v24

    goto :goto_1

    :cond_3
    const/16 v21, 0x0

    const/16 v16, 0x0

    :try_start_0
    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v21

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->isMiniKeyboardView()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v15

    if-nez v15, :cond_5

    const/4 v13, 0x0

    :goto_2
    const/4 v4, 0x0

    new-array v0, v4, [Lcom/ime/framework/view/Keyboard$Key;

    move-object/from16 v23, v0

    invoke-virtual/range {p2 .. p2}, Lcom/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Lcom/ime/framework/view/Keyboard$Key;

    const/4 v14, 0x0

    :goto_3
    move-object/from16 v0, v23

    array-length v4, v0

    if-ge v14, v4, :cond_e

    const/4 v10, 0x0

    aget-object v11, v23, v14

    const/4 v4, 0x2

    move/from16 v0, v21

    if-eq v0, v4, :cond_6

    const/4 v4, 0x3

    if-eq v13, v4, :cond_6

    if-nez v16, :cond_6

    iget-object v4, v11, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    const/16 v5, -0x101

    if-ne v4, v5, :cond_6

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v4

    const v5, 0x7a68434e

    if-ne v4, v5, :cond_4

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboard()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_4
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :catch_0
    move-exception v12

    move/from16 v25, v24

    goto :goto_1

    :cond_5
    iget v4, v15, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v13, v4, 0xf

    goto :goto_2

    :cond_6
    iget v2, v11, Lcom/ime/framework/view/Keyboard$Key;->x:I

    iget v3, v11, Lcom/ime/framework/view/Keyboard$Key;->y:I

    iget v0, v11, Lcom/ime/framework/view/Keyboard$Key;->width:I

    move/from16 v18, v0

    iget v0, v11, Lcom/ime/framework/view/Keyboard$Key;->height:I

    move/from16 v17, v0

    if-nez p4, :cond_a

    iget v4, v11, Lcom/ime/framework/view/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_7

    add-int v17, v17, v3

    const/4 v3, 0x0

    :cond_7
    const/4 v4, -0x1

    if-eq v9, v4, :cond_8

    if-eqz v8, :cond_9

    iget v4, v8, Lcom/ime/framework/view/Keyboard$Key;->y:I

    iget v5, v11, Lcom/ime/framework/view/Keyboard$Key;->y:I

    if-ge v4, v5, :cond_9

    :cond_8
    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v4

    move-object/from16 v0, v23

    invoke-static {v14, v0, v4}, Lcom/ime/framework/util/Utils;->getVerticalGap(I[Lcom/ime/framework/view/Keyboard$Key;Z)I

    move-result v9

    const/4 v4, -0x1

    if-ne v9, v4, :cond_9

    invoke-virtual/range {p2 .. p2}, Lcom/ime/framework/view/Keyboard;->getHeight()I

    move-result v4

    iget v5, v11, Lcom/ime/framework/view/Keyboard$Key;->y:I

    sub-int/2addr v4, v5

    iget v5, v11, Lcom/ime/framework/view/Keyboard$Key;->height:I

    sub-int v9, v4, v5

    :cond_9
    add-int v17, v17, v9

    :cond_a
    if-nez p4, :cond_b

    move/from16 v0, p1

    if-lt v0, v3, :cond_c

    add-int v4, v3, v17

    move/from16 v0, p1

    if-gt v0, v4, :cond_c

    :cond_b
    add-int v4, v2, v18

    add-int v5, v3, v17

    move/from16 v6, p0

    move/from16 v7, p1

    invoke-static/range {v2 .. v7}, Lcom/ime/framework/util/Utils;->getDistanceSquare(IIIIII)I

    move-result v10

    move/from16 v0, v22

    if-ge v10, v0, :cond_d

    move/from16 v22, v10

    move/from16 v24, v14

    :cond_c
    :goto_5
    move-object v8, v11

    goto :goto_4

    :cond_d
    if-nez p4, :cond_c

    move/from16 v0, v22

    if-ne v10, v0, :cond_c

    invoke-virtual/range {p2 .. p2}, Lcom/ime/framework/view/Keyboard;->getMinWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    move/from16 v0, p0

    if-ge v0, v4, :cond_c

    move/from16 v22, v10

    move/from16 v24, v14

    goto :goto_5

    :cond_e
    move/from16 v25, v24

    goto/16 :goto_1
.end method

.method public static getTheNearestKeyIndexHD(II[Lcom/ime/framework/view/Keyboard$Key;III[Z)I
    .locals 11

    const/4 v10, -0x1

    const v9, 0x7fffffff

    const/4 v8, 0x0

    :goto_0
    array-length v1, p2

    if-ge v8, v1, :cond_1

    const/4 v7, 0x0

    aget-object v0, p2, v8

    move v1, p0

    move v2, p1

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/ime/framework/util/Utils;->getDistanceSquareHD(Lcom/ime/framework/view/Keyboard$Key;IIIII[Z)I

    move-result v7

    if-ge v7, v9, :cond_0

    move v9, v7

    move v10, v8

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    return v10
.end method

.method public static getTheNearestKeyIndexKor(IILcom/ime/framework/view/DefaultKeyboard;IZZ)I
    .locals 24

    const/16 v22, -0x1

    const v21, 0x7fffffff

    const/16 v18, 0x0

    const/4 v8, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v9, v4, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v9, v4

    invoke-virtual/range {p2 .. p2}, Lcom/ime/framework/view/DefaultKeyboard;->getKeys()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/ime/framework/view/Keyboard$Key;

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Lcom/ime/framework/view/Keyboard$Key;

    invoke-virtual/range {p2 .. p2}, Lcom/ime/framework/view/DefaultKeyboard;->getMinWidth()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/ime/framework/view/DefaultKeyboard;->getVerticalGap()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Lcom/ime/framework/view/DefaultKeyboard;->isTabletModel()Z

    move-result v11

    invoke-virtual/range {p2 .. p2}, Lcom/ime/framework/view/DefaultKeyboard;->isQwerty()Z

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lcom/ime/framework/view/DefaultKeyboard;->isNormalEditorType()Z

    move-result v13

    const/4 v10, 0x1

    if-lez p3, :cond_1

    move/from16 v20, p3

    :goto_0
    if-nez p4, :cond_2

    if-ltz p0, :cond_0

    if-ltz p1, :cond_0

    move/from16 v0, p0

    move/from16 v1, v20

    if-gt v0, v1, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/ime/framework/view/DefaultKeyboard;->getHeight()I

    move-result v4

    move/from16 v0, p1

    if-le v0, v4, :cond_2

    :cond_0
    move/from16 v23, v22

    :goto_1
    return v23

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/ime/framework/view/DefaultKeyboard;->getMinWidth()I

    move-result v20

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    const/4 v10, 0x0

    :cond_3
    const/16 v16, 0x0

    :goto_2
    move-object/from16 v0, v19

    array-length v4, v0

    move/from16 v0, v16

    if-ge v0, v4, :cond_7

    const/4 v15, 0x0

    aget-object v2, v19, v16

    add-int/lit8 v4, v16, 0x1

    move-object/from16 v0, v19

    array-length v5, v0

    if-ge v4, v5, :cond_6

    add-int/lit8 v4, v16, 0x1

    aget-object v3, v19, v4

    :goto_3
    iget v4, v2, Lcom/ime/framework/view/Keyboard$Key;->y:I

    move/from16 v0, v18

    if-ge v0, v4, :cond_4

    add-int/lit8 v8, v8, 0x1

    iget v0, v2, Lcom/ime/framework/view/Keyboard$Key;->y:I

    move/from16 v18, v0

    const/4 v4, 0x0

    iget v5, v2, Lcom/ime/framework/view/Keyboard$Key;->gap:I

    aput v5, v9, v4

    :cond_4
    move/from16 v4, p0

    move/from16 v5, p1

    move/from16 v14, p5

    invoke-static/range {v2 .. v14}, Lcom/ime/framework/util/Utils;->getDistanceSquareKor(Lcom/ime/framework/view/Keyboard$Key;Lcom/ime/framework/view/Keyboard$Key;IIIII[IZZZZZ)I

    move-result v15

    move/from16 v0, v21

    if-ge v15, v0, :cond_5

    iget-object v4, v2, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    const/16 v5, -0x101

    if-eq v4, v5, :cond_5

    move/from16 v21, v15

    move/from16 v22, v16

    :cond_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :cond_6
    move-object v3, v2

    goto :goto_3

    :cond_7
    move/from16 v23, v22

    goto :goto_1
.end method

.method public static getUsedTime()Ljava/lang/String;
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v4, Lcom/ime/framework/util/Utils;->sec:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "total : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-wide v4, Lcom/ime/framework/util/Utils;->sec:J

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ", period : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-wide v4, Lcom/ime/framework/util/Utils;->period_sec:J

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-wide v4, Lcom/ime/framework/util/Utils;->totalSec:J

    sget-wide v6, Lcom/ime/framework/util/Utils;->period_sec:J

    sub-long v6, v0, v6

    add-long/2addr v4, v6

    sput-wide v4, Lcom/ime/framework/util/Utils;->totalSec:J

    sput-wide v0, Lcom/ime/framework/util/Utils;->period_sec:J

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    const-string v3, "0"

    goto :goto_0
.end method

.method public static getValidCMSymbol(II)I
    .locals 1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return p1

    :sswitch_0
    invoke-static {p0}, Lcom/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x60c

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/ime/framework/util/Utils;->isChineseLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0xff0c

    goto :goto_0

    :cond_1
    const/16 p1, 0x2c

    goto :goto_0

    :sswitch_1
    invoke-static {p0}, Lcom/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p1, 0x61f

    goto :goto_0

    :cond_2
    const/high16 v0, 0x656c0000

    if-ne p0, v0, :cond_3

    const/16 p1, 0x3b

    goto :goto_0

    :cond_3
    const/16 p1, 0x3f

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_1
        0x3f -> :sswitch_1
        0x60c -> :sswitch_0
        0x61f -> :sswitch_1
        0xff0c -> :sswitch_0
    .end sparse-switch
.end method

.method public static getVerticalGap(I[Lcom/ime/framework/view/Keyboard$Key;Z)I
    .locals 5

    const/4 v4, 0x0

    const/4 v1, -0x1

    add-int/lit8 v0, p0, 0x1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    if-nez p2, :cond_1

    aget-object v2, p1, v0

    iget-object v2, v2, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    aget v2, v2, v4

    const/16 v3, -0xff

    if-eq v2, v3, :cond_0

    aget-object v2, p1, v0

    iget-object v2, v2, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    aget v2, v2, v4

    const/16 v3, -0x100

    if-ne v2, v3, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget-object v2, p1, p0

    iget v2, v2, Lcom/ime/framework/view/Keyboard$Key;->y:I

    aget-object v3, p1, v0

    iget v3, v3, Lcom/ime/framework/view/Keyboard$Key;->y:I

    if-ge v2, v3, :cond_0

    aget-object v2, p1, v0

    iget v2, v2, Lcom/ime/framework/view/Keyboard$Key;->y:I

    aget-object v3, p1, p0

    iget v3, v3, Lcom/ime/framework/view/Keyboard$Key;->y:I

    sub-int/2addr v2, v3

    aget-object v3, p1, p0

    iget v3, v3, Lcom/ime/framework/view/Keyboard$Key;->height:I

    sub-int v1, v2, v3

    :cond_2
    return v1
.end method

.method public static initTime()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    sget-wide v0, Lcom/ime/framework/util/Utils;->sec:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    sget v0, Lcom/ime/framework/util/Utils;->totalCnt:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/ime/framework/util/Utils;->totalCnt:I

    sget-wide v0, Lcom/ime/framework/util/Utils;->totalSec:J

    long-to-int v0, v0

    sget v1, Lcom/ime/framework/util/Utils;->totalCnt:I

    div-int/2addr v0, v1

    sput v0, Lcom/ime/framework/util/Utils;->totalAvg:I

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/ime/framework/util/Utils;->sec:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/ime/framework/util/Utils;->period_sec:J

    sget-boolean v0, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "SamsungIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<Utils> initTime ====(the average of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/ime/framework/util/Utils;->totalCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " strokes : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/ime/framework/util/Utils;->totalAvg:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )============================"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget v0, Lcom/ime/framework/util/Utils;->totalCnt:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_2

    sput v3, Lcom/ime/framework/util/Utils;->totalCnt:I

    sput-wide v4, Lcom/ime/framework/util/Utils;->totalSec:J

    sput v3, Lcom/ime/framework/util/Utils;->totalAvg:I

    sget-boolean v0, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "SamsungIME"

    const-string v1, "<Utils> (totalCnt > 1000)!! initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public static varargs invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    if-nez p2, :cond_0

    :goto_0
    return-object p1

    :cond_0
    :try_start_0
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SamsungKeypad"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in invoke: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isArabicLanguage(I)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x61720000 -> :sswitch_0
        0x66610000 -> :sswitch_0
        0x75720000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isBumpButton(I)Z
    .locals 14

    const/4 v13, 0x2

    const/4 v7, 0x0

    const/16 v12, 0x6a

    const/16 v11, 0x66

    const/4 v8, 0x1

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v5

    const-string v9, "INPUT_LANGUAGE"

    const/high16 v10, 0x656e0000

    invoke-interface {v5, v9, v10}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v4

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v9

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v1

    if-eqz v4, :cond_2

    const/4 v9, 0x7

    if-ne v4, v9, :cond_0

    if-ne v1, v13, :cond_2

    :cond_0
    const/16 v9, 0x8

    if-eq v4, v9, :cond_2

    :cond_1
    :goto_0
    return v7

    :cond_2
    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-interface {v3, v2}, Lcom/ime/framework/common/InputManager;->isLatinLanguageID(I)Z

    move-result v9

    if-eqz v9, :cond_4

    const/high16 v9, 0x74720000

    if-eq v2, v9, :cond_4

    if-eq p0, v11, :cond_3

    if-ne p0, v12, :cond_1

    :cond_3
    move v7, v8

    goto :goto_0

    :cond_4
    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v9

    if-eqz v9, :cond_1c

    sparse-switch v2, :sswitch_data_0

    if-eq p0, v11, :cond_5

    if-ne p0, v12, :cond_1

    :cond_5
    move v7, v8

    goto :goto_0

    :sswitch_0
    const/16 v9, 0x430

    if-eq p0, v9, :cond_6

    const/16 v9, 0x43e

    if-ne p0, v9, :cond_1

    :cond_6
    move v7, v8

    goto :goto_0

    :sswitch_1
    const-string v9, "SETTINGS_BULGARIAN_KEYBOARD_TYPE"

    invoke-interface {v5, v9, v7}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_8

    const/16 v9, 0x43e

    if-eq p0, v9, :cond_7

    const/16 v9, 0x442

    if-ne p0, v9, :cond_8

    :cond_7
    move v7, v8

    goto :goto_0

    :cond_8
    if-ne v0, v8, :cond_1

    const/16 v9, 0x444

    if-eq p0, v9, :cond_9

    const/16 v9, 0x439

    if-ne p0, v9, :cond_1

    :cond_9
    move v7, v8

    goto :goto_0

    :sswitch_2
    const/16 v9, 0x10e4

    if-eq p0, v9, :cond_a

    const/16 v9, 0x10ef

    if-ne p0, v9, :cond_1

    :cond_a
    move v7, v8

    goto :goto_0

    :sswitch_3
    const/16 v9, 0x3c6

    if-eq p0, v9, :cond_b

    const/16 v9, 0x3be

    if-ne p0, v9, :cond_1

    :cond_b
    move v7, v8

    goto :goto_0

    :sswitch_4
    const/16 v9, 0x444

    if-eq p0, v9, :cond_c

    const/16 v9, 0x458

    if-ne p0, v9, :cond_1

    :cond_c
    move v7, v8

    goto :goto_0

    :sswitch_5
    const/16 v9, 0x586

    if-eq p0, v9, :cond_d

    const/16 v9, 0x575

    if-ne p0, v9, :cond_1

    :cond_d
    move v7, v8

    goto :goto_0

    :sswitch_6
    const/16 v9, 0x628

    if-eq p0, v9, :cond_e

    const/16 v9, 0x62a

    if-ne p0, v9, :cond_1

    :cond_e
    move v7, v8

    goto/16 :goto_0

    :sswitch_7
    const/16 v9, 0x641

    if-eq p0, v9, :cond_f

    const/16 v9, 0x62c

    if-ne p0, v9, :cond_1

    :cond_f
    move v7, v8

    goto/16 :goto_0

    :sswitch_8
    const/16 v9, 0x5db

    if-eq p0, v9, :cond_10

    const/16 v9, 0x5d7

    if-ne p0, v9, :cond_1

    :cond_10
    move v7, v8

    goto/16 :goto_0

    :sswitch_9
    const/16 v9, 0x3139

    if-eq p0, v9, :cond_11

    const/16 v9, 0x3153

    if-ne p0, v9, :cond_1

    :cond_11
    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_12

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v9

    if-nez v9, :cond_1

    :cond_12
    move v7, v8

    goto/16 :goto_0

    :sswitch_a
    const/16 v9, 0xe14

    if-eq p0, v9, :cond_13

    const/16 v9, 0xe48

    if-ne p0, v9, :cond_1

    :cond_13
    move v7, v8

    goto/16 :goto_0

    :sswitch_b
    const/16 v9, 0x46

    if-eq p0, v9, :cond_14

    const/16 v9, 0x4a

    if-ne p0, v9, :cond_1

    :cond_14
    move v7, v8

    goto/16 :goto_0

    :sswitch_c
    const/16 v9, 0x3111

    if-eq p0, v9, :cond_15

    const/16 v9, 0x3128

    if-ne p0, v9, :cond_1

    :cond_15
    move v7, v8

    goto/16 :goto_0

    :sswitch_d
    const-string v9, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    invoke-interface {v5, v9, v7}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v13, :cond_17

    const/16 v9, 0x61

    if-eq p0, v9, :cond_16

    const/16 v9, 0x6b

    if-ne p0, v9, :cond_1

    :cond_16
    move v7, v8

    goto/16 :goto_0

    :cond_17
    if-eq p0, v11, :cond_18

    if-ne p0, v12, :cond_1

    :cond_18
    move v7, v8

    goto/16 :goto_0

    :sswitch_e
    const/16 v9, 0x4e9

    if-eq p0, v9, :cond_19

    const/16 v9, 0x440

    if-ne p0, v9, :cond_1

    :cond_19
    move v7, v8

    goto/16 :goto_0

    :sswitch_f
    const/16 v9, 0x103a

    if-eq p0, v9, :cond_1a

    const/16 v9, 0x1036

    if-eq p0, v9, :cond_1a

    const/16 v9, 0x104c

    if-eq p0, v9, :cond_1a

    const/16 v9, 0x103c

    if-ne p0, v9, :cond_1

    :cond_1a
    move v7, v8

    goto/16 :goto_0

    :sswitch_10
    const/16 v9, 0x1039

    if-eq p0, v9, :cond_1b

    const/16 v9, 0x103b

    if-eq p0, v9, :cond_1b

    const/16 v9, 0x1064

    if-eq p0, v9, :cond_1b

    const/16 v9, 0x1032

    if-ne p0, v9, :cond_1

    :cond_1b
    move v7, v8

    goto/16 :goto_0

    :cond_1c
    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isDynamicKDB()Z

    move-result v9

    if-eqz v9, :cond_1e

    const/high16 v9, 0x6b6f0000

    if-ne v2, v9, :cond_1

    const/16 v9, 0x1105

    if-eq p0, v9, :cond_1d

    const/16 v9, 0x1165

    if-ne p0, v9, :cond_1

    :cond_1d
    move v7, v8

    goto/16 :goto_0

    :cond_1e
    sparse-switch v2, :sswitch_data_1

    if-eq p0, v11, :cond_1f

    if-ne p0, v12, :cond_1

    :cond_1f
    move v7, v8

    goto/16 :goto_0

    :sswitch_11
    const/16 v9, 0x68

    if-eq p0, v9, :cond_20

    const/16 v9, 0x6c

    if-ne p0, v9, :cond_1

    :cond_20
    move v7, v8

    goto/16 :goto_0

    :sswitch_12
    const/16 v9, 0x67

    if-eq p0, v9, :cond_21

    const/16 v9, 0x6b

    if-ne p0, v9, :cond_1

    :cond_21
    move v7, v8

    goto/16 :goto_0

    :sswitch_13
    if-eq p0, v11, :cond_22

    if-ne p0, v12, :cond_1

    :cond_22
    move v7, v8

    goto/16 :goto_0

    :sswitch_14
    if-eq p0, v11, :cond_23

    if-ne p0, v12, :cond_1

    :cond_23
    move v7, v8

    goto/16 :goto_0

    :sswitch_15
    const/16 v9, 0x68

    if-eq p0, v9, :cond_24

    const/16 v9, 0x6c

    if-ne p0, v9, :cond_1

    :cond_24
    move v7, v8

    goto/16 :goto_0

    :sswitch_16
    const/16 v9, 0x6d

    if-eq p0, v9, :cond_25

    const/16 v9, 0x575

    if-ne p0, v9, :cond_1

    :cond_25
    move v7, v8

    goto/16 :goto_0

    :sswitch_17
    const/16 v9, 0x68

    if-eq p0, v9, :cond_26

    const/16 v9, 0x6c

    if-ne p0, v9, :cond_1

    :cond_26
    move v7, v8

    goto/16 :goto_0

    :sswitch_18
    if-eq p0, v11, :cond_27

    if-ne p0, v12, :cond_1

    :cond_27
    move v7, v8

    goto/16 :goto_0

    :sswitch_19
    const/16 v9, 0x73

    if-eq p0, v9, :cond_28

    const/16 v9, 0x67

    if-ne p0, v9, :cond_1

    :cond_28
    move v7, v8

    goto/16 :goto_0

    :sswitch_1a
    const/16 v9, 0x3139

    if-eq p0, v9, :cond_29

    const/16 v9, 0x3153

    if-ne p0, v9, :cond_1

    :cond_29
    move v7, v8

    goto/16 :goto_0

    :sswitch_1b
    if-eq p0, v11, :cond_2a

    if-ne p0, v12, :cond_1

    :cond_2a
    move v7, v8

    goto/16 :goto_0

    :sswitch_1c
    const/16 v9, 0x46

    if-eq p0, v9, :cond_2b

    const/16 v9, 0x4a

    if-ne p0, v9, :cond_1

    :cond_2b
    move v7, v8

    goto/16 :goto_0

    :sswitch_1d
    const/16 v9, 0x3111

    if-eq p0, v9, :cond_2c

    const/16 v9, 0x3128

    if-ne p0, v9, :cond_1

    :cond_2c
    move v7, v8

    goto/16 :goto_0

    :sswitch_1e
    const-string v9, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    invoke-interface {v5, v9, v7}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v13, :cond_2e

    const/16 v9, 0x61

    if-eq p0, v9, :cond_2d

    const/16 v9, 0x6b

    if-ne p0, v9, :cond_1

    :cond_2d
    move v7, v8

    goto/16 :goto_0

    :cond_2e
    if-eq p0, v11, :cond_2f

    if-ne p0, v12, :cond_1

    :cond_2f
    move v7, v8

    goto/16 :goto_0

    :sswitch_1f
    const/16 v9, 0x4e9

    if-eq p0, v9, :cond_30

    const/16 v9, 0x440

    if-ne p0, v9, :cond_1

    :cond_30
    move v7, v8

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x61720000 -> :sswitch_6
        0x62670000 -> :sswitch_1
        0x656c0000 -> :sswitch_3
        0x66610000 -> :sswitch_6
        0x68790000 -> :sswitch_5
        0x69770000 -> :sswitch_8
        0x6b610000 -> :sswitch_2
        0x6b6b0000 -> :sswitch_0
        0x6b6f0000 -> :sswitch_9
        0x6b790000 -> :sswitch_0
        0x6d6b0000 -> :sswitch_4
        0x6d6e0000 -> :sswitch_e
        0x6d794d4d -> :sswitch_f
        0x72750000 -> :sswitch_0
        0x74670000 -> :sswitch_0
        0x74680000 -> :sswitch_a
        0x74720000 -> :sswitch_d
        0x756b0000 -> :sswitch_0
        0x75720000 -> :sswitch_7
        0x7a314d4d -> :sswitch_10
        0x7a68484b -> :sswitch_b
        0x7a685457 -> :sswitch_c
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x61720000 -> :sswitch_17
        0x62670000 -> :sswitch_12
        0x656c0000 -> :sswitch_14
        0x66610000 -> :sswitch_17
        0x68790000 -> :sswitch_16
        0x69770000 -> :sswitch_19
        0x6b610000 -> :sswitch_13
        0x6b6b0000 -> :sswitch_11
        0x6b6f0000 -> :sswitch_1a
        0x6b790000 -> :sswitch_11
        0x6d6b0000 -> :sswitch_15
        0x6d6e0000 -> :sswitch_1f
        0x72750000 -> :sswitch_11
        0x74670000 -> :sswitch_11
        0x74680000 -> :sswitch_1b
        0x74720000 -> :sswitch_1e
        0x756b0000 -> :sswitch_11
        0x75720000 -> :sswitch_18
        0x7a68484b -> :sswitch_1c
        0x7a685457 -> :sswitch_1d
    .end sparse-switch
.end method

.method public static isCMSymbol(I)Z
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x27 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x5e -> :sswitch_0
        0x7e -> :sswitch_0
        0x60c -> :sswitch_0
        0x61f -> :sswitch_0
        0x1363 -> :sswitch_0
        0x1367 -> :sswitch_0
        0x2606 -> :sswitch_0
        0x2661 -> :sswitch_0
        0xff0c -> :sswitch_0
    .end sparse-switch
.end method

.method public static isChinaMainlandBinaryByCSC()Z
    .locals 2

    const-string v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "CHINA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isChineseLanguage(I)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7a680000 -> :sswitch_0
        0x7a68434e -> :sswitch_0
        0x7a68484b -> :sswitch_0
        0x7a685457 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isContainString([Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .locals 3

    if-eqz p0, :cond_0

    array-length v2, p0

    if-lez v2, :cond_0

    if-nez p1, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isCyrillicLanguage(I)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x62670000 -> :sswitch_0
        0x6b6b0000 -> :sswitch_0
        0x6b790000 -> :sswitch_0
        0x6d6b0000 -> :sswitch_0
        0x6d6e0000 -> :sswitch_0
        0x72750000 -> :sswitch_0
        0x74670000 -> :sswitch_0
        0x756b0000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isEmergencyModeON(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "emergency_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isEmojiCharacter(Ljava/lang/CharSequence;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const v5, 0xd800

    if-lt v1, v5, :cond_1

    const v5, 0xdbff

    if-gt v1, v5, :cond_1

    const v5, 0xdc00

    if-lt v2, v5, :cond_1

    const v5, 0xdfff

    if-gt v2, v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ne v5, v3, :cond_4

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v5, 0x2600

    if-lt v0, v5, :cond_3

    const/16 v5, 0x26ff

    if-gt v0, v5, :cond_3

    const/16 v5, 0x2661

    if-eq v0, v5, :cond_3

    const/16 v5, 0x2662

    if-eq v0, v5, :cond_3

    const/16 v5, 0x2664

    if-eq v0, v5, :cond_3

    const/16 v5, 0x2667

    if-eq v0, v5, :cond_3

    const/16 v5, 0x2606

    if-ne v0, v5, :cond_0

    :cond_3
    move v3, v4

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_0
.end method

.method public static isEmojiContain(Ljava/lang/String;)Z
    .locals 7

    const/4 v5, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_3

    add-int/lit8 v6, v4, -0x1

    if-ge v1, v6, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v6, 0xd800

    if-lt v2, v6, :cond_1

    const v6, 0xdbff

    if-gt v2, v6, :cond_1

    const v6, 0xdc00

    if-lt v3, v6, :cond_1

    const v6, 0xdfff

    if-gt v3, v6, :cond_1

    :cond_0
    :goto_1
    return v5

    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x2600

    if-lt v0, v6, :cond_2

    const/16 v6, 0x26ff

    if-gt v0, v6, :cond_2

    const/16 v6, 0x2661

    if-eq v0, v6, :cond_2

    const/16 v6, 0x2662

    if-eq v0, v6, :cond_2

    const/16 v6, 0x2664

    if-eq v0, v6, :cond_2

    const/16 v6, 0x2667

    if-eq v0, v6, :cond_2

    const/16 v6, 0x2606

    if-ne v0, v6, :cond_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static isHKTWBinaryByCSC()Z
    .locals 3

    const/4 v1, 0x1

    const-string v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "TAIWAN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz v0, :cond_2

    const-string v2, "HONG KONG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isHebrewLanguage(I)Z
    .locals 1

    const/high16 v0, 0x69770000

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHiraganaKey(C)Z
    .locals 1

    const/16 v0, 0x3041

    if-lt p0, v0, :cond_0

    const/16 v0, 0x3096

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIndianLanguage(I)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x61730000 -> :sswitch_0
        0x626e0000 -> :sswitch_0
        0x67750000 -> :sswitch_0
        0x68690000 -> :sswitch_0
        0x6b6e0000 -> :sswitch_0
        0x6d6c0000 -> :sswitch_0
        0x6d720000 -> :sswitch_0
        0x6e650000 -> :sswitch_0
        0x6f720000 -> :sswitch_0
        0x70610000 -> :sswitch_0
        0x73690000 -> :sswitch_0
        0x74610000 -> :sswitch_0
        0x74650000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isIndoChineseLanguage(I)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x6b6d0000 -> :sswitch_0
        0x6c6f0000 -> :sswitch_0
        0x6d794d4d -> :sswitch_0
        0x7a314d4d -> :sswitch_0
    .end sparse-switch
.end method

.method public static isInsideHwrArea(IIIIILandroid/graphics/Rect;)Z
    .locals 4

    int-to-float v2, p4

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v0, v2

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    if-ge p0, p2, :cond_0

    sub-int v2, p0, v0

    :goto_0
    iput v2, v1, Landroid/graphics/Rect;->left:I

    if-ge p0, p2, :cond_1

    add-int v2, p2, v0

    :goto_1
    iput v2, v1, Landroid/graphics/Rect;->right:I

    if-ge p1, p3, :cond_2

    sub-int v2, p1, v0

    :goto_2
    iput v2, v1, Landroid/graphics/Rect;->top:I

    if-ge p1, p3, :cond_3

    add-int v2, p3, v0

    :goto_3
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p5, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    return v2

    :cond_0
    sub-int v2, p2, v0

    goto :goto_0

    :cond_1
    add-int v2, p0, v0

    goto :goto_1

    :cond_2
    sub-int v2, p3, v0

    goto :goto_2

    :cond_3
    add-int v2, p1, v0

    goto :goto_3
.end method

.method public static isJapaneseLanguage(I)Z
    .locals 1

    const/high16 v0, 0x6a610000

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKNOX(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "isKnoxMode"

    invoke-static {p0, v3}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v3, "version"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "null"

    :cond_0
    const-string v3, "2.0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "true"

    const-string v4, "isKnoxMode"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "SamsungIME"

    const-string v4, "[Utils] isKNOX is ver2.0"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_1
    :goto_0
    move v3, v0

    :goto_1
    return v3

    :cond_2
    const-string v3, "SamsungIME"

    const-string v4, "Fail to get a bundel from PersonaManager"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    const-string v3, "1.0"

    const-string v4, "version"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sec_container_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "SamsungIME"

    const-string v4, "[Utils] isKNOX is ver1.0"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isKhmerChar(I)Z
    .locals 1

    const/16 v0, 0x1780

    if-lt p0, v0, :cond_0

    const/16 v0, 0x17f9

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKoreanLetter(C)Z
    .locals 2

    const/4 v0, 0x1

    const v1, 0xac00

    if-lt p0, v1, :cond_1

    const v1, 0xd7a3

    if-gt p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x1100

    if-lt p0, v1, :cond_2

    const/16 v1, 0x11ff

    if-le p0, v1, :cond_0

    :cond_2
    const/16 v1, 0x3130

    if-lt p0, v1, :cond_3

    const/16 v1, 0x318f

    if-le p0, v1, :cond_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLaggingModeLanguage(I)Z
    .locals 1

    invoke-static {p0}, Lcom/ime/framework/util/Utils;->isChineseLanguage(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/ime/framework/util/Utils;->isThaiLanguage(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/ime/framework/util/Utils;->isHebrewLanguage(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/ime/framework/util/Utils;->isVietLanguage(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/ime/framework/util/Utils;->isLaoLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isLaoLanguage(I)Z
    .locals 1

    const/high16 v0, 0x6c6f0000

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMultitapKey(II)Z
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x6b610000

    if-ne p0, v1, :cond_0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x63 -> :sswitch_0
        0x6a -> :sswitch_0
        0x72 -> :sswitch_0
        0x73 -> :sswitch_0
        0x74 -> :sswitch_0
        0x77 -> :sswitch_0
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method public static isMyanmarLanguage(I)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x6d794d4d -> :sswitch_0
        0x7a314d4d -> :sswitch_0
    .end sparse-switch
.end method

.method public static isMyanmarShanDigit(I)Z
    .locals 1

    const/16 v0, 0x1090

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1099

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotSupportCursiveHWR(I)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x61730000 -> :sswitch_0
        0x626e0000 -> :sswitch_0
        0x67750000 -> :sswitch_0
        0x6b6e0000 -> :sswitch_0
        0x6d6c0000 -> :sswitch_0
        0x6d720000 -> :sswitch_0
        0x6e650000 -> :sswitch_0
        0x6f720000 -> :sswitch_0
        0x70610000 -> :sswitch_0
        0x73690000 -> :sswitch_0
        0x74610000 -> :sswitch_0
        0x74650000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isNotSupportPhonepad(I)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x61730000 -> :sswitch_0
        0x626e0000 -> :sswitch_0
        0x67750000 -> :sswitch_0
        0x68690000 -> :sswitch_0
        0x6a760000 -> :sswitch_0
        0x6b6e0000 -> :sswitch_0
        0x6d6c0000 -> :sswitch_0
        0x6d720000 -> :sswitch_0
        0x6d794d4d -> :sswitch_0
        0x6e650000 -> :sswitch_0
        0x6f720000 -> :sswitch_0
        0x70610000 -> :sswitch_0
        0x73690000 -> :sswitch_0
        0x73750000 -> :sswitch_0
        0x74610000 -> :sswitch_0
        0x74650000 -> :sswitch_0
        0x78680000 -> :sswitch_0
        0x7a310000 -> :sswitch_0
        0x7a314d4d -> :sswitch_0
        0x7a750000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isPowerSavingModeON(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_switch"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_haptic_feedback"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isRTLLanguage(I)Z
    .locals 1

    const/16 v0, 0x600

    if-lt p0, v0, :cond_0

    const/16 v0, 0x6ff

    if-le p0, v0, :cond_3

    :cond_0
    const/16 v0, 0x590

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5ff

    if-le p0, v0, :cond_3

    :cond_1
    const v0, 0xfb50

    if-lt p0, v0, :cond_2

    const v0, 0xfdff

    if-le p0, v0, :cond_3

    :cond_2
    const v0, 0xfe70

    if-lt p0, v0, :cond_4

    const v0, 0xfefc

    if-gt p0, v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRomajiKey(C)Z
    .locals 1

    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusBarShowing(Landroid/view/IWindowManager;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p0}, Landroid/view/IWindowManager;->isStatusBarVisible()Z

    move-result v0

    return v0
.end method

.method public static isThaiLanguage(I)Z
    .locals 1

    const/high16 v0, 0x74680000

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUltraPowerSavingModeON(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ultra_powersaving_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isVietLanguage(I)Z
    .locals 1

    const/high16 v0, 0x76690000

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWiFiOnlyDevice(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isZawgyiChar(I)Z
    .locals 1

    const/16 v0, 0x1000

    if-lt p0, v0, :cond_0

    const/16 v0, 0x109f

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isZhuyinToneKey([I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    aget v2, p0, v1

    const/16 v3, 0x2ca

    if-ne v2, v3, :cond_0

    aget v2, p0, v0

    const/16 v3, 0x2c7

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    aget v2, p0, v2

    const/16 v3, 0x2cb

    if-ne v2, v3, :cond_0

    const/4 v2, 0x3

    aget v2, p0, v2

    const/16 v3, 0x2d9

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static varargs newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "SamsungKeypad"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in newInstance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static printStackTrace()V
    .locals 5

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v3, "SamsungIME"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static toUpperCaseOfTurkish(I)I
    .locals 1

    const/16 v0, 0x69

    if-ne p0, v0, :cond_1

    const/16 p0, 0x49

    :cond_0
    :goto_0
    return p0

    :cond_1
    const/16 v0, 0x131

    if-ne p0, v0, :cond_2

    const/16 p0, 0x130

    goto :goto_0

    :cond_2
    invoke-static {p0}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p0

    goto :goto_0
.end method

.method public static uncompressGZipFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 10

    const/4 v0, 0x0

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Ljava/util/zip/GZIPInputStream;

    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x0

    :try_start_1
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/16 v8, 0x5000

    :try_start_2
    new-array v3, v8, [B

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v7, v3}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v1

    const/4 v8, -0x1

    if-eq v1, v8, :cond_2

    const/4 v8, 0x0

    invoke-virtual {v5, v3, v8, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v8

    move-object v4, v5

    :goto_1
    if-eqz v4, :cond_0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_0
    throw v8
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_0
    move-exception v2

    move-object v6, v7

    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v6, :cond_1

    :try_start_5
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_1
    :goto_3
    return v0

    :cond_2
    :try_start_6
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v5, :cond_3

    :try_start_7
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_3
    const/4 v0, 0x1

    if-eqz v7, :cond_5

    :try_start_8
    invoke-virtual {v7}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    move-object v6, v7

    goto :goto_3

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    goto :goto_3

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v2

    :goto_4
    :try_start_9
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v6, :cond_1

    :try_start_a
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_3

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_1
    move-exception v8

    :goto_5
    if-eqz v6, :cond_4

    :try_start_b
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    :cond_4
    :goto_6
    throw v8

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catchall_2
    move-exception v8

    move-object v6, v7

    goto :goto_5

    :catch_6
    move-exception v2

    move-object v6, v7

    goto :goto_4

    :catch_7
    move-exception v2

    goto :goto_2

    :catchall_3
    move-exception v8

    goto :goto_1

    :cond_5
    move-object v6, v7

    goto :goto_3
.end method

.method public static unicodeToUTF16(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    const-string v0, ""

    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x2

    const/4 v13, 0x4

    if-le v12, v13, :cond_0

    const/high16 v12, 0x1f0000

    and-int/2addr v12, v9

    shr-int/lit8 v11, v12, 0x10

    add-int/lit8 v10, v11, -0x1

    const/4 v5, 0x0

    const v6, 0xdc00

    and-int/lit16 v12, v9, 0x3ff

    or-int v5, v6, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "0x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x0

    const v2, 0xd800

    const v12, 0xfc00

    and-int/2addr v12, v9

    shr-int/lit8 v12, v12, 0xa

    or-int v1, v2, v12

    shl-int/lit8 v12, v10, 0x6

    or-int/2addr v1, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "0x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    int-to-char v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    int-to-char v13, v7

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    int-to-char v13, v9

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
