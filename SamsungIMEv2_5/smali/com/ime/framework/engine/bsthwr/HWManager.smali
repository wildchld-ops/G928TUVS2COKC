.class public Lcom/ime/framework/engine/bsthwr/HWManager;
.super Ljava/lang/Object;
.source "HWManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;,
        Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;
    }
.end annotation


# static fields
.field private static JNILibaryLoaded:Z

.field public static NOTIFICATION_HEIGHT:I

.field public static mBoxFloatingVisbible:Z

.field public static mPenLineColors:[I

.field private static mlibDir:Ljava/lang/String;


# instance fields
.field final CB_STYLE_ID_BA:I

.field final CB_STYLE_ID_CURSIVE:I

.field final CB_STYLE_ID_CURSIVE_LM:I

.field final CB_STYLE_ID_DAO:I

.field final CB_STYLE_ID_HAND_PRINTED:I

.field final CB_STYLE_ID_HUAI:I

.field final CB_STYLE_ID_HUANG:I

.field final CB_STYLE_ID_HUI:I

.field final CB_STYLE_ID_ITALIC:I

.field final CB_STYLE_ID_KNA:I

.field final CB_STYLE_ID_KNA_LM:I

.field final CB_STYLE_ID_KOREAN1:I

.field final CB_STYLE_ID_KOREAN2:I

.field final CB_STYLE_ID_KOREAN3:I

.field final CB_STYLE_ID_KOREAN4:I

.field final CB_STYLE_ID_KOREAN5:I

.field final CB_STYLE_ID_LIANG:I

.field final CB_STYLE_ID_LIU:I

.field final CB_STYLE_ID_ROUND:I

.field final CB_STYLE_ID_RUNNING_HAND_S:I

.field final CB_STYLE_ID_RUNNING_HAND_T:I

.field final CB_STYLE_ID_SU:I

.field final CB_STYLE_ID_TTH_DEFAULT:I

.field final CB_STYLE_ID_WANG:I

.field final CB_STYLE_ID_ZUI:I

.field final CB_TTH_BEAUTIFY_FLAG_HTH:I

.field private DEBUG:Z

.field public final HW_EN_INPUT_RANGE_ALL:C

.field public final HW_EN_INPUT_RANGE_DEFAULT:C

.field public final HW_EN_INPUT_RANGE_EN:C

.field public final HW_EN_INPUT_RANGE_GESTURE:C

.field public final HW_EN_INPUT_RANGE_SYM:C

.field public final HW_INPUT_RANGE_NUM:C

.field public final HW_KO_INPUT_RANGE_ALL:C

.field public final HW_KO_INPUT_RANGE_DEFAULT:C

.field public final HW_KO_INPUT_RANGE_EN:C

.field public final HW_KO_INPUT_RANGE_GESTURE:C

.field public final HW_KO_INPUT_RANGE_HANGUL:C

.field public final HW_KO_INPUT_RANGE_SYM:C

.field public final HW_ZH_CH_INPUT_RANGE_TR_CHAR:C

.field public final HW_ZH_HK_INPUT_RANGE_ALL:C

.field public final HW_ZH_HK_INPUT_RANGE_DEFAULT:C

.field public final HW_ZH_HK_INPUT_RANGE_DEFAULT_INC_CH:C

.field public final HW_ZH_HK_INPUT_RANGE_STROKE:C

.field public final HW_ZH_HK_INPUT_RANGE_STROKE_INC_CH:C

.field public final HW_ZH_INPUT_RANGE_ALL:C

.field public final HW_ZH_INPUT_RANGE_DEFAULT:C

.field public final HW_ZH_INPUT_RANGE_DEFAULT_INC_TR:C

.field public final HW_ZH_INPUT_RANGE_EN:C

.field public final HW_ZH_INPUT_RANGE_GESTURE:C

.field public final HW_ZH_INPUT_RANGE_PINYIN:C

.field public final HW_ZH_INPUT_RANGE_STROKE:C

.field public final HW_ZH_INPUT_RANGE_STROKE_INC_TR:C

.field public final HW_ZH_INPUT_RANGE_SYM:C

.field public final HW_ZH_TR_INPUT_RANGE_CH_CHAR:C

.field public final HW_ZH_TR_INPUT_RANGE_EN:C

.field public final HW_ZH_TR_INPUT_RANGE_GESTURE:C

.field public final HW_ZH_TR_INPUT_RANGE_SYM:C

.field public final HW_ZH_TW_INPUT_RANGE_ALL:C

.field public final HW_ZH_TW_INPUT_RANGE_DEFAULT:C

.field public final HW_ZH_TW_INPUT_RANGE_DEFAULT_INC_CH:C

.field public final HW_ZH_TW_INPUT_RANGE_STROKE:C

.field public final HW_ZH_TW_INPUT_RANGE_STROKE_INC_CH:C

.field final STYLE_PARAM_INDEX_BM:I

.field final STYLE_PARAM_INDEX_CS:I

.field final STYLE_PARAM_INDEX_FB:I

.field final STYLE_PARAM_INDEX_KD:I

.field final STYLE_PARAM_INDEX_LM:I

.field final STYLE_PARAM_INDEX_QB:I

.field final STYLE_PARAM_INDEX_STR:I

.field final STYLE_PARAM_INDEX_YY:I

.field private TAG:Ljava/lang/String;

.field public bForceCommitComposing:Z

.field public bRecogDone:Z

.field private currentMode:I

.field private isCBEngineInit:Z

.field lstInputMode:Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;

.field private mContext:Landroid/content/Context;

.field private mDecInfo:Lcom/ime/framework/engine/bsthwr/DecHandwriting;

.field private mFullScreenViewMeaHeight:I

.field private mHWBoxView:Lcom/ime/framework/engine/bsthwr/BoxHWView;

.field private mHWFullScreenView:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

.field private mHWView:Lcom/ime/framework/engine/bsthwr/TransparentView;

.field private mHwInputData:Lcom/ime/framework/engine/bsthwr/DecHwInputData;

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mUIThread:Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;

.field private mWindow_HW:Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/ime/framework/engine/bsthwr/HWManager;->JNILibaryLoaded:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/ime/framework/engine/bsthwr/HWManager;->mlibDir:Ljava/lang/String;

    sput-boolean v1, Lcom/ime/framework/engine/bsthwr/HWManager;->mBoxFloatingVisbible:Z

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ime/framework/engine/bsthwr/HWManager;->mPenLineColors:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        -0x10000
        -0xff5a0d
        -0xff65fc
        -0x9bc800
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/16 v5, 0x10

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x3

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->DEBUG:Z

    const-string v0, "HWManager"

    iput-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->TAG:Ljava/lang/String;

    iput v3, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mFullScreenViewMeaHeight:I

    iput-boolean v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->bRecogDone:Z

    iput-boolean v3, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->bForceCommitComposing:Z

    sget-object v0, Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;->KEYBOARD_MODE:Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;

    iput-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->lstInputMode:Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;

    iput-boolean v3, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->isCBEngineInit:Z

    iput-char v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->HW_INPUT_RANGE_NUM:C

    const/16 v0, 0x600

    iput-char v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->HW_ZH_TR_INPUT_RANGE_CH_CHAR:C

    const/16 v0, 0x4000

    iput-char v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->HW_ZH_CH_INPUT_RANGE_TR_CHAR:C

    const/16 v0, 0x6eff

    iput-char v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->HW_ZH_INPUT_RANGE_ALL:C

    const/16 v0, 0x600

    iput-char v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->HW_ZH_INPUT_RANGE_STROKE:C

    const/16 v0, 0x2000

    iput-char v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->HW_ZH_INPUT_RANGE_PINYIN:C

    iput-char v2, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->HW_ZH_INPUT_RANGE_EN:C

    const/16 v0, 0x18

    iput-char v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->HW_ZH_INPUT_RANGE_SYM:C

    const/16 v0, 0x80

    iput-char v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->HW_ZH_INPUT_RANGE_GESTURE:C

    const/16 v0, 0x61f

    iput-char v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->HW_ZH_INPUT_RANGE_DEFAULT:C

    const/16 v0, 0x461f

    iput-char v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->HW_ZH_INPUT_RANGE_DEFAULT_INC_TR:C

    const/16 v0, 0x4600

    iput-char v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->HW_ZH_INPUT_RANGE_STROKE_INC_TR:C

    iput-char v2, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->HW_ZH_TR_INPUT_RANGE_EN:C

    const/16 v0, 0x78

    iput-char v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->HW_ZH_TR_INPUT_RANGE_SYM:C

    const/16 v0, 0x80

    iput-char v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->HW_ZH_TR_INPUT_RANGE_GESTURE:C

    const v0, 0xe000

    iput-char v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->HW_ZH_HK_INPUT_RANGE_STROKE:C

    const v0, 0xebff

    iput-char v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->HW_ZH_HK_INPUT_RANGE_ALL:C

    const v0, 0xe07f

    iput-char v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->HW_ZH_HK_INPUT_RANGE_DEFAULT:C

    const v0, 0xe67f

    iput-char v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->HW_ZH_HK_INPUT_RANGE_DEFAULT_INC_CH:C

    const v0, 0xe600

    iput-char v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->HW_ZH_HK_INPUT_RANGE_STROKE_INC_CH:C

    const v0, 0xe000

    iput-char v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->HW_ZH_TW_INPUT_RANGE_STROKE:C

    const v0, 0xebff

    iput-char v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->HW_ZH_TW_INPUT_RANGE_ALL:C

    const v0, 0xe07f

    iput-char v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->HW_ZH_TW_INPUT_RANGE_DEFAULT:C

    const v0, 0xe67f

    iput-char v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->HW_ZH_TW_INPUT_RANGE_DEFAULT_INC_CH:C

    const v0, 0xe600

    iput-char v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->HW_ZH_TW_INPUT_RANGE_STROKE_INC_CH:C

    const/16 v0, 0x43c

    iput-char v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->HW_KO_INPUT_RANGE_ALL:C

    const/16 v0, 0x600

    iput-char v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->HW_KO_INPUT_RANGE_HANGUL:C

    iput-char v2, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->HW_KO_INPUT_RANGE_EN:C

    iput-char v5, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->HW_KO_INPUT_RANGE_SYM:C

    const/16 v0, 0x20

    iput-char v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->HW_KO_INPUT_RANGE_GESTURE:C

    const/16 v0, 0x617

    iput-char v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->HW_KO_INPUT_RANGE_DEFAULT:C

    const/16 v0, 0xff

    iput-char v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->HW_EN_INPUT_RANGE_ALL:C

    const/16 v0, 0xc3

    iput-char v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->HW_EN_INPUT_RANGE_EN:C

    iput-char v5, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->HW_EN_INPUT_RANGE_SYM:C

    const/16 v0, 0x20

    iput-char v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->HW_EN_INPUT_RANGE_GESTURE:C

    const/16 v0, 0xd7

    iput-char v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->HW_EN_INPUT_RANGE_DEFAULT:C

    iput v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->CB_TTH_BEAUTIFY_FLAG_HTH:I

    iput v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->CB_STYLE_ID_RUNNING_HAND_S:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->CB_STYLE_ID_RUNNING_HAND_T:I

    iput v2, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->CB_STYLE_ID_WANG:I

    iput v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->CB_STYLE_ID_SU:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->CB_STYLE_ID_HUANG:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->CB_STYLE_ID_HUI:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->CB_STYLE_ID_ZUI:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->CB_STYLE_ID_DAO:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->CB_STYLE_ID_LIANG:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->CB_STYLE_ID_CURSIVE:I

    const/16 v0, 0xb

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->CB_STYLE_ID_CURSIVE_LM:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->CB_STYLE_ID_HUAI:I

    const/16 v0, 0xd

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->CB_STYLE_ID_LIU:I

    const/16 v0, 0xe

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->CB_STYLE_ID_KNA:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->CB_STYLE_ID_KNA_LM:I

    iput v5, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->CB_STYLE_ID_BA:I

    const/16 v0, 0x11

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->CB_STYLE_ID_KOREAN1:I

    const/16 v0, 0x12

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->CB_STYLE_ID_KOREAN2:I

    const/16 v0, 0x13

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->CB_STYLE_ID_KOREAN3:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->CB_STYLE_ID_KOREAN4:I

    const/16 v0, 0x15

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->CB_STYLE_ID_KOREAN5:I

    const/16 v0, 0x16

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->CB_STYLE_ID_HAND_PRINTED:I

    const/16 v0, 0x17

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->CB_STYLE_ID_ITALIC:I

    const/16 v0, 0x18

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->CB_STYLE_ID_ROUND:I

    const/16 v0, 0x19

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->CB_STYLE_ID_TTH_DEFAULT:I

    iput v3, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->STYLE_PARAM_INDEX_CS:I

    iput v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->STYLE_PARAM_INDEX_BM:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->STYLE_PARAM_INDEX_QB:I

    iput v2, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->STYLE_PARAM_INDEX_LM:I

    iput v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->STYLE_PARAM_INDEX_KD:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->STYLE_PARAM_INDEX_YY:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->STYLE_PARAM_INDEX_FB:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->STYLE_PARAM_INDEX_STR:I

    iput-object p1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;

    invoke-direct {v0, p0}, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;-><init>(Lcom/ime/framework/engine/bsthwr/HWManager;)V

    iput-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mUIThread:Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;

    new-instance v0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;

    invoke-direct {v0, p0}, Lcom/ime/framework/engine/bsthwr/DecHandwriting;-><init>(Lcom/ime/framework/engine/bsthwr/HWManager;)V

    iput-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mDecInfo:Lcom/ime/framework/engine/bsthwr/DecHandwriting;

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-void
.end method

.method static synthetic access$000(Lcom/ime/framework/engine/bsthwr/HWManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/ime/framework/engine/bsthwr/HWManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/ime/framework/engine/bsthwr/HWManager;)Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mWindow_HW:Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ime/framework/engine/bsthwr/HWManager;)Lcom/ime/framework/engine/bsthwr/TransparentView;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWView:Lcom/ime/framework/engine/bsthwr/TransparentView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/ime/framework/engine/bsthwr/HWManager;Lcom/ime/framework/engine/bsthwr/TransparentView;)Lcom/ime/framework/engine/bsthwr/TransparentView;
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWView:Lcom/ime/framework/engine/bsthwr/TransparentView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/ime/framework/engine/bsthwr/HWManager;)Lcom/ime/framework/engine/bsthwr/DecHandwriting;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mDecInfo:Lcom/ime/framework/engine/bsthwr/DecHandwriting;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ime/framework/engine/bsthwr/HWManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ime/framework/engine/bsthwr/HWManager;->showToast(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/ime/framework/engine/bsthwr/HWManager;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/ime/framework/engine/bsthwr/HWManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->showCandiates()V

    return-void
.end method

.method static synthetic access$700(Lcom/ime/framework/engine/bsthwr/HWManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/ime/framework/engine/bsthwr/HWManager;)I
    .locals 1

    iget v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->currentMode:I

    return v0
.end method

.method static synthetic access$900(Lcom/ime/framework/engine/bsthwr/HWManager;)Lcom/ime/framework/engine/bsthwr/DecHwInputData;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHwInputData:Lcom/ime/framework/engine/bsthwr/DecHwInputData;

    return-object v0
.end method

.method static synthetic access$902(Lcom/ime/framework/engine/bsthwr/HWManager;Lcom/ime/framework/engine/bsthwr/DecHwInputData;)Lcom/ime/framework/engine/bsthwr/DecHwInputData;
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHwInputData:Lcom/ime/framework/engine/bsthwr/DecHwInputData;

    return-object p1
.end method

.method private createSignatureBitmap(II)V
    .locals 5

    iget-boolean v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->TAG:Ljava/lang/String;

    const-string v2, "createSignatureBitmap"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->getDims()I

    move-result v0

    invoke-static {}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->getInstance()Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->setDPI(F)V

    invoke-static {}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->getInstance()Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;

    move-result-object v1

    const/high16 v2, 0x42c80000    # 100.0f

    const v3, 0x3f4ccccd    # 0.8f

    const v4, 0x44bb8000    # 1500.0f

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->SetFadingParam(FFF)V

    invoke-static {}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->getInstance()Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWView:Lcom/ime/framework/engine/bsthwr/TransparentView;

    invoke-virtual {v1, v2}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->onCreateView(Landroid/view/View;)V

    invoke-static {}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->getInstance()Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->setWidthAndHeight(II)V

    return-void
.end method

.method private dismissHWBoxView()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWBoxView:Lcom/ime/framework/engine/bsthwr/BoxHWView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWBoxView:Lcom/ime/framework/engine/bsthwr/BoxHWView;

    invoke-virtual {v0}, Lcom/ime/framework/engine/bsthwr/BoxHWView;->clear()V

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWBoxView:Lcom/ime/framework/engine/bsthwr/BoxHWView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ime/framework/engine/bsthwr/BoxHWView;->setVisibility(I)V

    iput-object v2, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWBoxView:Lcom/ime/framework/engine/bsthwr/BoxHWView;

    iput-object v2, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWView:Lcom/ime/framework/engine/bsthwr/TransparentView;

    :cond_0
    return-void
.end method

.method private dismissHWFullScreenView()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWFullScreenView:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWFullScreenView:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    invoke-virtual {v0}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->clear()V

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWFullScreenView:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->setVisibility(I)V

    iput-object v2, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWFullScreenView:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    iput-object v2, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWView:Lcom/ime/framework/engine/bsthwr/TransparentView;

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->TAG:Ljava/lang/String;

    const-string v1, "dismissHWFullScreenView mHWFullScreenView = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mWindow_HW:Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mWindow_HW:Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;

    invoke-virtual {v0, v2}, Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;->setListenView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mWindow_HW:Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;

    invoke-virtual {v0}, Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;->dismiss()V

    iput-object v2, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mWindow_HW:Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;

    :cond_1
    return-void
.end method

.method public static getBoxFloatingStatus()Z
    .locals 1

    sget-boolean v0, Lcom/ime/framework/engine/bsthwr/HWManager;->mBoxFloatingVisbible:Z

    return v0
.end method

.method private getHWBoxBottomMargin()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090826

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090b97

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    goto :goto_0
.end method

.method private getHWBoxLeftMargin()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090821

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090b92

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    goto :goto_0
.end method

.method private getHWBoxViewLayout()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->getHWBoxHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-direct {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->getHWBoxWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-direct {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->getHWBoxBottomMargin()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-direct {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->getHWBoxLeftMargin()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v1, 0x53

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-object v0
.end method

.method private getHWBoxWidth()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090b8c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    :goto_0
    iget-boolean v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetHWBoxWidth ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09081b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    goto :goto_0
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mUIThread:Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;

    return-object v0
.end method

.method static getHandwritingPenColor()I
    .locals 4

    invoke-static {}, Lcom/ime/framework/repository/RepositoryImpl;->getInstance()Lcom/ime/framework/repository/Repository;

    move-result-object v1

    const-string v2, "SETTINGS_DEFAULT_HWR_PENCOLOR"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    sget-object v2, Lcom/ime/framework/engine/bsthwr/HWManager;->mPenLineColors:[I

    aget v2, v2, v0

    return v2
.end method

.method static getHandwritingPenThickness()I
    .locals 3

    invoke-static {}, Lcom/ime/framework/repository/RepositoryImpl;->getInstance()Lcom/ime/framework/repository/Repository;

    move-result-object v0

    const-string v1, "SETTINGS_DEFAULT_HWR_PENTHICKNESS"

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method static getHandwritingRecogDelay()I
    .locals 3

    invoke-static {}, Lcom/ime/framework/repository/RepositoryImpl;->getInstance()Lcom/ime/framework/repository/Repository;

    move-result-object v0

    const-string v1, "SETTINGS_DEFAULT_HWR_RECOGNIZE_DELAY"

    const/16 v2, 0x1f4

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method static getHandwritingRecogMode()I
    .locals 3

    invoke-static {}, Lcom/ime/framework/repository/RepositoryImpl;->getInstance()Lcom/ime/framework/repository/Repository;

    move-result-object v0

    const-string v1, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method static getHandwritingStyle()I
    .locals 3

    invoke-static {}, Lcom/ime/framework/repository/RepositoryImpl;->getInstance()Lcom/ime/framework/repository/Repository;

    move-result-object v0

    const-string v1, "SETTINGS_DEFAULT_HWR_WRITING_STYLE"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method static getHandwritingTSSwitch()I
    .locals 3

    invoke-static {}, Lcom/ime/framework/repository/RepositoryImpl;->getInstance()Lcom/ime/framework/repository/Repository;

    move-result-object v0

    const-string v1, "SETTINGS_DEFAULT_HWR_SCH_TO_TCH_SWITCH"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getLibraryDir()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ime/framework/engine/bsthwr/HWManager;->mlibDir:Ljava/lang/String;

    return-object v0
.end method

.method static getXt9HandwritingRecogMode()I
    .locals 3

    invoke-static {}, Lcom/ime/framework/repository/RepositoryImpl;->getInstance()Lcom/ime/framework/repository/Repository;

    move-result-object v0

    const-string v1, "SETTINGS_DEFAULT_XT9_HWR_MODE"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method static getXt9HandwritingRecogType()I
    .locals 3

    invoke-static {}, Lcom/ime/framework/repository/RepositoryImpl;->getInstance()Lcom/ime/framework/repository/Repository;

    move-result-object v0

    const-string v1, "SETTINGS_DEFAULT_XT9_HWR_RECOG_TYPE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static isEngBinary()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static setBoxFloatingStatus(Z)V
    .locals 0

    sput-boolean p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mBoxFloatingVisbible:Z

    return-void
.end method

.method private setFullScreenViewMeaHeight(I)V
    .locals 0

    iput p1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mFullScreenViewMeaHeight:I

    return-void
.end method

.method public static setLibraryDir(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mlibDir:Ljava/lang/String;

    return-void
.end method

.method private showCandiates()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isCandidateExpanded()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2, v6}, Lcom/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    instance-of v4, v3, Lcom/ime/framework/view/candidate/AbstractCandidateView;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v3}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->dismissExpandPopup()V

    :cond_0
    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mDecInfo:Lcom/ime/framework/engine/bsthwr/DecHandwriting;

    invoke-virtual {v4}, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->getCandidatesList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v0, v4, v5}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    :cond_1
    invoke-interface {v2, v6}, Lcom/ime/framework/common/InputManager;->setToolbarVisibility(Z)V

    invoke-interface {v2, v5}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    invoke-interface {v2, v5}, Lcom/ime/framework/common/InputManager;->setIsBstHwrCandidates(Z)V

    invoke-interface {v2, v1}, Lcom/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    :goto_0
    return-void

    :cond_2
    invoke-interface {v2, v5}, Lcom/ime/framework/common/InputManager;->setToolbarVisibility(Z)V

    goto :goto_0
.end method

.method private showToast(I)V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public LoadJNILibrary()V
    .locals 4

    const/4 v2, 0x1

    sget-boolean v1, Lcom/ime/framework/engine/bsthwr/HWManager;->JNILibaryLoaded:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->TAG:Ljava/lang/String;

    const-string v2, "JniLibary already loaded"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string v1, "_bsthwr"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/ime/framework/engine/bsthwr/HWManager;->JNILibaryLoaded:Z

    const-string v1, "LoadJNILibrary"

    const-string v2, "jni_secime load finished"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/ime/framework/engine/bsthwr/HWManager;->JNILibaryLoaded:Z

    const-string v1, "LoadJNILibrary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WARNING: Could not load libjni_secime natives"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public SendMessageUpdateCandidates(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/ime/framework/engine/bsthwr/HWManager;->postMessageEx2(II)V

    return-void
.end method

.method public cancelRecognize()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ime/framework/engine/bsthwr/HWManager;->removeMessageEx(I)V

    return-void
.end method

.method public clearAllStrokes()V
    .locals 2

    iget-boolean v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->TAG:Ljava/lang/String;

    const-string v1, "clearAllStrokes"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWView:Lcom/ime/framework/engine/bsthwr/TransparentView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWView:Lcom/ime/framework/engine/bsthwr/TransparentView;

    invoke-virtual {v0}, Lcom/ime/framework/engine/bsthwr/TransparentView;->clear()V

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWView:Lcom/ime/framework/engine/bsthwr/TransparentView;

    invoke-virtual {v0}, Lcom/ime/framework/engine/bsthwr/TransparentView;->invalidate()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->bForceCommitComposing:Z

    return-void
.end method

.method closeCBEngine()V
    .locals 1

    invoke-static {}, Lcom/sec/android/bsthw/calibeauty/BstHwCb;->cbCloseEngine()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->isCBEngineInit:Z

    return-void
.end method

.method public createAndShowHWFullScreenView()V
    .locals 4

    const/4 v3, -0x1

    iget-boolean v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->TAG:Ljava/lang/String;

    const-string v2, "createAndShowHWFullScreenView."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWFullScreenView:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    if-nez v1, :cond_1

    new-instance v1, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWFullScreenView:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    :cond_1
    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWFullScreenView:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    iput-object v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWView:Lcom/ime/framework/engine/bsthwr/TransparentView;

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mWindow_HW:Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;

    if-nez v1, :cond_3

    new-instance v1, Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;

    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mWindow_HW:Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mWindow_HW:Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;

    invoke-virtual {v1}, Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->updateToken()V

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWFullScreenView:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    invoke-virtual {v1}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWFullScreenView:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mWindow_HW:Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;

    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWFullScreenView:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    invoke-virtual {v1, v2}, Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;->setListenView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mWindow_HW:Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;

    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWFullScreenView:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    invoke-virtual {v1, v2}, Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;->setContentView(Landroid/view/View;)V

    :cond_3
    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isInputViewShown()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWFullScreenView:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->initFullViewMeasureHeight()V

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mWindow_HW:Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;

    invoke-virtual {v1}, Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;->show()V

    :cond_4
    return-void
.end method

.method public dimHWboxView(Z)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWBoxView:Lcom/ime/framework/engine/bsthwr/BoxHWView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWBoxView:Lcom/ime/framework/engine/bsthwr/BoxHWView;

    invoke-virtual {v0, p1}, Lcom/ime/framework/engine/bsthwr/BoxHWView;->setDimState(Z)V

    :cond_0
    return-void
.end method

.method public dismissHandwritingView()V
    .locals 2

    iget-boolean v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->TAG:Ljava/lang/String;

    const-string v1, "dismissHandwritingView "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->cancelRecognize()V

    iget-boolean v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->bRecogDone:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/bsthw/recognition/BstHwr;->nativeHWRStopRecog()I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->bRecogDone:Z

    :cond_1
    invoke-direct {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->dismissHWFullScreenView()V

    invoke-direct {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->dismissHWBoxView()V

    return-void
.end method

.method public getBoxHWView()Lcom/ime/framework/engine/bsthwr/BoxHWView;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWBoxView:Lcom/ime/framework/engine/bsthwr/BoxHWView;

    return-object v0
.end method

.method public getCurrentLanguage()Ljava/lang/String;
    .locals 5

    const-string v0, "zh_CN"

    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getCurrentInputLanguage()Lcom/ime/framework/common/Language;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ime/framework/common/Language;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    const-string v0, "zh_CN"

    :goto_0
    iget-boolean v2, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->DEBUG:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "----currentLangaue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0

    :sswitch_0
    const-string v0, "en"

    goto :goto_0

    :sswitch_1
    const-string v0, "ko"

    goto :goto_0

    :sswitch_2
    const-string v0, "zh_CN"

    goto :goto_0

    :sswitch_3
    const-string v0, "zh_HK"

    goto :goto_0

    :sswitch_4
    const-string v0, "zh_TW"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x656e5553 -> :sswitch_0
        0x6b6f0000 -> :sswitch_1
        0x7a68434e -> :sswitch_2
        0x7a68484b -> :sswitch_3
        0x7a685457 -> :sswitch_4
    .end sparse-switch
.end method

.method public getCurrentWindowHeight()I
    .locals 5

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isInputViewShown()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getKeyboardViewHeight()I

    move-result v2

    iget-object v3, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900fe

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_0
    add-int v1, v0, v2

    :cond_1
    return v1
.end method

.method getDims()I
    .locals 5

    iget-object v3, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    return v3
.end method

.method public getFullScreenHWView()Lcom/ime/framework/engine/bsthwr/FullScreenHWView;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWFullScreenView:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    return-object v0
.end method

.method public getFullScreenViewMeaHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->getScreenHeight()I

    move-result v0

    iget v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mFullScreenViewMeaHeight:I

    if-lez v1, :cond_0

    iget v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mFullScreenViewMeaHeight:I

    :cond_0
    return v0
.end method

.method public getHWBoxHeight()I
    .locals 7

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090b8b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    :goto_0
    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getKeyboardHeightDelta()I

    move-result v4

    int-to-float v1, v4

    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getDefaultKeyboardHeight()I

    move-result v4

    int-to-float v2, v4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->isLandscape()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    add-float v4, v2, v1

    div-float v3, v4, v2

    :cond_0
    int-to-float v4, v0

    mul-float/2addr v4, v3

    float-to-int v0, v4

    iget-boolean v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->DEBUG:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GetHWBoxHeight ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0

    :cond_2
    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09081a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    goto :goto_0
.end method

.method public getRealWindowHeight()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isInputViewShown()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1, v0}, Lcom/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getCandidateViewHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getKeyboardViewHeight()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getKeyboardViewHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getScreenHeight()I
    .locals 4

    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v0

    return v0
.end method

.method public getScreenWidth()I
    .locals 4

    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v0

    return v0
.end method

.method public getTransparentView()Lcom/ime/framework/engine/bsthwr/TransparentView;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWView:Lcom/ime/framework/engine/bsthwr/TransparentView;

    return-object v0
.end method

.method public getWindow()Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mWindow_HW:Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;

    return-object v0
.end method

.method public handleEvent(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    if-eqz p2, :cond_0

    instance-of v3, p2, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3, v5}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    iget-object v3, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3, v2}, Lcom/ime/framework/common/InputManager;->sendDownUpKeyEvents(I)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getSelectedNumOfText()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3, v2}, Lcom/ime/framework/common/InputManager;->sendDownUpKeyEvents(I)V

    :goto_1
    iget-object v3, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3, v5}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    const-string v3, ""

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    :cond_2
    iget-object v3, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3, v2}, Lcom/ime/framework/common/InputManager;->sendDownUpKeyEvents(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public hideBoxHandwritingView()V
    .locals 2

    iget-boolean v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->TAG:Ljava/lang/String;

    const-string v1, "hideBoxHandwritingView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWBoxView:Lcom/ime/framework/engine/bsthwr/BoxHWView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWBoxView:Lcom/ime/framework/engine/bsthwr/BoxHWView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ime/framework/engine/bsthwr/BoxHWView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWBoxView:Lcom/ime/framework/engine/bsthwr/BoxHWView;

    invoke-virtual {v0}, Lcom/ime/framework/engine/bsthwr/BoxHWView;->clear()V

    :cond_1
    return-void
.end method

.method public hideFSHandwritingView()V
    .locals 2

    iget-boolean v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->TAG:Ljava/lang/String;

    const-string v1, "hideFSHandwritingView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWFullScreenView:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWFullScreenView:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWFullScreenView:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    invoke-virtual {v0}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->clear()V

    :cond_1
    return-void
.end method

.method public hideHandwritingView()V
    .locals 0

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->hideBoxHandwritingView()V

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->hideFSHandwritingView()V

    return-void
.end method

.method initCBEngine()V
    .locals 2

    invoke-static {}, Lcom/sec/android/bsthw/calibeauty/BstHwCb;->cbInitEngine()I

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/bsthw/calibeauty/BstHwCb;->cbLoadPDBEx(Landroid/content/res/AssetManager;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->isCBEngineInit:Z

    return-void
.end method

.method public initFullViewMeasureHeight()V
    .locals 5

    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWFullScreenView:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWFullScreenView:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    iget-boolean v2, v2, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->isStartWriting:Z

    if-eqz v2, :cond_2

    :cond_0
    iget-boolean v2, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->DEBUG:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->TAG:Ljava/lang/String;

    const-string v3, " initFullViewMeasureHeight return do nothing "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->getScreenHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->getCurrentWindowHeight()I

    move-result v3

    sub-int v0, v2, v3

    iget-boolean v2, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->DEBUG:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " initFullViewMeasureHeight measureHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->getScreenWidth()I

    move-result v1

    invoke-direct {p0, v0}, Lcom/ime/framework/engine/bsthwr/HWManager;->setFullScreenViewMeaHeight(I)V

    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWFullScreenView:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    invoke-virtual {v2, v1, v0}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->measure(II)V

    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWFullScreenView:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    invoke-virtual {v2}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->requestLayout()V

    goto :goto_0
.end method

.method public initSamsungHandwrite(ZLjava/lang/String;Z)V
    .locals 4

    sget-object v3, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->mRecognizeObj:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/sec/android/bsthw/recognition/BstHwr;->isHandwriteInit()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/android/bsthw/recognition/BstHwr;->hwReleaseDB()V

    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/sec/android/bsthw/recognition/BstHwr;->hwLoadDB(Landroid/content/res/AssetManager;Ljava/lang/String;Z)I

    move-result v1

    invoke-static {}, Lcom/ime/framework/engine/bsthwr/HWManager;->isEngBinary()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/ime/framework/engine/bsthwr/BstHwrDatatype;->HWRERROR_SUCCESS:I

    if-eq v1, v2, :cond_1

    invoke-static {}, Lcom/sec/android/bsthw/recognition/BstHwr;->hwReleaseDB()V

    const v2, 0x7f0d03ad

    invoke-direct {p0, v2}, Lcom/ime/framework/engine/bsthwr/HWManager;->showToast(I)V

    :cond_1
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isLandscape()Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v0

    return v0
.end method

.method public isLandscapeFullScreen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOverlapMode()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "en"

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ko"

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/ime/framework/engine/bsthwr/HWManager;->getXt9HandwritingRecogMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isStorkeMode()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Lcom/ime/framework/engine/bsthwr/HWManager;->getXt9HandwritingRecogType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInputModeChange()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x4

    const/4 v8, 0x2

    iget-object v5, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v5

    iput v5, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->currentMode:I

    iget-object v5, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isPenDetectionHwrMode()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->TAG:Ljava/lang/String;

    const-string v6, "isPenDetectionHwrMode() is true so set to handwriting box mode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v8, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->currentMode:I

    :cond_0
    iget-object v5, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    iget v5, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->currentMode:I

    if-ne v5, v9, :cond_1

    iput v8, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->currentMode:I

    :cond_1
    iget-boolean v5, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->DEBUG:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onInputModeChange currentMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->currentMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v5, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->isCBEngineInit:Z

    if-eqz v5, :cond_b

    invoke-static {}, Lcom/ime/framework/engine/bsthwr/HWManager;->getHandwritingStyle()I

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->closeCBEngine()V

    :cond_3
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isPenDetectionHwrMode()Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v5

    if-nez v5, :cond_c

    const/4 v3, 0x1

    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    if-eqz v2, :cond_6

    :cond_5
    if-nez v3, :cond_10

    if-eqz v2, :cond_10

    :cond_6
    iget v5, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->currentMode:I

    if-eq v5, v9, :cond_7

    iget v5, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->currentMode:I

    if-ne v5, v8, :cond_10

    :cond_7
    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->isOverlapMode()Z

    move-result v1

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->cancelRecognize()V

    invoke-static {}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->getInstance()Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->onDestroyView()V

    iget v5, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->currentMode:I

    if-ne v5, v9, :cond_e

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->hideBoxHandwritingView()V

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->getScreenWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->getScreenHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->createAndShowHWFullScreenView()V

    invoke-static {}, Lcom/ime/framework/engine/bsthwr/HWManager;->getHandwritingStyle()I

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/sec/android/bsthw/calibeauty/BstHwCb;->cbSetLittleStorkeFlag(Z)I

    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v10, v5, v1}, Lcom/ime/framework/engine/bsthwr/HWManager;->initSamsungHandwrite(ZLjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->updateHWRangeAndBoxTitle()V

    invoke-virtual {p0, v4, v0}, Lcom/ime/framework/engine/bsthwr/HWManager;->setHWEngineRect(II)V

    invoke-direct {p0, v4, v0}, Lcom/ime/framework/engine/bsthwr/HWManager;->createSignatureBitmap(II)V

    invoke-static {}, Lcom/ime/framework/engine/bsthwr/HWManager;->getHandwritingStyle()I

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p0, v4, v0}, Lcom/ime/framework/engine/bsthwr/HWManager;->setCbRect(II)V

    :cond_9
    iget-object v5, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWView:Lcom/ime/framework/engine/bsthwr/TransparentView;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWView:Lcom/ime/framework/engine/bsthwr/TransparentView;

    invoke-virtual {v5}, Lcom/ime/framework/engine/bsthwr/TransparentView;->clear()V

    iget-object v5, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWView:Lcom/ime/framework/engine/bsthwr/TransparentView;

    invoke-virtual {v5}, Lcom/ime/framework/engine/bsthwr/TransparentView;->updateSetting()V

    :cond_a
    :goto_3
    return-void

    :cond_b
    iget-boolean v5, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->isCBEngineInit:Z

    if-nez v5, :cond_3

    invoke-static {}, Lcom/ime/framework/engine/bsthwr/HWManager;->getHandwritingStyle()I

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->initCBEngine()V

    goto/16 :goto_0

    :cond_c
    const/4 v3, 0x0

    goto :goto_1

    :cond_d
    iget-object v5, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v5

    if-nez v5, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_e
    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->hideFSHandwritingView()V

    invoke-direct {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->getHWBoxWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->getHWBoxHeight()I

    move-result v0

    invoke-static {}, Lcom/ime/framework/engine/bsthwr/HWManager;->getHandwritingStyle()I

    move-result v5

    if-eqz v5, :cond_f

    invoke-static {v10}, Lcom/sec/android/bsthw/calibeauty/BstHwCb;->cbSetLittleStorkeFlag(Z)I

    :cond_f
    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->showBoxHandwritingView()V

    iget-object v5, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWBoxView:Lcom/ime/framework/engine/bsthwr/BoxHWView;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWBoxView:Lcom/ime/framework/engine/bsthwr/BoxHWView;

    invoke-direct {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->getHWBoxViewLayout()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ime/framework/engine/bsthwr/BoxHWView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_10
    iget-boolean v5, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->DEBUG:Z

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->TAG:Ljava/lang/String;

    const-string v6, "onInputModeChange keyboard "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->dismissHandwritingView()V

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->closeCBEngine()V

    sget-object v6, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->mRecognizeObj:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Lcom/sec/android/bsthw/recognition/BstHwr;->hwReleaseDB()V

    monitor-exit v6

    goto :goto_3

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public postMessageEx(IJ)V
    .locals 4

    iget-boolean v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->bRecogDone:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-boolean v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->TAG:Ljava/lang/String;

    const-string v2, "postMessageEx interrupt. Becasue of recongnition in process"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-lez v1, :cond_2

    invoke-direct {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public postMessageEx2(II)V
    .locals 2

    invoke-direct {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    invoke-direct {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public releaseInstance()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->TAG:Ljava/lang/String;

    const-string v1, "releaseInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mWindow_HW:Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mWindow_HW:Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;

    invoke-virtual {v0}, Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;->dismiss()V

    iput-object v2, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mWindow_HW:Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;

    :cond_1
    iput-object v2, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mDecInfo:Lcom/ime/framework/engine/bsthwr/DecHandwriting;

    iput-object v2, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mUIThread:Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;

    iput-object v2, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWFullScreenView:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    iput-object v2, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWView:Lcom/ime/framework/engine/bsthwr/TransparentView;

    invoke-static {}, Lcom/sec/android/bsthw/recognition/BstHwr;->hwReleaseDB()V

    return-void
.end method

.method public removeMessage(I)V
    .locals 1

    invoke-direct {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public removeMessageEx(I)V
    .locals 1

    invoke-direct {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public resetFullViewMeasureHeight()V
    .locals 7

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->getFullScreenViewMeaHeight()I

    move-result v3

    iget-boolean v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->DEBUG:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " resetFullViewMeasureHeight oldHWViewHeight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->getScreenHeight()I

    move-result v4

    if-ne v3, v4, :cond_4

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwriteFSMode()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWFullScreenView:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    if-nez v4, :cond_5

    :cond_2
    iget-boolean v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->DEBUG:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->TAG:Ljava/lang/String;

    const-string v5, " resetFullViewMeasureHeight return do noting."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->getScreenHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->getScreenWidth()I

    move-result v2

    invoke-direct {p0, v1}, Lcom/ime/framework/engine/bsthwr/HWManager;->setFullScreenViewMeaHeight(I)V

    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWFullScreenView:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    invoke-virtual {v4, v2, v1}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->measure(II)V

    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWFullScreenView:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    invoke-virtual {v4}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->requestLayout()V

    goto :goto_1
.end method

.method setBeautifyLineStyle()I
    .locals 3

    iget-boolean v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->TAG:Ljava/lang/String;

    const-string v2, "setBeautifyPaintLineStyle"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    invoke-static {}, Lcom/ime/framework/engine/bsthwr/HWManager;->getHandwritingStyle()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/16 v1, 0x19

    invoke-static {v1}, Lcom/sec/android/bsthw/calibeauty/BstHwCb;->cbSetStyle(I)I

    move-result v0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/sec/android/bsthw/calibeauty/BstHwCb;->cbSetStyle(I)I

    move-result v0

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/sec/android/bsthw/calibeauty/BstHwCb;->cbSetStyle(I)I

    move-result v0

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/sec/android/bsthw/calibeauty/BstHwCb;->cbSetStyle(I)I

    move-result v0

    goto :goto_0

    :pswitch_4
    const/16 v1, 0xc

    invoke-static {v1}, Lcom/sec/android/bsthw/calibeauty/BstHwCb;->cbSetStyle(I)I

    move-result v0

    goto :goto_0

    :pswitch_5
    const/16 v1, 0xb

    invoke-static {v1}, Lcom/sec/android/bsthw/calibeauty/BstHwCb;->cbSetStyle(I)I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setBoxView(Lcom/ime/framework/engine/bsthwr/BoxHWView;)V
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWBoxView:Lcom/ime/framework/engine/bsthwr/BoxHWView;

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWBoxView:Lcom/ime/framework/engine/bsthwr/BoxHWView;

    iput-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWView:Lcom/ime/framework/engine/bsthwr/TransparentView;

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWBoxView:Lcom/ime/framework/engine/bsthwr/BoxHWView;

    invoke-direct {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->getHWBoxViewLayout()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ime/framework/engine/bsthwr/BoxHWView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method setCbRect(II)V
    .locals 4

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->getDims()I

    move-result v0

    iget-boolean v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beautify setCbRect dims="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    int-to-float v1, v0

    const v2, 0x40228f5c    # 2.54f

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {p1, p2, v1}, Lcom/sec/android/bsthw/calibeauty/BstHwCb;->cbSetRect(III)I

    return-void
.end method

.method public setHWEngineRect(II)V
    .locals 4

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->getDims()I

    move-result v0

    int-to-float v1, v0

    const v2, 0x40228f5c    # 2.54f

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {p1, p2, v1}, Lcom/sec/android/bsthw/recognition/BstHwr;->hwSetRect(III)I

    iget-boolean v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBoxHWRect width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dims="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setTransparentView(Lcom/ime/framework/engine/bsthwr/FullScreenHWView;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWView:Lcom/ime/framework/engine/bsthwr/TransparentView;

    return-void
.end method

.method public showBoxHandwritingView()V
    .locals 2

    iget-boolean v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->TAG:Ljava/lang/String;

    const-string v1, "showBoxHandwritingView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWBoxView:Lcom/ime/framework/engine/bsthwr/BoxHWView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWBoxView:Lcom/ime/framework/engine/bsthwr/BoxHWView;

    const v1, 0x7f0200d4

    invoke-virtual {v0, v1}, Lcom/ime/framework/engine/bsthwr/BoxHWView;->setBackgroundResource(I)V

    :goto_0
    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWBoxView:Lcom/ime/framework/engine/bsthwr/BoxHWView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ime/framework/engine/bsthwr/BoxHWView;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWBoxView:Lcom/ime/framework/engine/bsthwr/BoxHWView;

    const v1, 0x7f0200d3

    invoke-virtual {v0, v1}, Lcom/ime/framework/engine/bsthwr/BoxHWView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public showBoxHandwritingViewVisible()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWBoxView:Lcom/ime/framework/engine/bsthwr/BoxHWView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWBoxView:Lcom/ime/framework/engine/bsthwr/BoxHWView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ime/framework/engine/bsthwr/BoxHWView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showFSHandwritingViewVisible()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWFullScreenView:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWFullScreenView:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public startRecognize(I)V
    .locals 4

    const/4 v0, 0x1

    int-to-long v2, p1

    invoke-virtual {p0, v0, v2, v3}, Lcom/ime/framework/engine/bsthwr/HWManager;->postMessageEx(IJ)V

    return-void
.end method

.method public unLoadJNILibrary()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ime/framework/engine/bsthwr/HWManager;->JNILibaryLoaded:Z

    return-void
.end method

.method public updateHWRangeAndBoxTitle()V
    .locals 15

    const/4 v14, 0x4

    const/4 v13, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v5, 0x4

    const/4 v4, 0x6

    const/4 v9, 0x0

    iget-boolean v10, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->DEBUG:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateHWRangeAndBoxTitle regType="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v6

    const-string v7, "zh_CN"

    const/16 v8, 0x61f

    iget v10, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->currentMode:I

    if-ne v10, v14, :cond_2

    iget-object v10, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWFullScreenView:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    if-nez v10, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v10, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->currentMode:I

    if-ne v10, v13, :cond_3

    iget-object v10, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mHWBoxView:Lcom/ime/framework/engine/bsthwr/BoxHWView;

    if-eqz v10, :cond_1

    :cond_3
    iget v10, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->currentMode:I

    if-eq v10, v14, :cond_4

    iget v10, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->currentMode:I

    if-ne v10, v13, :cond_1c

    :cond_4
    packed-switch v9, :pswitch_data_0

    :goto_1
    :pswitch_0
    invoke-static {v8, v7}, Lcom/sec/android/bsthw/recognition/BstHwr;->hwSetRange(CLjava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const-string v10, "ko"

    if-ne v6, v10, :cond_6

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->isStorkeMode()Z

    move-result v10

    if-eqz v10, :cond_5

    const/16 v8, 0x617

    :goto_2
    const-string v7, "ko"

    goto :goto_1

    :cond_5
    const/16 v8, 0x637

    goto :goto_2

    :cond_6
    const-string v10, "en"

    if-ne v6, v10, :cond_8

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->isStorkeMode()Z

    move-result v10

    if-eqz v10, :cond_7

    const/16 v8, 0xd7

    :goto_3
    const-string v7, "en"

    goto :goto_1

    :cond_7
    const/16 v8, 0xf7

    goto :goto_3

    :cond_8
    const-string v10, "zh_HK"

    if-ne v6, v10, :cond_a

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->isStorkeMode()Z

    move-result v10

    if-eqz v10, :cond_9

    const v8, 0xe67f

    :goto_4
    const-string v7, "zh_HK"

    goto :goto_1

    :cond_9
    const v8, 0xe6ff

    goto :goto_4

    :cond_a
    const-string v10, "zh_TW"

    if-ne v6, v10, :cond_c

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->isStorkeMode()Z

    move-result v10

    if-eqz v10, :cond_b

    const v8, 0xe67f

    :goto_5
    const-string v7, "zh_TW"

    goto :goto_1

    :cond_b
    const v8, 0xe6ff

    goto :goto_5

    :cond_c
    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/HWManager;->isStorkeMode()Z

    move-result v10

    if-eqz v10, :cond_d

    const/16 v8, 0x461f

    :goto_6
    const-string v7, "zh_CN"

    goto :goto_1

    :cond_d
    const/16 v8, 0x469f

    goto :goto_6

    :pswitch_2
    const-string v10, "ko"

    if-ne v6, v10, :cond_e

    const/4 v8, 0x3

    const-string v7, "ko"

    goto :goto_1

    :cond_e
    const-string v10, "en"

    if-ne v6, v10, :cond_f

    const/16 v8, 0xc3

    const-string v7, "en"

    goto :goto_1

    :cond_f
    const-string v10, "zh_HK"

    if-ne v6, v10, :cond_10

    const/16 v8, 0xc3

    const-string v7, "zh_HK"

    goto :goto_1

    :cond_10
    const-string v10, "zh_TW"

    if-ne v6, v10, :cond_11

    const/16 v8, 0xc3

    const-string v7, "zh_TW"

    goto :goto_1

    :cond_11
    const/4 v8, 0x3

    const-string v7, "zh_CN"

    goto/16 :goto_1

    :pswitch_3
    const-string v10, "ko"

    if-ne v6, v10, :cond_12

    const/16 v8, 0x24

    const-string v7, "ko"

    goto/16 :goto_1

    :cond_12
    const-string v10, "en"

    if-ne v6, v10, :cond_13

    const/16 v8, 0x24

    const-string v7, "en"

    goto/16 :goto_1

    :cond_13
    const-string v10, "zh_HK"

    if-ne v6, v10, :cond_14

    const/16 v8, 0x84

    const-string v7, "zh_HK"

    goto/16 :goto_1

    :cond_14
    const-string v10, "zh_TW"

    if-ne v6, v10, :cond_15

    const/16 v8, 0x84

    const-string v7, "zh_TW"

    goto/16 :goto_1

    :cond_15
    const/16 v8, 0x84

    const-string v7, "zh_CN"

    goto/16 :goto_1

    :pswitch_4
    const/16 v8, 0x2000

    const-string v7, "zh_CN"

    goto/16 :goto_1

    :pswitch_5
    const-string v10, "ko"

    if-ne v6, v10, :cond_16

    const/16 v8, 0x10

    const-string v7, "ko"

    goto/16 :goto_1

    :cond_16
    const-string v10, "en"

    if-ne v6, v10, :cond_17

    const/16 v8, 0x10

    const-string v7, "en"

    goto/16 :goto_1

    :cond_17
    const/16 v8, 0x18

    const-string v7, "zh_CN"

    goto/16 :goto_1

    :pswitch_6
    const-string v10, "ko"

    if-ne v6, v10, :cond_18

    const/16 v8, 0x600

    const-string v7, "ko"

    goto/16 :goto_1

    :cond_18
    const-string v10, "en"

    if-ne v6, v10, :cond_19

    const/16 v8, 0xc3

    const-string v7, "en"

    goto/16 :goto_1

    :cond_19
    const-string v10, "zh_HK"

    if-ne v6, v10, :cond_1a

    const v8, 0xe600

    const-string v7, "zh_HK"

    goto/16 :goto_1

    :cond_1a
    const-string v10, "zh_TW"

    if-ne v6, v10, :cond_1b

    const v8, 0xe600

    const-string v7, "zh_TW"

    goto/16 :goto_1

    :cond_1b
    const/16 v8, 0x4600

    const-string v7, "zh_CN"

    goto/16 :goto_1

    :cond_1c
    const/16 v8, 0x600

    const-string v7, "zh_CN"

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public updateToken()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mWindow_HW:Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->TAG:Ljava/lang/String;

    const-string v1, "---before---setToken---"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mWindow_HW:Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getValidWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;->setToken(Landroid/os/IBinder;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager;->TAG:Ljava/lang/String;

    const-string v1, "Exception updateToken Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
