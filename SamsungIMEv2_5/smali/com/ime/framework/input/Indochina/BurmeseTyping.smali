.class public Lcom/ime/framework/input/Indochina/BurmeseTyping;
.super Ljava/lang/Object;
.source "BurmeseTyping.java"


# static fields
.field public static final BURMESE_AV:I = 0x4

.field public static final BURMESE_BV:I = 0x5

.field private static final BURMESE_CLASS:[I

.field public static final BURMESE_CONS:I = 0x1

.field public static final BURMESE_CS_HA:I = 0xf

.field public static final BURMESE_CS_RA:I = 0xd

.field public static final BURMESE_CS_WA:I = 0xe

.field public static final BURMESE_CS_YA:I = 0xc

.field public static final BURMESE_EXTENS:I = 0x10

.field public static final BURMESE_FV:I = 0x3

.field private static final BURMESE_ISC_MAP:[[Z

.field private static final BURMESE_ISC_MAP_WITHOUT_CONS:[[Z

.field public static final BURMESE_IV:I = 0x2

.field public static final BURMESE_LV:I = 0x6

.field public static final BURMESE_NON:I = 0x0

.field public static final BURMESE_SIGN_ANUSVARA:I = 0x7

.field public static final BURMESE_SIGN_ASAT:I = 0xb

.field public static final BURMESE_SIGN_DOTBELOW:I = 0x8

.field public static final BURMESE_SIGN_VIRAMA:I = 0xa

.field public static final BURMESE_SIGN_VISARGA:I = 0x9

.field private static final BURMESE_UNICODE_OFFSET:I = 0x1000

.field public static final CONS_TRANSFORM_FV_AA:Ljava/lang/String; = "\u1001\u1002\u1004\u1012\u1013\u1015\u101d"

.field private static final TAG:Ljava/lang/String; = "BurmeseTyping"

.field private static final ZW_SPACE_CHAR:Ljava/lang/String; = "\u200b"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x11

    new-array v0, v3, [[Z

    new-array v1, v3, [Z

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v3, [Z

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    new-array v1, v3, [Z

    fill-array-data v1, :array_2

    aput-object v1, v0, v6

    new-array v1, v3, [Z

    fill-array-data v1, :array_3

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v3, [Z

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [Z

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [Z

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [Z

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [Z

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [Z

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [Z

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [Z

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [Z

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [Z

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [Z

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [Z

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [Z

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    sput-object v0, Lcom/ime/framework/input/Indochina/BurmeseTyping;->BURMESE_ISC_MAP:[[Z

    new-array v0, v3, [[Z

    new-array v1, v3, [Z

    fill-array-data v1, :array_11

    aput-object v1, v0, v4

    new-array v1, v3, [Z

    fill-array-data v1, :array_12

    aput-object v1, v0, v5

    new-array v1, v3, [Z

    fill-array-data v1, :array_13

    aput-object v1, v0, v6

    new-array v1, v3, [Z

    fill-array-data v1, :array_14

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v3, [Z

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [Z

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [Z

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [Z

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [Z

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [Z

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [Z

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [Z

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [Z

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [Z

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [Z

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [Z

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [Z

    fill-array-data v2, :array_21

    aput-object v2, v0, v1

    sput-object v0, Lcom/ime/framework/input/Indochina/BurmeseTyping;->BURMESE_ISC_MAP_WITHOUT_CONS:[[Z

    const/16 v0, 0xa0

    new-array v0, v0, [I

    fill-array-data v0, :array_22

    sput-object v0, Lcom/ime/framework/input/Indochina/BurmeseTyping;->BURMESE_CLASS:[I

    return-void

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_b
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_c
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_e
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    nop

    :array_f
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_10
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_11
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_12
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_13
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_14
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_15
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_16
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_17
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_18
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_19
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_1a
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_1b
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_1c
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_1d
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_1e
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_1f
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_20
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_21
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_22
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
        0x6
        0x4
        0x4
        0x4
        0x4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyTypingRule(Landroid/view/inputmethod/InputConnection;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 11

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-nez v9, :cond_0

    const-string v9, ""

    :goto_0
    return-object v9

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-interface {p0, v9, v10}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v8

    if-nez v8, :cond_1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/ime/framework/input/Indochina/BurmeseTyping;->getBurmeseClass(I)I

    move-result v2

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v9, 0x4

    new-array v4, v9, [C

    const/4 v9, 0x4

    new-array v5, v9, [I

    const/4 v3, 0x0

    :goto_1
    const/4 v9, 0x4

    if-ge v3, v9, :cond_2

    const/4 v9, 0x0

    aput-char v9, v4, v3

    aget-char v9, v4, v3

    invoke-static {v9}, Lcom/ime/framework/input/Indochina/BurmeseTyping;->getBurmeseClass(I)I

    move-result v9

    aput v9, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v6, :cond_3

    add-int/lit8 v9, v6, -0x1

    sub-int/2addr v9, v3

    invoke-interface {v8, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    aput-char v9, v4, v3

    aget-char v9, v4, v3

    invoke-static {v9}, Lcom/ime/framework/input/Indochina/BurmeseTyping;->getBurmeseClass(I)I

    move-result v9

    aput v9, v5, v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "index="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", leadingChar[index]="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-char v10, v4, v3

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/ime/framework/input/Indochina/BurmeseTyping;->showLog(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    sparse-switch v2, :sswitch_data_0

    :cond_4
    :goto_3
    invoke-static {p0, v7, v1, v4}, Lcom/ime/framework/input/Indochina/BurmeseTyping;->getTransformedChar(Landroid/view/inputmethod/InputConnection;Ljava/lang/StringBuilder;C[C)C

    move-result v1

    if-nez v0, :cond_8

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    packed-switch v2, :pswitch_data_0

    :goto_4
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :sswitch_0
    const/4 v9, 0x0

    aget v9, v5, v9

    const/4 v10, 0x6

    if-ne v9, v10, :cond_4

    const/16 v9, 0xc

    const/4 v10, 0x1

    aget v10, v5, v10

    if-gt v9, v10, :cond_7

    const/4 v9, 0x1

    aget v9, v5, v9

    const/16 v10, 0xf

    if-gt v9, v10, :cond_7

    const/4 v9, 0x2

    aget v9, v5, v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_4

    const/16 v9, 0xc

    const/4 v10, 0x2

    aget v10, v5, v10

    if-gt v9, v10, :cond_6

    const/4 v9, 0x2

    aget v9, v5, v9

    const/16 v10, 0xe

    if-le v9, v10, :cond_4

    :cond_6
    const/4 v0, 0x2

    goto :goto_3

    :cond_7
    const/4 v9, 0x1

    aget v9, v5, v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :sswitch_1
    const/4 v9, 0x0

    aget v9, v5, v9

    const/4 v10, 0x7

    if-ne v9, v10, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :sswitch_2
    const/4 v9, 0x0

    aget v9, v5, v9

    const/4 v10, 0x6

    if-ne v9, v10, :cond_4

    const/4 v9, 0x1

    aget v9, v5, v9

    if-eq v9, v2, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :pswitch_0
    const-string v9, "\u200b"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_8
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-nez v9, :cond_9

    const/4 v9, 0x0

    invoke-interface {p0, v0, v9}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_9
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    sub-int/2addr v9, v0

    if-ltz v9, :cond_a

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    sub-int/2addr v9, v0

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_a
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v0

    :goto_5
    if-lez v3, :cond_5

    add-int/lit8 v9, v3, -0x1

    aget-char v9, v4, v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
        0xc -> :sswitch_2
        0xd -> :sswitch_2
        0xe -> :sswitch_2
        0xf -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method private static getBurmeseClass(I)I
    .locals 2

    invoke-static {p0}, Lcom/ime/framework/input/Indochina/BurmeseTyping;->isBurmeseChar(I)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit16 v0, p0, -0x1000

    sget-object v1, Lcom/ime/framework/input/Indochina/BurmeseTyping;->BURMESE_CLASS:[I

    aget v1, v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getTransformedChar(Landroid/view/inputmethod/InputConnection;Ljava/lang/StringBuilder;C[C)C
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    sparse-switch p2, :sswitch_data_0

    :cond_0
    :goto_0
    return p2

    :sswitch_0
    const-string v0, "\u1001\u1002\u1004\u1012\u1013\u1015\u101d"

    aget-char v1, p3, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v4, :cond_1

    const/16 p2, 0x102b

    goto :goto_0

    :cond_1
    aget-char v0, p3, v2

    const/16 v1, 0x1031

    if-ne v0, v1, :cond_0

    const-string v0, "\u1001\u1002\u1004\u1012\u1013\u1015\u101d"

    aget-char v1, p3, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v4, :cond_0

    const/16 p2, 0x102b

    goto :goto_0

    :sswitch_1
    aget-char v0, p3, v2

    const/16 v1, 0x1039

    if-ne v0, v1, :cond_0

    aget-char v0, p3, v3

    const/16 v1, 0x101e

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-ne v0, v3, :cond_2

    const/4 v0, 0x2

    invoke-interface {p0, v0, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :goto_1
    const/16 p2, 0x103f

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x101e -> :sswitch_1
        0x102c -> :sswitch_0
    .end sparse-switch
.end method

.method public static isBurmeseAcceptable(III)Z
    .locals 7

    const/4 v6, 0x6

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0}, Lcom/ime/framework/input/Indochina/BurmeseTyping;->isBurmeseChar(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p0}, Lcom/ime/framework/input/Indochina/BurmeseTyping;->getBurmeseClass(I)I

    move-result v1

    invoke-static {p1}, Lcom/ime/framework/input/Indochina/BurmeseTyping;->getBurmeseClass(I)I

    move-result v2

    invoke-static {p2}, Lcom/ime/framework/input/Indochina/BurmeseTyping;->getBurmeseClass(I)I

    move-result v3

    packed-switch v1, :pswitch_data_0

    :cond_0
    packed-switch v2, :pswitch_data_1

    sget-object v4, Lcom/ime/framework/input/Indochina/BurmeseTyping;->BURMESE_ISC_MAP:[[Z

    aget-object v4, v4, v2

    aget-boolean v4, v4, v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isBurmeseAcceptable leading2Char=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", leading1Char=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ime/framework/input/Indochina/BurmeseTyping;->showLog(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isBurmeseAcceptable followingChar=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isAcceptable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ime/framework/input/Indochina/BurmeseTyping;->showLog(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isBurmeseAcceptable following_class="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", leading1_class="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", leading2_class="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ime/framework/input/Indochina/BurmeseTyping;->showLog(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :cond_1
    :goto_1
    return v4

    :pswitch_0
    if-ne v2, v6, :cond_2

    if-eq v3, v4, :cond_1

    :cond_2
    if-ne v2, v6, :cond_0

    const/16 v5, 0xd

    if-ne v3, v5, :cond_0

    goto :goto_1

    :pswitch_1
    sget-object v4, Lcom/ime/framework/input/Indochina/BurmeseTyping;->BURMESE_ISC_MAP:[[Z

    aget-object v4, v4, v3

    aget-boolean v4, v4, v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_1
    .end packed-switch
.end method

.method public static isBurmeseChar(I)Z
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

.method private static showLog(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BurmeseTyping"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
