.class public Lcom/ime/framework/engine/bsthwr/BstHwrDatatype;
.super Ljava/lang/Object;
.source "BstHwrDatatype.java"


# static fields
.field public static final DECODER_FAILED:I = 0x1

.field public static final DECODER_INPUT_INVALID:I = 0x3

.field public static final DECODER_INTERRUPT:I = 0x5

.field public static final DECODER_PROCESSING:I = 0x6

.field public static final DECODER_PROCESS_DONE:I = 0x2

.field public static final DECODER_RES_EMPTY:I = 0x4

.field public static final DECODER_SUCCESS:I = 0x0

.field public static final EVENT_HW_GESTURE:I = 0x0

.field public static HWRERROR_ADD_SELFADAPT_FAIL:I = 0x0

.field public static HWRERROR_ADD_SELFDEFINE_FAIL:I = 0x0

.field public static HWRERROR_ALLOC_MEM_FAILED:I = 0x0

.field public static HWRERROR_DEL_SELFDEFINE_FAIL:I = 0x0

.field public static HWRERROR_ENABLE_SELFADAPT_FAIL:I = 0x0

.field public static HWRERROR_ENABLE_SELFDEFINE_FAIL:I = 0x0

.field public static HWRERROR_ENABLE_TRANSIMP_FAIL:I = 0x0

.field public static HWRERROR_ERROR_DB:I = 0x0

.field public static HWRERROR_ERROR_DB_TYPE:I = 0x0

.field public static HWRERROR_ERROR_DICT:I = 0x0

.field public static HWRERROR_ERROR_POINTS:I = 0x0

.field public static HWRERROR_EXCEED_LIMITATION:I = 0x0

.field public static HWRERROR_FAIL:I = 0x0

.field public static HWRERROR_FREE_MEM_FAILED:I = 0x0

.field public static HWRERROR_FUNCTION_NOT_SUPPORTED:I = 0x0

.field public static HWRERROR_INIT_DICT_FAIL:I = 0x0

.field public static HWRERROR_INTERNAL:I = 0x0

.field public static HWRERROR_INVALIDATE_CALL:I = 0x0

.field public static HWRERROR_INVALIDATE_PARAM:I = 0x0

.field public static HWRERROR_NOT_ENOUGH_MEM:I = 0x0

.field public static HWRERROR_NO_CAND_NUM:I = 0x0

.field public static HWRERROR_NO_DB:I = 0x0

.field public static HWRERROR_NULL_ADDRESS:I = 0x0

.field public static HWRERROR_PIXEL_DENSITY_VALUE:I = 0x0

.field public static HWRERROR_RECOGNITION_STOPPED:I = 0x0

.field public static HWRERROR_SUCCESS:I = 0x0

.field public static HWRERROR_TOO_BIG_RECT:I = 0x0

.field public static HWRERROR_TOO_MANY_CHARACTERS_IN_RESULT:I = 0x0

.field public static HWRERROR_TOO_MANY_POINTS:I = 0x0

.field public static HWRERROR_TOO_SMALL_RECT:I = 0x0

.field public static final HWR_LANG_ENGLISH:I = 0x0

.field public static final HWR_LANG_KOREAN:I = 0x4

.field public static final HWR_LANG_SIMPLIFY_CHN:I = 0x1

.field public static final HWR_LANG_TRADITIONAL_TW:I = 0x3

.field public static final HWR_LANG_TTRADITIONAL_HK:I = 0x2

.field public static HWR_TEXT_TYPE_COMMON:I = 0x0

.field public static HWR_TEXT_TYPE_EMAIL:I = 0x0

.field public static HWR_TEXT_TYPE_URL:I = 0x0

.field public static final LANGUAGE_ENGLISH:Ljava/lang/String; = "en"

.field public static final LANGUAGE_KOREAN:Ljava/lang/String; = "ko"

.field public static final LANGUAGE_SIMPLIFY_CHN:Ljava/lang/String; = "zh_CN"

.field public static final LANGUAGE_TRADITIONAL_HK:Ljava/lang/String; = "zh_HK"

.field public static final LANGUAGE_TRADITIONAL_TW:Ljava/lang/String; = "zh_TW"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    sput v0, Lcom/ime/framework/engine/bsthwr/BstHwrDatatype;->HWR_TEXT_TYPE_COMMON:I

    sput v1, Lcom/ime/framework/engine/bsthwr/BstHwrDatatype;->HWR_TEXT_TYPE_EMAIL:I

    sput v2, Lcom/ime/framework/engine/bsthwr/BstHwrDatatype;->HWR_TEXT_TYPE_URL:I

    sput v0, Lcom/ime/framework/engine/bsthwr/BstHwrDatatype;->HWRERROR_SUCCESS:I

    sput v1, Lcom/ime/framework/engine/bsthwr/BstHwrDatatype;->HWRERROR_FAIL:I

    sput v2, Lcom/ime/framework/engine/bsthwr/BstHwrDatatype;->HWRERROR_NULL_ADDRESS:I

    const/4 v0, 0x3

    sput v0, Lcom/ime/framework/engine/bsthwr/BstHwrDatatype;->HWRERROR_NO_DB:I

    const/4 v0, 0x4

    sput v0, Lcom/ime/framework/engine/bsthwr/BstHwrDatatype;->HWRERROR_ERROR_DB:I

    const/4 v0, 0x5

    sput v0, Lcom/ime/framework/engine/bsthwr/BstHwrDatatype;->HWRERROR_TOO_MANY_POINTS:I

    const/4 v0, 0x6

    sput v0, Lcom/ime/framework/engine/bsthwr/BstHwrDatatype;->HWRERROR_ERROR_POINTS:I

    const/4 v0, 0x7

    sput v0, Lcom/ime/framework/engine/bsthwr/BstHwrDatatype;->HWRERROR_NO_CAND_NUM:I

    const/16 v0, 0x8

    sput v0, Lcom/ime/framework/engine/bsthwr/BstHwrDatatype;->HWRERROR_TOO_BIG_RECT:I

    const/16 v0, 0x9

    sput v0, Lcom/ime/framework/engine/bsthwr/BstHwrDatatype;->HWRERROR_ERROR_DICT:I

    const/16 v0, 0xa

    sput v0, Lcom/ime/framework/engine/bsthwr/BstHwrDatatype;->HWRERROR_INIT_DICT_FAIL:I

    const/16 v0, 0xb

    sput v0, Lcom/ime/framework/engine/bsthwr/BstHwrDatatype;->HWRERROR_ENABLE_SELFADAPT_FAIL:I

    const/16 v0, 0xc

    sput v0, Lcom/ime/framework/engine/bsthwr/BstHwrDatatype;->HWRERROR_ADD_SELFADAPT_FAIL:I

    const/16 v0, 0xd

    sput v0, Lcom/ime/framework/engine/bsthwr/BstHwrDatatype;->HWRERROR_ENABLE_SELFDEFINE_FAIL:I

    const/16 v0, 0xe

    sput v0, Lcom/ime/framework/engine/bsthwr/BstHwrDatatype;->HWRERROR_ADD_SELFDEFINE_FAIL:I

    const/16 v0, 0xf

    sput v0, Lcom/ime/framework/engine/bsthwr/BstHwrDatatype;->HWRERROR_DEL_SELFDEFINE_FAIL:I

    const/16 v0, 0x10

    sput v0, Lcom/ime/framework/engine/bsthwr/BstHwrDatatype;->HWRERROR_ENABLE_TRANSIMP_FAIL:I

    const/16 v0, 0x11

    sput v0, Lcom/ime/framework/engine/bsthwr/BstHwrDatatype;->HWRERROR_ERROR_DB_TYPE:I

    const/16 v0, 0x12

    sput v0, Lcom/ime/framework/engine/bsthwr/BstHwrDatatype;->HWRERROR_TOO_SMALL_RECT:I

    const/16 v0, 0x13

    sput v0, Lcom/ime/framework/engine/bsthwr/BstHwrDatatype;->HWRERROR_TOO_MANY_CHARACTERS_IN_RESULT:I

    const/16 v0, 0x14

    sput v0, Lcom/ime/framework/engine/bsthwr/BstHwrDatatype;->HWRERROR_PIXEL_DENSITY_VALUE:I

    const/16 v0, 0x15

    sput v0, Lcom/ime/framework/engine/bsthwr/BstHwrDatatype;->HWRERROR_RECOGNITION_STOPPED:I

    const/16 v0, 0x16

    sput v0, Lcom/ime/framework/engine/bsthwr/BstHwrDatatype;->HWRERROR_FUNCTION_NOT_SUPPORTED:I

    const/16 v0, 0x17

    sput v0, Lcom/ime/framework/engine/bsthwr/BstHwrDatatype;->HWRERROR_ALLOC_MEM_FAILED:I

    const/16 v0, 0x18

    sput v0, Lcom/ime/framework/engine/bsthwr/BstHwrDatatype;->HWRERROR_FREE_MEM_FAILED:I

    const/16 v0, 0x19

    sput v0, Lcom/ime/framework/engine/bsthwr/BstHwrDatatype;->HWRERROR_NOT_ENOUGH_MEM:I

    const/16 v0, 0x1a

    sput v0, Lcom/ime/framework/engine/bsthwr/BstHwrDatatype;->HWRERROR_INVALIDATE_CALL:I

    const/16 v0, 0x1b

    sput v0, Lcom/ime/framework/engine/bsthwr/BstHwrDatatype;->HWRERROR_INVALIDATE_PARAM:I

    const/16 v0, 0x1c

    sput v0, Lcom/ime/framework/engine/bsthwr/BstHwrDatatype;->HWRERROR_EXCEED_LIMITATION:I

    const/16 v0, 0x1d

    sput v0, Lcom/ime/framework/engine/bsthwr/BstHwrDatatype;->HWRERROR_INTERNAL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
