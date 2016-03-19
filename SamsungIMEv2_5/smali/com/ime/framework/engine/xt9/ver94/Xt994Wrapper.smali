.class public Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;
.super Lcom/ime/framework/engine/AbstractInputEngine;
.source "Xt994Wrapper.java"

# interfaces
.implements Lcom/ime/framework/engine/xt9/Xt9DBController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper$hotWordEditor;,
        Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper$cdbInstallor;
    }
.end annotation


# static fields
.field public static final ASDB_DB_TYPE:B = 0x2t

.field private static final ASDB_FILE_NAME:Ljava/lang/String; = "xT9ASdbData.dat"

.field private static final ASDB_SIZE:I = 0x2800

.field private static final ASDB_WORD_SIZE:I = 0x40

.field public static final CDB_DB_TYPE:B = 0x1t

.field private static final CDB_FILE_NAME:Ljava/lang/String; = "xT9CdbData.dat"

.field private static final CDB_SIZE:I = 0x800

.field private static final DB_DIR:Ljava/lang/String; = "xT9DB"

.field public static final DLM_DB_TYPE:B = 0x4t

.field private static final DLM_FILE_NAME:Ljava/lang/String; = "xT9DLMData.dat"

.field private static DLM_SIZE:I = 0x0

.field private static final FORWARD:B = 0x0t

.field private static ID:I = 0x0

.field private static INPUT_MODE_AMBIG:I = 0x0

.field private static INPUT_MODE_MULTITAP:I = 0x0

.field public static final KUDB_DB_TYPE:B = 0x3t

.field private static final KUDB_FILE_NAME:Ljava/lang/String; = "xT9KUdbData.dat"

.field private static final KUDB_SIZE:I = 0x5000

.field public static final SMT_DB_TYPE:B = 0x5t

.field private static final SMT_FILE_NAME:Ljava/lang/String; = "xT9SMTData.dat"

.field private static SMT_SIZE:I = 0x0

.field private static SMT_SIZE_ARR:[I = null

.field private static final SPELL_BILINGUAL:Ljava/lang/String; = "\u82f1\u6587"

.field public static final UDB_DB_TYPE:B = 0x0t

.field private static final UDB_FILE_NAME:Ljava/lang/String; = "xT9UdbData.dat"

.field private static final UDB_SIZE:I = 0x3000

.field private static final UDB_WORD_SIZE:I = 0x40

.field public static final ZHUDB_DB_TYPE:B = 0x6t

.field private static final ZHUDB_FILE_NAME:Ljava/lang/String; = "xT9ZHUdbData.dat"

.field public static final ZTUDB_DB_TYPE:B = 0x7t

.field private static final ZTUDB_FILE_NAME:Ljava/lang/String; = "xT9ZTUdbData.dat"

.field private static mASDBBuffer:[B

.field private static mCDBBuffer:[B

.field private static mDLMBuffer:[B

.field private static mDLMWordBuf:[C

.field private static mKUDBBuffer:[B

.field private static mSMTBuffer:[B

.field private static mUDBBuffer:[B

.field private static mWordBuf:[S

.field private static mWordLengthBuf:[S

.field private static mZHUDBBuffer:[B

.field private static mZHWordBuf:[S

.field private static mZHWordLengthBuf:[S

.field private static mZTUDBBuffer:[B

.field private static mZTWordBuf:[S

.field private static mZTWordLengthBuf:[S


# instance fields
.field private final BPMF_KEYCODES:[S

.field private final EMPTY_MULTITAP_SEQ:[S

.field private final ET9CPSYLLABLEDELIMITER:C

.field private final EXTEND_KEYMAP_AR:[S

.field private final EXTEND_KEYMAP_AZ:[S

.field private final EXTEND_KEYMAP_BG:[S

.field private final EXTEND_KEYMAP_DA:[S

.field private final EXTEND_KEYMAP_ET:[S

.field private final EXTEND_KEYMAP_FA:[S

.field private final EXTEND_KEYMAP_HE:[S

.field private final EXTEND_KEYMAP_HY:[S

.field private final EXTEND_KEYMAP_IS:[S

.field private final EXTEND_KEYMAP_KO:[S

.field private final EXTEND_KEYMAP_LT:[S

.field private final EXTEND_KEYMAP_RU:[S

.field private final EXTEND_KEYMAP_SQ:[S

.field private final EXTEND_KEYMAP_UR:[S

.field private final KEYMAP_PHONEPAD:[S

.field private final KEYMAP_PHONEPAD_STROKE_ZH_CN:[S

.field private final KEYMAP_PHONEPAD_TH:[S

.field private final KEYMAP_QWERTY:[S

.field private final KEYMAP_QWERTY_EL:[S

.field private final KEYMAP_QWERTY_TH:[S

.field private final KEYMAP_QWERTY_TR:[S

.field private final KEYMAP_QWERTY_TR_F:[S

.field private final KEYMAP_QWERTY_VI:[S

.field private final KEYMAP_QWERTY_VI_9:[S

.field private final STROKE_CHARSET:[C

.field private final XT9_9:Ljava/lang/String;

.field private final XT9_9_10:Ljava/lang/String;

.field private final XT9_9_13:Ljava/lang/String;

.field private final XT9_9_4:Ljava/lang/String;

.field private final XT9_9_8:Ljava/lang/String;

.field private mACServiceHandler:Landroid/os/Handler;

.field private final mActiveWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

.field private mBestCandidate:Ljava/lang/CharSequence;

.field private mBilingualInputLanguage:I

.field private mCDBMgr:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;

.field private final mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

.field private final mCount:[S

.field private mCurrentKeyboard:Lcom/ime/framework/view/Keyboard;

.field private mExclusionPattern:Ljava/util/regex/Pattern;

.field private mFirstKdbNum:I

.field private mFirstKdbPage:I

.field private mFlagForAutoReplacement:Z

.field private mGap:I

.field private final mHangulWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

.field private mHotwordMgr:Lcom/ime/framework/dbmanager/hotword/HotWordMgr;

.field private final mIMEInfo:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_IMEInfo;

.field private mImeInputLanguage:I

.field private mInitialized:Z

.field private mInputLanguageId:S

.field private mIsActiveWordStatusChangable:Z

.field private mIsAcuteAccent:Z

.field private mIsDisableAutoCorrection:Z

.field private mIsKoreanCoreInit:Z

.field private mIsReConstruction:Z

.field private mIsRecapture:Z

.field private mIsReselection:Z

.field private mIsReselectionWord:Ljava/lang/StringBuilder;

.field private mIsTraceInput:Z

.field private mIsVZW:Z

.field private final mMidashigoWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;

.field private mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

.field private mShiftState:B

.field private final mShortcutBuf:[S

.field private final mShortcutLengthBuf:[S

.field private final mSimpleWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;

.field private final mSubstitutionBuf:[S

.field private final mSubstitutionLengthBuf:[S

.field private mWordInfoData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private mWordInformation:Ljava/lang/Byte;

.field private mXt9Version:I

.field private mtoneLastidx:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x3000

    const/16 v2, 0x40

    const/4 v1, 0x1

    const/4 v0, 0x0

    sput v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->INPUT_MODE_MULTITAP:I

    sput v1, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->INPUT_MODE_AMBIG:I

    sput v1, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->ID:I

    new-array v0, v1, [I

    sput-object v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->SMT_SIZE_ARR:[I

    new-array v0, v3, [B

    sput-object v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mUDBBuffer:[B

    new-array v0, v3, [B

    sput-object v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mZHUDBBuffer:[B

    new-array v0, v3, [B

    sput-object v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mZTUDBBuffer:[B

    new-array v0, v2, [S

    sput-object v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mWordBuf:[S

    new-array v0, v1, [S

    sput-object v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mWordLengthBuf:[S

    new-array v0, v2, [S

    sput-object v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mZHWordBuf:[S

    new-array v0, v1, [S

    sput-object v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mZHWordLengthBuf:[S

    new-array v0, v2, [S

    sput-object v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mZTWordBuf:[S

    new-array v0, v1, [S

    sput-object v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mZTWordLengthBuf:[S

    new-array v0, v2, [C

    sput-object v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMWordBuf:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/16 v3, 0x1b

    const/4 v2, 0x1

    const/16 v1, 0x1a

    invoke-direct {p0}, Lcom/ime/framework/engine/AbstractInputEngine;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->KEYMAP_PHONEPAD:[S

    const/16 v0, 0xb

    new-array v0, v0, [S

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->KEYMAP_PHONEPAD_TH:[S

    const/4 v0, 0x6

    new-array v0, v0, [S

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->KEYMAP_PHONEPAD_STROKE_ZH_CN:[S

    new-array v0, v1, [S

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->KEYMAP_QWERTY:[S

    const/16 v0, 0x20

    new-array v0, v0, [S

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_HY:[S

    new-array v0, v1, [S

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_SQ:[S

    const/4 v0, 0x5

    new-array v0, v0, [S

    fill-array-data v0, :array_6

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_BG:[S

    new-array v0, v1, [S

    fill-array-data v0, :array_7

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_DA:[S

    new-array v0, v1, [S

    fill-array-data v0, :array_8

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_IS:[S

    const/4 v0, 0x7

    new-array v0, v0, [S

    fill-array-data v0, :array_9

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_RU:[S

    const/4 v0, 0x7

    new-array v0, v0, [S

    fill-array-data v0, :array_a

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_AR:[S

    const/16 v0, 0x8

    new-array v0, v0, [S

    fill-array-data v0, :array_b

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_FA:[S

    const/16 v0, 0xf

    new-array v0, v0, [S

    fill-array-data v0, :array_c

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_UR:[S

    new-array v0, v2, [S

    aput-short v1, v0, v5

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_HE:[S

    const/16 v0, 0x33

    new-array v0, v0, [S

    fill-array-data v0, :array_d

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_KO:[S

    new-array v0, v1, [S

    fill-array-data v0, :array_e

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_ET:[S

    new-array v0, v3, [S

    fill-array-data v0, :array_f

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->KEYMAP_QWERTY_VI:[S

    new-array v0, v3, [S

    fill-array-data v0, :array_10

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->KEYMAP_QWERTY_VI_9:[S

    new-array v0, v3, [S

    fill-array-data v0, :array_11

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->KEYMAP_QWERTY_TH:[S

    new-array v0, v1, [S

    fill-array-data v0, :array_12

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_LT:[S

    new-array v0, v1, [S

    fill-array-data v0, :array_13

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_AZ:[S

    new-array v0, v1, [S

    fill-array-data v0, :array_14

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->KEYMAP_QWERTY_EL:[S

    new-array v0, v1, [S

    fill-array-data v0, :array_15

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->KEYMAP_QWERTY_TR:[S

    new-array v0, v1, [S

    fill-array-data v0, :array_16

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->KEYMAP_QWERTY_TR_F:[S

    const/4 v0, 0x6

    new-array v0, v0, [C

    fill-array-data v0, :array_17

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->STROKE_CHARSET:[C

    const/4 v0, 0x5

    new-array v0, v0, [S

    fill-array-data v0, :array_18

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->BPMF_KEYCODES:[S

    const/16 v0, 0x27

    iput-char v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->ET9CPSYLLABLEDELIMITER:C

    new-instance v0, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    invoke-direct {v0}, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mActiveWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mWordInfoData:Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mWordInformation:Ljava/lang/Byte;

    new-instance v0, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;

    invoke-direct {v0}, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSimpleWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;

    new-instance v0, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    invoke-direct {v0}, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    new-instance v0, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    invoke-direct {v0}, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    new-instance v0, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;

    invoke-direct {v0}, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mMidashigoWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;

    new-instance v0, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_IMEInfo;

    invoke-direct {v0}, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_IMEInfo;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIMEInfo:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_IMEInfo;

    const/high16 v0, 0x656e0000

    iput v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mtoneLastidx:I

    new-array v0, v2, [S

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCount:[S

    const/16 v0, 0x40

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mShortcutBuf:[S

    new-array v0, v2, [S

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mShortcutLengthBuf:[S

    const/16 v0, 0x40

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSubstitutionBuf:[S

    new-array v0, v2, [S

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSubstitutionLengthBuf:[S

    new-array v0, v5, [S

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EMPTY_MULTITAP_SEQ:[S

    const-string v0, "XT9 V09"

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->XT9_9:Ljava/lang/String;

    const-string v0, "XT9 V09.06"

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->XT9_9_4:Ljava/lang/String;

    const-string v0, "XT9 V09.08"

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->XT9_9_8:Ljava/lang/String;

    const-string v0, "XT9 V09.10"

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->XT9_9_10:Ljava/lang/String;

    const-string v0, "XT9 V09.13"

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->XT9_9_13:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsReselectionWord:Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ime/framework/common/PrivateImeOptionsControllerImpl;->getInstance()Lcom/ime/framework/common/PrivateImeOptionsController;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

    const-string v0, "\\d{4,}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mExclusionPattern:Ljava/util/regex/Pattern;

    iput-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCDBMgr:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;

    iput-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHotwordMgr:Lcom/ime/framework/dbmanager/hotword/HotWordMgr;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mACServiceHandler:Landroid/os/Handler;

    return-void

    :array_0
    .array-data 2
        0x9s
        0x0s
        0x1s
        0x2s
        0x3s
        0x4s
        0x5s
        0x6s
        0x7s
        0x8s
    .end array-data

    :array_1
    .array-data 2
        0xas
        0x0s
        0x1s
        0x2s
        0x3s
        0x4s
        0x5s
        0x6s
        0x7s
        0x8s
        0x9s
    .end array-data

    nop

    :array_2
    .array-data 2
        0x1s
        0x2s
        0x3s
        0x4s
        0x5s
        0x6s
    .end array-data

    :array_3
    .array-data 2
        0xas
        0x18s
        0x16s
        0xcs
        0x2s
        0xds
        0xes
        0xfs
        0x7s
        0x10s
        0x11s
        0x12s
        0x1as
        0x19s
        0x8s
        0x9s
        0x0s
        0x3s
        0xbs
        0x4s
        0x6s
        0x17s
        0x1s
        0x15s
        0x5s
        0x14s
    .end array-data

    :array_4
    .array-data 2
        0x25s
        0x1as
        -0x1s
        -0x1s
        0x21s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        0x1es
        -0x1s
        0x1fs
        0x1ds
        0x1bs
        -0x1s
        0x22s
        -0x1s
        0x27s
        0x1cs
        0x26s
        0x20s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        0x24s
        -0x1s
        -0x1s
        0x23s
    .end array-data

    :array_5
    .array-data 2
        0xbs
        0x19s
        0x17s
        0xds
        0x2s
        0xes
        0xfs
        0x10s
        0x7s
        0x11s
        0x12s
        0x13s
        0x1bs
        0x1as
        0x8s
        0x9s
        0x0s
        0x3s
        0xcs
        0x4s
        0x6s
        0x18s
        0x1s
        0x16s
        0x5s
        0x15s
    .end array-data

    :array_6
    .array-data 2
        0x1as
        0x1bs
        0x1cs
        0x1ds
        0x1es
    .end array-data

    nop

    :array_7
    .array-data 2
        0xbs
        0x1as
        0x18s
        0xds
        0x2s
        0xes
        0xfs
        0x10s
        0x7s
        0x11s
        0x12s
        0x13s
        0x1cs
        0x1bs
        0x8s
        0x9s
        0x0s
        0x3s
        0xcs
        0x4s
        0x6s
        0x19s
        0x1s
        0x17s
        0x5s
        0x16s
    .end array-data

    :array_8
    .array-data 2
        0xbs
        0x19s
        0x17s
        0xds
        0x2s
        0xes
        0xfs
        0x10s
        0x7s
        0x11s
        0x12s
        0x13s
        0x1bs
        0x1as
        0x8s
        0x9s
        0x0s
        0x3s
        0xcs
        0x4s
        0x6s
        0x18s
        0x1s
        0x16s
        0x5s
        0x15s
    .end array-data

    :array_9
    .array-data 2
        0x1as
        0x1bs
        0x1cs
        0x1ds
        0x1es
        0x1fs
        0x20s
    .end array-data

    nop

    :array_a
    .array-data 2
        0x1as
        0x1bs
        0x1cs
        0x1ds
        0x1es
        0x1fs
        0x20s
    .end array-data

    nop

    :array_b
    .array-data 2
        0x1as
        0x0s
        0x4s
        0xfs
        0x14s
        0x15s
        0x17s
        0x1as
    .end array-data

    :array_c
    .array-data 2
        0x1as
        0x3s
        0x4s
        0x6s
        0xas
        0xbs
        0xcs
        0xes
        0xfs
        0x10s
        0x14s
        0x15s
        0x16s
        0x17s
        0x19s
    .end array-data

    nop

    :array_d
    .array-data 2
        0x3s
        -0x1s
        -0x1s
        0xbs
        -0x1s
        -0x1s
        0x2s
        -0x1s
        0xds
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        0xas
        0x0s
        -0x1s
        -0x1s
        0x4s
        -0x1s
        0xcs
        0x1s
        -0x1s
        0x15s
        0x13s
        0x14s
        0x16s
        0xes
        0x11s
        0x8s
        0x7s
        -0x1s
        0x10s
        0x9s
        0x6s
        -0x1s
        0xfs
        -0x1s
        -0x1s
        -0x1s
        0x5s
        0x18s
        -0x1s
        -0x1s
        -0x1s
        0x17s
        0x19s
        -0x1s
        0x12s
    .end array-data

    nop

    :array_e
    .array-data 2
        0xcs
        0x1bs
        0x19s
        0xes
        0x2s
        0xfs
        0x10s
        0x11s
        0x7s
        0x12s
        0x13s
        0x14s
        0x1ds
        0x1cs
        0x8s
        0x9s
        0x0s
        0x3s
        0xds
        0x4s
        0x6s
        0x1as
        0x1s
        0x18s
        0x5s
        0x17s
    .end array-data

    :array_f
    .array-data 2
        0xas
        0x18s
        0x16s
        0xcs
        0x2s
        0xds
        0xes
        0xfs
        0x7s
        0x10s
        0x11s
        0x12s
        0x1as
        0x19s
        0x8s
        0x9s
        0x0s
        0x3s
        0xbs
        0x4s
        0x6s
        0x17s
        0x1s
        0x15s
        0x5s
        0x14s
        0x13s
    .end array-data

    nop

    :array_10
    .array-data 2
        0xas
        0x17s
        0x15s
        0xcs
        0x2s
        0xds
        0xes
        0xfs
        0x7s
        0x10s
        0x11s
        0x12s
        0x19s
        0x18s
        0x8s
        0x9s
        0x0s
        0x3s
        0xbs
        0x4s
        0x6s
        0x16s
        0x1s
        0x14s
        0x5s
        0x13s
        0x13s
    .end array-data

    nop

    :array_11
    .array-data 2
        0xas
        0x18s
        0x16s
        0xcs
        0x2s
        0xds
        0xes
        0xfs
        0x7s
        0x10s
        0x11s
        0x12s
        0x1as
        0x19s
        0x8s
        0x9s
        0x0s
        0x3s
        0xbs
        0x4s
        0x6s
        0x17s
        0x1s
        0x15s
        0x5s
        0x14s
        0x13s
    .end array-data

    nop

    :array_12
    .array-data 2
        0x13s
        0x20s
        0x1es
        0x15s
        0xbs
        0x16s
        0x17s
        0x18s
        0x10s
        0x19s
        0x1as
        0x1bs
        0x22s
        0x21s
        0x11s
        0x12s
        0x9s
        0xcs
        0x14s
        0xds
        0xfs
        0x1fs
        0xas
        0x1ds
        0xes
        0x1cs
    .end array-data

    :array_13
    .array-data 2
        0xcs
        0x1bs
        0x19s
        0xes
        0x2s
        0xfs
        0x10s
        0x11s
        0x7s
        0x12s
        0x13s
        0x14s
        0x1ds
        0x1cs
        0x8s
        0x9s
        0x0s
        0x3s
        0xds
        0x4s
        0x6s
        0x1as
        0x1s
        0x18s
        0x5s
        0x17s
    .end array-data

    :array_14
    .array-data 2
        0x9s
        0x16s
        0x14s
        0xbs
        0x1s
        0xcs
        0xds
        0xes
        0x6s
        0xfs
        0x10s
        0x11s
        0x18s
        0x17s
        0x7s
        0x8s
        -0x1s
        0x2s
        0xas
        0x3s
        0x5s
        0x15s
        0x0s
        0x13s
        0x4s
        0x12s
    .end array-data

    :array_15
    .array-data 2
        0xcs
        0x1bs
        0x19s
        0xes
        0x2s
        0xfs
        0x10s
        0x11s
        0x16s
        0x12s
        0x13s
        0x14s
        0x1ds
        0x1cs
        0x8s
        0x9s
        0x0s
        0x3s
        0xds
        0x4s
        0x6s
        0x1as
        0x1s
        0x18s
        0x5s
        0x17s
    .end array-data

    :array_16
    .array-data 2
        0xfs
        0x1fs
        0x1bs
        0x5s
        0xes
        0x0s
        0x1s
        0x8s
        0xds
        0x18s
        0x12s
        0x14s
        0x13s
        0x7s
        0x4s
        0x9s
        0xas
        0x6s
        0x1es
        0x11s
        0xcs
        0x1as
        0xbs
        0x17s
        0x15s
        0x1ds
    .end array-data

    :array_17
    .array-data 2
        0x4e00s
        0x4e28s
        0x4e3fs
        0x4e36s
        0x4e5bs
        0x3fs
    .end array-data

    :array_18
    .array-data 2
        0xb1s
        0xb2s
        0xb3s
        0xb4s
        0xb5s
    .end array-data
.end method

.method static synthetic access$000(Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;)Lcom/ime/framework/dbmanager/hotword/HotWordMgr;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHotwordMgr:Lcom/ime/framework/dbmanager/hotword/HotWordMgr;

    return-object v0
.end method

.method static synthetic access$302(Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;Lcom/ime/framework/dbmanager/hotword/HotWordMgr;)Lcom/ime/framework/dbmanager/hotword/HotWordMgr;
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHotwordMgr:Lcom/ime/framework/dbmanager/hotword/HotWordMgr;

    return-object p1
.end method

.method static synthetic access$400(Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;)Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCDBMgr:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;

    return-object v0
.end method

.method static synthetic access$602(Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;)Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCDBMgr:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;

    return-object p1
.end method

.method static synthetic access$700(Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method private activateChineseEmoji()I
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-short v2, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    packed-switch v2, :pswitch_data_0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPMsdbActivate(Landroid/content/res/AssetManager;Ljava/lang/String;Z)S

    move-result v1

    :cond_0
    return v1

    :pswitch_0
    const-string v0, "EmojiBinary_CN.msdb"

    goto :goto_0

    :pswitch_1
    const-string v0, "EmojiBinary_TW.msdb"

    goto :goto_0

    :pswitch_2
    const-string v0, "EmojiBinary_HK.msdb"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xe0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private changeKDBNum(I)V
    .locals 16

    const/4 v12, 0x0

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDB_InvalidateLoadedKdbInfo()S

    move-result v12

    if-eqz v12, :cond_0

    const-string v13, "SamsungIME"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ET9KDB_InvalidateLoadedKdbInfo : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v13, 0x1

    new-array v5, v13, [S

    const/4 v13, 0x1

    new-array v8, v13, [S

    invoke-static {v5, v8}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDB_GetKdbNum([S[S)S

    move-result v12

    if-eqz v12, :cond_1

    const-string v13, "SamsungIME"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ET9KDB_GetKdbNum : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v13, 0x1

    new-array v7, v13, [S

    const/4 v13, 0x1

    new-array v10, v13, [S

    invoke-static {v7, v10}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDB_GetPageNum([S[S)S

    move-result v12

    if-eqz v12, :cond_2

    const-string v13, "SamsungIME"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ET9KDB_GetPageNum : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v13, 0x1

    new-array v6, v13, [S

    const/4 v13, 0x1

    new-array v9, v13, [S

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-short v14, v6, v13

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-short v14, v9, v13

    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v14, 0xe1

    if-eq v13, v14, :cond_3

    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v14, 0xe0

    if-eq v13, v14, :cond_3

    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v14, 0xe2

    if-ne v13, v14, :cond_a

    :cond_3
    const/4 v13, 0x0

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPGetChineseLdbNum()S

    move-result v14

    aput-short v14, v6, v13

    :cond_4
    :goto_0
    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v14, 0x12

    if-ne v13, v14, :cond_5

    const/4 v13, 0x0

    const/4 v14, 0x0

    aget-short v14, v6, v14

    const v15, 0xff00

    and-int/2addr v14, v15

    move-object/from16 v0, p0

    iget-short v15, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    or-int/2addr v14, v15

    int-to-short v14, v14

    aput-short v14, v6, v13

    :cond_5
    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    const/4 v13, 0x7

    move/from16 v0, p1

    if-eq v0, v13, :cond_6

    const/16 v13, 0x8

    move/from16 v0, p1

    if-ne v0, v13, :cond_7

    :cond_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v13, "nl"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    const-string v13, "BE"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v14, 0x13

    if-ne v13, v14, :cond_7

    const/4 v2, 0x1

    :cond_7
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getCurrentKDBNum()I

    move-result v13

    int-to-short v1, v13

    invoke-direct/range {p0 .. p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getCurrentKDBPageNum()I

    move-result v13

    int-to-short v2, v13

    const/4 v13, 0x0

    const/4 v14, 0x0

    aget-short v14, v10, v14

    invoke-static {v1, v2, v13, v14}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetKdbNum(SSSS)S

    move-result v12

    if-eqz v12, :cond_8

    const/4 v13, 0x0

    const/4 v14, 0x0

    aget-short v14, v10, v14

    invoke-static {v1, v2, v13, v14}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetKdbNum(SSSS)S

    move-result v12

    :cond_8
    move-object/from16 v0, p0

    iput v1, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mFirstKdbNum:I

    if-eqz v12, :cond_9

    const-string v13, "SamsungIME"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ET9KDB_SetKdbNum : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void

    :cond_a
    invoke-static {v6, v9}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWLdbGetLanguage([S[S)S

    move-result v12

    if-eqz v12, :cond_4

    const-string v13, "SamsungIME"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ET9AWLdbGetLanguage : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    const-string v13, "CH"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v14, 0x10

    if-ne v13, v14, :cond_7

    const/4 v2, 0x1

    goto :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v14, 0x60

    if-ne v13, v14, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v13}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v2, 0x1

    goto :goto_1
.end method

.method private checkExclusionPattern(Ljava/lang/String;)Z
    .locals 2

    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mExclusionPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private deactivateChineseEmoji()I
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {v1, v1, v0}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPMsdbActivate(Landroid/content/res/AssetManager;Ljava/lang/String;Z)S

    move-result v0

    return v0
.end method

.method private explicitSymbol(I)S
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_0
    :goto_0
    int-to-short v2, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v3, 0x0

    invoke-static {v2, v4, v5, v0, v3}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AddExplicitSymb(SJBB)S

    move-result v1

    if-eqz v1, :cond_1

    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ET9AddExplicitSymb : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1

    :cond_2
    iget-byte v2, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mShiftState:B

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getAWInputWords(I)Ljava/lang/CharSequence;
    .locals 14

    const/16 v5, 0x40

    const/4 v9, 0x0

    const/4 v13, -0x1

    const/4 v12, 0x1

    iget v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSuggestionCount:I

    if-lez v6, :cond_11

    if-ge p1, v6, :cond_1

    move v1, p1

    :goto_0
    iget-object v10, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mActiveWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    int-to-byte v11, v1

    invoke-static {v10, v11}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWSelLstGetWord(Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;B)S

    move-result v8

    const/16 v10, 0x22

    if-ne v8, v10, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->updateSelectList()I

    iget-object v10, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mActiveWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    int-to-byte v11, v1

    invoke-static {v10, v11}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWSelLstGetWord(Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;B)S

    move-result v8

    :cond_0
    if-eqz v8, :cond_2

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ET9AWSelLstGetWord : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, ""

    :goto_1
    return-object v9

    :cond_1
    move v1, v9

    goto :goto_0

    :cond_2
    iget-object v10, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mActiveWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-short v10, v10, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->wWordLen:S

    if-ge v10, v5, :cond_3

    iget-object v10, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mActiveWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-short v5, v10, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->wWordLen:S

    :cond_3
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v10, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v3

    iget-object v10, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mActiveWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-short v10, v10, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->wSubstitutionLen:S

    if-eqz v10, :cond_4

    if-eqz v3, :cond_4

    iget-object v10, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v11, "SETTINGS_DEFAULT_AUTOSUBSTITUTION"

    invoke-interface {v10, v11, v9}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v0, 0x0

    :goto_2
    iget-object v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mActiveWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-short v9, v9, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->wSubstitutionLen:S

    if-ge v0, v9, :cond_7

    iget-object v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mActiveWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-object v9, v9, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->sSubstitution:[S

    aget-short v9, v9, v0

    int-to-char v9, v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-object v10, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v11, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    invoke-interface {v10, v11, v9}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v7

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v5, :cond_7

    iget-byte v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mShiftState:B

    if-ne v9, v12, :cond_6

    if-nez v3, :cond_6

    iget-short v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v10, 0x1f

    if-ne v9, v10, :cond_5

    if-eqz v7, :cond_5

    iget-object v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mActiveWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-object v9, v9, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->sWord:[S

    aget-short v9, v9, v0

    int-to-char v9, v9

    invoke-direct {p0, v9}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->toUpperCaseOfTurkish(I)C

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    iget-object v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mActiveWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-object v9, v9, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->sWord:[S

    aget-short v9, v9, v0

    int-to-char v9, v9

    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_6
    iget-object v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mActiveWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-object v9, v9, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->sWord:[S

    aget-short v9, v9, v0

    int-to-char v9, v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_7
    iget v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mActiveIndex:I

    if-eqz v9, :cond_8

    iget v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mActiveIndex:I

    if-ne v9, p1, :cond_8

    iget-object v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/ime/framework/common/InputManager;->addWordIntoTypoList(Ljava/lang/String;)V

    :cond_8
    iget-object v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    if-eqz v2, :cond_9

    const/16 v9, 0x8

    if-ne v2, v9, :cond_a

    :cond_9
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v9

    if-eqz v9, :cond_b

    iget-boolean v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsTraceInput:Z

    if-eqz v9, :cond_b

    if-nez p1, :cond_a

    iget v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSuggestionCount:I

    if-ne v9, v12, :cond_a

    iput v13, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mActiveIndex:I

    :cond_a
    :goto_5
    new-instance v9, Ljava/lang/Byte;

    iget-object v10, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mActiveWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-byte v10, v10, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->bWordSource:B

    invoke-direct {v9, v10}, Ljava/lang/Byte;-><init>(B)V

    iput-object v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mWordInformation:Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    :cond_b
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v9

    if-nez v9, :cond_c

    iget-boolean v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsReConstruction:Z

    if-nez v9, :cond_c

    iget-boolean v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsReselection:Z

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsReselectionWord:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    iget v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSuggestionCount:I

    if-ne v9, v12, :cond_a

    iput v13, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mActiveIndex:I

    goto :goto_5

    :cond_c
    iget-object v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->isEnableAutoCorrection()Z

    move-result v9

    if-eqz v9, :cond_d

    iget-short v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v10, 0x12

    if-ne v9, v10, :cond_e

    :cond_d
    if-nez p1, :cond_a

    iget v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSuggestionCount:I

    if-ne v9, v12, :cond_a

    iput v13, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mActiveIndex:I

    goto :goto_5

    :cond_e
    if-ne p1, v12, :cond_f

    iget-boolean v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mFlagForAutoReplacement:Z

    if-eqz v9, :cond_f

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mBestCandidate:Ljava/lang/CharSequence;

    :cond_f
    if-nez p1, :cond_a

    iget v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSuggestionCount:I

    if-ne v9, v12, :cond_10

    iput v13, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mActiveIndex:I

    goto :goto_5

    :cond_10
    invoke-virtual {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->hasInputSequence()Z

    move-result v9

    if-eqz v9, :cond_a

    iget v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mActiveIndex:I

    if-eqz v9, :cond_a

    invoke-virtual {p0, v12}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setXt9AutoReplacementCondition(Z)V

    iput-boolean v12, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mFlagForAutoReplacement:Z

    goto :goto_5

    :cond_11
    const-string v9, ""

    goto/16 :goto_1
.end method

.method private getCPInputWords(I)Ljava/lang/CharSequence;
    .locals 11

    const/4 v9, 0x0

    const/16 v5, 0x20

    const/4 v8, 0x0

    iget v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSuggestionCount:I

    if-lez v6, :cond_5

    iget-object v10, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v10

    if-eqz v10, :cond_0

    move v2, p1

    :goto_0
    new-instance v0, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;

    invoke-direct {v0}, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;-><init>()V

    const/4 v10, 0x1

    new-array v3, v10, [B

    int-to-short v10, v2

    invoke-static {v10, v0, v9, v3}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPGetPhrase(SLcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;[B)S

    move-result v7

    new-instance v10, Ljava/lang/Byte;

    aget-byte v8, v3, v8

    invoke-direct {v10, v8}, Ljava/lang/Byte;-><init>(B)V

    iput-object v10, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mWordInformation:Ljava/lang/Byte;

    if-eqz v7, :cond_2

    move-object v8, v9

    :goto_1
    return-object v8

    :cond_0
    if-ge p1, v6, :cond_1

    move v2, p1

    goto :goto_0

    :cond_1
    move v2, v8

    goto :goto_0

    :cond_2
    iget-byte v8, v0, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->bLen:B

    if-ge v8, v5, :cond_3

    iget-byte v5, v0, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->bLen:B

    :cond_3
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-byte v8, v0, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->bLen:B

    if-eqz v8, :cond_4

    const/4 v1, 0x0

    :goto_2
    iget-byte v8, v0, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->bLen:B

    if-ge v1, v8, :cond_4

    iget-object v8, v0, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->pSymbs:[C

    aget-char v8, v8, v1

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_5
    const-string v8, ""

    goto :goto_1
.end method

.method private getCurrentKDBNum()I
    .locals 7

    const/16 v6, 0xe1

    const/16 v5, 0xe0

    iget-short v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    or-int/lit16 v0, v3, 0x700

    iget-object v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_0
    iget-short v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    if-ne v3, v6, :cond_1

    iget-object v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isChineseStrokeModeOn()Z

    move-result v3

    if-nez v3, :cond_1

    iget-short v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    or-int/lit16 v0, v3, 0xa00

    :goto_0
    return v0

    :cond_1
    iget-short v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    if-ne v3, v5, :cond_2

    iget-object v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isChineseStrokeModeOn()Z

    move-result v3

    if-nez v3, :cond_2

    iget-short v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    or-int/lit16 v0, v3, 0xb00

    goto :goto_0

    :cond_2
    iget-short v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v4, 0x12

    if-ne v3, v4, :cond_4

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getPreferenceInputMethodOnKor()I

    move-result v1

    invoke-virtual {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getXt9Version()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_3

    packed-switch v1, :pswitch_data_0

    iget-short v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    or-int/lit16 v0, v3, 0x600

    goto :goto_0

    :pswitch_0
    iget-short v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    or-int/lit16 v0, v3, 0x1200

    goto :goto_0

    :pswitch_1
    iget-short v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    or-int/lit16 v0, v3, 0x1100

    goto :goto_0

    :pswitch_2
    iget-short v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    or-int/lit16 v0, v3, 0x112

    goto :goto_0

    :cond_3
    iget-short v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    or-int/lit16 v0, v3, 0x600

    goto :goto_0

    :cond_4
    iget-short v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    or-int/lit16 v0, v3, 0x600

    goto :goto_0

    :cond_5
    iget-short v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    if-ne v3, v6, :cond_8

    iget-object v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isShuangPinMode()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    iget-short v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    or-int/lit16 v0, v3, 0xf00

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentKDBNum firstKdbNum : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    iget-short v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    or-int/lit16 v0, v3, 0xd00

    goto/16 :goto_0

    :cond_8
    iget-short v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    if-ne v3, v5, :cond_9

    iget-short v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    or-int/lit16 v0, v3, 0xe00

    goto/16 :goto_0

    :cond_9
    iget-short v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v4, 0xe2

    if-ne v3, v4, :cond_a

    iget-short v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    or-int/lit16 v0, v3, 0x800

    goto/16 :goto_0

    :cond_a
    iget-short v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v4, 0x1f

    if-ne v3, v4, :cond_b

    iget-object v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v4, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_1

    iget-short v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    or-int/lit16 v0, v3, 0x700

    goto/16 :goto_0

    :pswitch_3
    iget-short v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    or-int/lit16 v0, v3, 0xf00

    goto/16 :goto_0

    :pswitch_4
    iget-short v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    or-int/lit16 v0, v3, 0x1000

    goto/16 :goto_0

    :cond_b
    iget-object v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v3

    const v4, 0x66724341

    if-eq v3, v4, :cond_c

    iget-object v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v3

    const/high16 v4, 0x66720000

    if-ne v3, v4, :cond_d

    const-string v3, "CA"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_c
    const/16 v0, 0xc0c

    goto/16 :goto_0

    :cond_d
    iget-short v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    or-int/lit16 v0, v3, 0x700

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getCurrentKDBPageNum()I
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit16 v0, v0, 0x1000

    :cond_0
    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    or-int/lit16 v0, v0, 0x2000

    :cond_1
    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    or-int/lit16 v0, v0, 0x3000

    :cond_2
    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x800

    :cond_3
    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v1

    array-length v1, v1

    if-le v1, v3, :cond_4

    or-int/lit16 v0, v0, 0x100

    :cond_4
    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v1

    if-ne v1, v3, :cond_9

    or-int/lit16 v0, v0, 0x200

    :cond_5
    :goto_0
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isUrlInputType()Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_6
    or-int/lit8 v0, v0, 0x4

    :cond_7
    :goto_1
    iget-boolean v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsAcuteAccent:Z

    if-eqz v1, :cond_8

    or-int/lit8 v0, v0, 0x1

    :cond_8
    return v0

    :cond_9
    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    or-int/lit16 v0, v0, 0x400

    goto :goto_0

    :cond_a
    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v1}, Lcom/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_b

    or-int/lit8 v0, v0, 0x8

    goto :goto_1

    :cond_b
    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v1}, Lcom/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_7

    or-int/lit8 v0, v0, 0xc

    goto :goto_1
.end method

.method private getInputWords()Ljava/lang/CharSequence;
    .locals 1

    iget v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mActiveIndex:I

    invoke-direct {p0, v0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getInputWords(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getInputWords(I)Ljava/lang/CharSequence;
    .locals 3

    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v0

    iget-short v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v2, 0x12

    if-ne v1, v2, :cond_2

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsTraceInput:Z

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getKInputWordsPrediction(I)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getKInputWordsMultiTap(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-short v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v2, 0xe1

    if-eq v1, v2, :cond_3

    iget-short v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v2, 0xe2

    if-eq v1, v2, :cond_3

    iget-short v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_4

    :cond_3
    invoke-direct {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getCPInputWords(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_4
    iget-short v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v2, 0x11

    if-ne v1, v2, :cond_6

    iget v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mXt9Version:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_5

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->OnBlockPrediction()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getJInputWordsPredictionSegmetation(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getJInputWordsPrediction(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getAWInputWords(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method private getJInputWordsPrediction(I)Ljava/lang/CharSequence;
    .locals 16

    move-object/from16 v0, p0

    iget v10, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSuggestionCount:I

    if-lez v10, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initKRUDB()S

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mMidashigoWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;

    invoke-virtual {v12}, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;->init()V

    move/from16 v0, p1

    int-to-byte v12, v0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mMidashigoWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;

    iget-object v13, v13, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;->sWord:[B

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mMidashigoWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;

    iget-object v14, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;->wLen:[S

    invoke-static {v12, v13, v14}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9JGetCandidate(B[B[S)S

    move-result v11

    const/16 v12, 0x22

    if-ne v11, v12, :cond_1

    const/4 v12, 0x1

    new-array v2, v12, [B

    const/4 v12, 0x1

    new-array v1, v12, [B

    const/4 v12, 0x1

    new-array v8, v12, [S

    invoke-static {v2, v8}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9JBuildSelectionList([B[S)S

    move-result v11

    if-eqz v11, :cond_0

    const-string v12, "SamsungIME"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ET9JBuildSelectionList : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v12, 0x0

    aget-byte v12, v2, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSuggestionCount:I

    const/4 v12, 0x0

    aget-byte v12, v1, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mActiveIndex:I

    move/from16 v0, p1

    int-to-byte v12, v0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mMidashigoWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;

    iget-object v13, v13, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;->sWord:[B

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mMidashigoWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;

    iget-object v14, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;->wLen:[S

    invoke-static {v12, v13, v14}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9JGetCandidate(B[B[S)S

    move-result v11

    if-eqz v11, :cond_1

    const-string v12, "SamsungIME"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ET9JGetCandidate : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v11, :cond_2

    const-string v12, "SamsungIME"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ET9JGetCandidate : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mMidashigoWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;

    iget-object v12, v12, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;->wLen:[S

    const/4 v13, 0x0

    aget-short v12, v12, v13

    const/16 v13, 0x81

    if-ge v12, v13, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mMidashigoWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;

    iget-object v12, v12, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;->wLen:[S

    const/4 v13, 0x0

    aget-short v9, v12, v13

    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v6

    if-eqz v6, :cond_3

    const/4 v12, 0x7

    if-eq v6, v12, :cond_3

    const/16 v12, 0x8

    if-ne v6, v12, :cond_4

    :cond_3
    if-nez v7, :cond_4

    const/4 v12, 0x1

    if-le v9, v12, :cond_4

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9ClearAllSymbs()S

    if-eqz v11, :cond_4

    const-string v12, "SamsungIME"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ET9ClearAllSymbs : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v3, ""

    :try_start_0
    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mMidashigoWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;

    iget-object v12, v12, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;->sWord:[B

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mMidashigoWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;

    iget-object v14, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;->wLen:[S

    const/4 v15, 0x0

    aget-short v14, v14, v15

    const-string v15, "Shift_JIS"

    invoke-direct {v4, v12, v13, v14, v15}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    :goto_1
    return-object v3

    :cond_5
    const/16 v9, 0x81

    goto :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    :cond_6
    const-string v3, ""

    goto :goto_1
.end method

.method private getJInputWordsPredictionSegmetation(I)Ljava/lang/CharSequence;
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSuggestionCount:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mMidashigoWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;

    invoke-virtual {v1}, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;->init()V

    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mMidashigoWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;

    iget-object v1, v1, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;->sSegWord:[C

    iget-object v2, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mMidashigoWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;

    iget-object v2, v2, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;->nSegLen:[I

    invoke-static {p1, v1, v2}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9getRangeConvCandidateWord(I[C[I)I

    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mMidashigoWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;

    iget-object v1, v1, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;->sSegWord:[C

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mMidashigoWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;

    iget-object v2, v2, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;->nSegLen:[I

    aget v2, v2, v3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private getKInputWordsMultiTap(I)Ljava/lang/CharSequence;
    .locals 11

    const/16 v6, 0x20

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x1

    new-array v2, v6, [S

    new-array v4, v10, [S

    new-array v0, v10, [B

    invoke-static {v2, v6, v4, v0}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDB_GetMultiTapSequence([SS[S[B)S

    aget-short v6, v4, v9

    if-ne v6, v10, :cond_0

    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->invokeTimeOut()V

    iget-object v2, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EMPTY_MULTITAP_SEQ:[S

    aput-short v9, v4, v9

    :cond_0
    iget-object v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    invoke-virtual {v6}, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->init()V

    iget-object v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    invoke-static {v6}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KBuildHangul(Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;)S

    move-result v5

    if-eqz v5, :cond_1

    const-string v6, "SamsungIME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ET9KBuildHangul : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-short v6, v6, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->wLen:S

    if-le v6, v10, :cond_2

    iget-object v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v6, v6, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->pSymbCounts:[S

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v6, v6, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->pSymbCounts:[S

    array-length v6, v6

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v6, v6, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->pSymbCounts:[S

    aget-short v6, v6, v9

    int-to-byte v6, v6

    invoke-static {v9, v6}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDeleteSymbs(BB)S

    move-result v5

    :cond_2
    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v6, 0x40

    invoke-direct {v3, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-short v6, v6, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->wLen:S

    if-ge v1, v6, :cond_3

    iget-object v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v6, v6, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    aget-short v6, v6, v1

    int-to-char v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private getKInputWordsPrediction(I)Ljava/lang/CharSequence;
    .locals 16

    move-object/from16 v0, p0

    iget v11, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSuggestionCount:I

    if-lez v11, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initKRUDB()S

    const/4 v12, 0x1

    const/4 v13, 0x1

    new-array v1, v13, [S

    const/4 v13, 0x1

    new-array v7, v13, [B

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    invoke-virtual {v13}, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->init()V

    move/from16 v0, p1

    int-to-byte v13, v0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v14, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v15, v15, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    array-length v15, v15

    int-to-short v15, v15

    invoke-static {v13, v14, v15, v1, v7}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KGetHangul(B[SS[S[B)S

    move-result v12

    new-instance v13, Ljava/lang/Byte;

    const/4 v14, 0x0

    aget-byte v14, v7, v14

    invoke-direct {v13, v14}, Ljava/lang/Byte;-><init>(B)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mWordInformation:Ljava/lang/Byte;

    const/16 v13, 0x22

    if-ne v12, v13, :cond_1

    const/4 v13, 0x1

    new-array v3, v13, [B

    const/4 v13, 0x1

    new-array v2, v13, [B

    const/4 v13, 0x1

    new-array v8, v13, [S

    invoke-static {v3, v2, v8}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KBuildSelectionList([B[B[S)S

    move-result v12

    if-eqz v12, :cond_0

    const-string v13, "SamsungIME"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ET9KBuildSelectionList : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v13, 0x0

    aget-byte v13, v3, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSuggestionCount:I

    const/4 v13, 0x0

    aget-byte v13, v2, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mActiveIndex:I

    move/from16 v0, p1

    int-to-byte v13, v0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v14, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v15, v15, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    array-length v15, v15

    int-to-short v15, v15

    invoke-static {v13, v14, v15, v1, v7}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KGetHangul(B[SS[S[B)S

    move-result v12

    if-eqz v12, :cond_1

    const-string v13, "SamsungIME"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ET9KGetHangul : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v12, :cond_2

    const-string v13, "SamsungIME"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ET9KGetHangul : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v13, 0x0

    aget-short v13, v1, v13

    const/16 v14, 0x40

    if-ge v13, v14, :cond_5

    const/4 v13, 0x0

    aget-short v10, v1, v13

    :goto_0
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v13}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v5

    if-eqz v5, :cond_3

    const/4 v13, 0x7

    if-eq v5, v13, :cond_3

    const/16 v13, 0x8

    if-ne v5, v13, :cond_4

    :cond_3
    if-nez v6, :cond_4

    const/4 v13, 0x1

    if-le v10, v13, :cond_4

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KClearAllSymbs()S

    move-result v12

    if-eqz v12, :cond_4

    const-string v13, "SamsungIME"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ET9KClearAllSymbs : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v10, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v13, v13, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    aget-short v13, v13, v4

    int-to-char v13, v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    const/16 v10, 0x40

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v13

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsTraceInput:Z

    if-eqz v13, :cond_8

    if-nez p1, :cond_7

    move-object/from16 v0, p0

    iget v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSuggestionCount:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_7

    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mActiveIndex:I

    :cond_7
    :goto_2
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_3
    return-object v13

    :cond_8
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v13

    if-nez v13, :cond_9

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsReConstruction:Z

    if-nez v13, :cond_9

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsReselection:Z

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsReselectionWord:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSuggestionCount:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_7

    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mActiveIndex:I

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/ime/framework/common/InputManager;->isEnableAutoCorrection()Z

    move-result v13

    if-nez v13, :cond_a

    if-nez p1, :cond_7

    move-object/from16 v0, p0

    iget v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSuggestionCount:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_7

    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mActiveIndex:I

    goto :goto_2

    :cond_a
    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_b

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mFlagForAutoReplacement:Z

    if-eqz v13, :cond_b

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mBestCandidate:Ljava/lang/CharSequence;

    :cond_b
    if-nez p1, :cond_7

    move-object/from16 v0, p0

    iget v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSuggestionCount:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_c

    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mActiveIndex:I

    goto :goto_2

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->hasInputSequence()Z

    move-result v13

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mActiveIndex:I

    if-eqz v13, :cond_7

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setXt9AutoReplacementCondition(Z)V

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mFlagForAutoReplacement:Z

    goto/16 :goto_2

    :cond_d
    const-string v13, ""

    goto/16 :goto_3
.end method

.method private getLastTermPunctIndex(Ljava/lang/CharSequence;)I
    .locals 6

    const/4 v3, -0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-gtz v4, :cond_2

    :cond_0
    move v0, v3

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertCharSequenceToShortArray(Ljava/lang/CharSequence;)[S

    move-result-object v1

    array-length v4, v1

    add-int/lit8 v0, v4, -0x1

    :goto_1
    if-ltz v0, :cond_3

    aget-short v4, v1, v0

    iget-short v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    invoke-static {v4, v5}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9IsSentenceTermPunct(SS)Z

    move-result v2

    if-nez v2, :cond_1

    aget-short v4, v1, v0

    const/16 v5, 0xa

    if-eq v4, v5, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_0
.end method

.method private getMaxWordsCount()S
    .locals 2

    iget-short v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v1, 0xe0

    if-lt v0, v1, :cond_1

    iget-short v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v1, 0xe3

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0xfa

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0x1e

    goto :goto_0
.end method

.method private getPreviewSuggestion(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    return v0
.end method

.method private getShuangpinSpells(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    const-string v0, "A"

    goto :goto_0

    :pswitch_2
    const-string v0, "B"

    goto :goto_0

    :pswitch_3
    const-string v0, "C"

    goto :goto_0

    :pswitch_4
    const-string v0, "Ch"

    goto :goto_0

    :pswitch_5
    const-string v0, "D"

    goto :goto_0

    :pswitch_6
    const-string v0, "E"

    goto :goto_0

    :pswitch_7
    const-string v0, "F"

    goto :goto_0

    :pswitch_8
    const-string v0, "G"

    goto :goto_0

    :pswitch_9
    const-string v0, "H"

    goto :goto_0

    :pswitch_a
    const-string v0, "J"

    goto :goto_0

    :pswitch_b
    const-string v0, "K"

    goto :goto_0

    :pswitch_c
    const-string v0, "L"

    goto :goto_0

    :pswitch_d
    const-string v0, "M"

    goto :goto_0

    :pswitch_e
    const-string v0, "N"

    goto :goto_0

    :pswitch_f
    const-string v0, "O"

    goto :goto_0

    :pswitch_10
    const-string v0, "P"

    goto :goto_0

    :pswitch_11
    const-string v0, "Q"

    goto :goto_0

    :pswitch_12
    const-string v0, "R"

    goto :goto_0

    :pswitch_13
    const-string v0, "S"

    goto :goto_0

    :pswitch_14
    const-string v0, "Sh"

    goto :goto_0

    :pswitch_15
    const-string v0, "T"

    goto :goto_0

    :pswitch_16
    const-string v0, "W"

    goto :goto_0

    :pswitch_17
    const-string v0, "X"

    goto :goto_0

    :pswitch_18
    const-string v0, "Y"

    goto :goto_0

    :pswitch_19
    const-string v0, "Z"

    goto :goto_0

    :pswitch_1a
    const-string v0, "Zh"

    goto :goto_0

    :pswitch_1b
    const-string v0, "*"

    goto :goto_0

    :pswitch_1c
    const-string v0, "a"

    goto :goto_0

    :pswitch_1d
    const-string v0, "ai"

    goto :goto_0

    :pswitch_1e
    const-string v0, "an"

    goto :goto_0

    :pswitch_1f
    const-string v0, "ang"

    goto :goto_0

    :pswitch_20
    const-string v0, "ao"

    goto :goto_0

    :pswitch_21
    const-string v0, "e"

    goto :goto_0

    :pswitch_22
    const-string v0, "ei"

    goto :goto_0

    :pswitch_23
    const-string v0, "en"

    goto :goto_0

    :pswitch_24
    const-string v0, "eng"

    goto :goto_0

    :pswitch_25
    const-string v0, "er"

    goto :goto_0

    :pswitch_26
    const-string v0, "i"

    goto :goto_0

    :pswitch_27
    const-string v0, "ia"

    goto :goto_0

    :pswitch_28
    const-string v0, "ian"

    goto :goto_0

    :pswitch_29
    const-string v0, "iang"

    goto :goto_0

    :pswitch_2a
    const-string v0, "iao"

    goto :goto_0

    :pswitch_2b
    const-string v0, "ie"

    goto/16 :goto_0

    :pswitch_2c
    const-string v0, "in"

    goto/16 :goto_0

    :pswitch_2d
    const-string v0, "ing"

    goto/16 :goto_0

    :pswitch_2e
    const-string v0, "iong"

    goto/16 :goto_0

    :pswitch_2f
    const-string v0, "iu"

    goto/16 :goto_0

    :pswitch_30
    const-string v0, "o"

    goto/16 :goto_0

    :pswitch_31
    const-string v0, "ong"

    goto/16 :goto_0

    :pswitch_32
    const-string v0, "ou"

    goto/16 :goto_0

    :pswitch_33
    const-string v0, "u"

    goto/16 :goto_0

    :pswitch_34
    const-string v0, "ua"

    goto/16 :goto_0

    :pswitch_35
    const-string v0, "uai"

    goto/16 :goto_0

    :pswitch_36
    const-string v0, "uan"

    goto/16 :goto_0

    :pswitch_37
    const-string v0, "uang"

    goto/16 :goto_0

    :pswitch_38
    const-string v0, "ue"

    goto/16 :goto_0

    :pswitch_39
    const-string v0, "ui"

    goto/16 :goto_0

    :pswitch_3a
    const-string v0, "un"

    goto/16 :goto_0

    :pswitch_3b
    const-string v0, "uo"

    goto/16 :goto_0

    :pswitch_3c
    const-string v0, "v"

    goto/16 :goto_0

    :pswitch_3d
    const-string v0, "ve"

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0xf230
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
    .end packed-switch
.end method

.method private getStartWordIndex(Ljava/lang/CharSequence;)I
    .locals 6

    const/4 v3, -0x1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-gtz v4, :cond_2

    :cond_0
    move v0, v3

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertCharSequenceToShortArray(Ljava/lang/CharSequence;)[S

    move-result-object v1

    const/4 v2, 0x0

    array-length v4, v1

    add-int/lit8 v0, v4, -0x1

    :goto_1
    if-ltz v0, :cond_4

    aget-short v4, v1, v0

    iget-short v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    invoke-static {v4, v5}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9IsSentenceTermPunct(SS)Z

    move-result v2

    aget-short v4, v1, v0

    const/16 v5, 0x20

    if-ne v4, v5, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    if-nez v2, :cond_1

    aget-short v4, v1, v0

    const/16 v5, 0xa

    if-eq v4, v5, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_0
.end method

.method private getWordOnCursor()Ljava/lang/CharSequence;
    .locals 12

    const/16 v11, 0x40

    const/4 v10, 0x0

    iget-object v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1, v11, v10}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_0

    const-string v5, ""

    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    :goto_1
    if-ltz v2, :cond_1

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isLetter(C)Z

    move-result v9

    if-nez v9, :cond_5

    :cond_1
    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    :goto_2
    if-eqz v1, :cond_7

    invoke-interface {v1, v11, v10}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_2

    const-string v4, ""

    :cond_2
    :goto_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v3, :cond_3

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isLetter(C)Z

    move-result v9

    if-nez v9, :cond_8

    :cond_3
    invoke-virtual {v4, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :goto_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_4
    const-string v5, ""

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_6
    const-string v7, ""

    goto :goto_2

    :cond_7
    const-string v4, ""

    goto :goto_3

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    const-string v6, ""

    goto :goto_5
.end method

.method private getWordStartIndex(Ljava/lang/CharSequence;)I
    .locals 4

    const/4 v2, -0x1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gtz v3, :cond_2

    :cond_0
    move v0, v2

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertCharSequenceToShortArray(Ljava/lang/CharSequence;)[S

    move-result-object v1

    array-length v3, v1

    add-int/lit8 v0, v3, -0x1

    :goto_1
    if-ltz v0, :cond_3

    aget-short v3, v1, v0

    int-to-char v3, v3

    invoke-virtual {p0, v3}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->checkXT9WordWrappingRule(C)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method private initASDB()S
    .locals 4

    const/16 v2, 0x2800

    sget-object v1, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mASDBBuffer:[B

    if-nez v1, :cond_0

    new-array v1, v2, [B

    sput-object v1, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mASDBBuffer:[B

    :cond_0
    sget-object v1, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mASDBBuffer:[B

    invoke-static {v1, v2}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWASDBInit([BS)S

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWASDBInit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method private initCDB()S
    .locals 4

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->InitAllXCatDBs()S

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->FreeAllXCatDBs()S

    iget-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mACServiceHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper$1;

    invoke-direct {v1, p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper$1;-><init>(Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    return v0
.end method

.method private initChineseLanguage()V
    .locals 11

    const/4 v10, 0x1

    const/16 v9, 0xe2

    const/16 v8, 0xe1

    const/16 v7, 0xe0

    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v4

    if-eq v4, v10, :cond_0

    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/ime/framework/inputmode/InputModeManager;->setChineseStrokeModeOn(Z)V

    :cond_0
    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v2

    const/4 v1, 0x0

    iget-short v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    if-ne v4, v8, :cond_d

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPSysInit()S

    move-result v3

    if-eqz v3, :cond_1

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9CPSysInit : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {v8}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPLdbValidate(S)S

    move-result v3

    if-eqz v3, :cond_3

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9CPLdbValidate : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initLatinLanguage()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {v8}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPLdbInit(S)S

    move-result v3

    if-eqz v3, :cond_4

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9CPLdbInit : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v2, :cond_5

    const/4 v1, 0x2

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPClearComponent()S

    move-result v3

    :cond_5
    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isShuangPinMode()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v1, 0x3

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPClearComponent()S

    move-result v3

    :cond_6
    invoke-static {v1}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPSetInputMode(B)S

    move-result v3

    if-eqz v3, :cond_c

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9CPSetInputMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isTraceOn()Z

    move-result v4

    if-eqz v4, :cond_9

    const/16 v4, 0x10

    invoke-static {v10, v4}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWSysInit(ZB)S

    move-result v3

    if-eqz v3, :cond_7

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9AWSysInit : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWLdbInit()S

    move-result v3

    if-eqz v3, :cond_8

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9AWLdbInit : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPTraceInit()S

    move-result v3

    if-eqz v3, :cond_9

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9CPTraceInit : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPSetSentenceApprox()S

    move-result v3

    if-eqz v3, :cond_a

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9CPSetSentenceApprox : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHotwordMgr:Lcom/ime/framework/dbmanager/hotword/HotWordMgr;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHotwordMgr:Lcom/ime/framework/dbmanager/hotword/HotWordMgr;

    const-string v5, "zh_CN"

    invoke-virtual {v4, v5}, Lcom/ime/framework/dbmanager/hotword/HotWordMgr;->loadHotWord(Ljava/lang/String;)Z

    :cond_b
    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCDBMgr:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCDBMgr:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;

    const-string v5, "zh_CN"

    invoke-virtual {v4, v5}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->loadAllCDBs(Ljava/lang/String;)V

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPGetActivatedCatID()I

    move-result v0

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9CPGetActivatedCatID returns :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9ClearAllSymbs()S

    move-result v3

    goto/16 :goto_1

    :cond_d
    iget-short v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    if-ne v4, v7, :cond_13

    const/4 v1, 0x1

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPSysInit()S

    move-result v3

    if-eqz v3, :cond_e

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9CPSysInit : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-static {v7}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPLdbValidate(S)S

    move-result v3

    if-eqz v3, :cond_f

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9CPLdbValidate : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initLatinLanguage()V

    goto/16 :goto_0

    :cond_f
    invoke-static {v7}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPLdbInit(S)S

    move-result v3

    if-eqz v3, :cond_10

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9CPLdbInit : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    if-eqz v2, :cond_11

    const/4 v1, 0x2

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPClearComponent()S

    move-result v3

    :cond_11
    invoke-static {v1}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPSetInputMode(B)S

    move-result v3

    if-eqz v3, :cond_12

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9CPSetInputMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isTraceOn()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPTraceInit()S

    move-result v3

    if-eqz v3, :cond_2

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9CPTraceInit : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_12
    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9ClearAllSymbs()S

    move-result v3

    goto :goto_2

    :cond_13
    iget-short v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    if-ne v4, v9, :cond_2

    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->isQuickCangieMode()Z

    move-result v4

    if-eqz v4, :cond_15

    const/4 v1, 0x5

    :goto_3
    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPSysInit()S

    move-result v3

    if-eqz v3, :cond_14

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9CPSysInit : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    invoke-static {v9}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPLdbValidate(S)S

    move-result v3

    if-eqz v3, :cond_16

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9CPLdbValidate : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initLatinLanguage()V

    goto/16 :goto_0

    :cond_15
    const/4 v1, 0x4

    goto :goto_3

    :cond_16
    invoke-static {v9}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPLdbInit(S)S

    move-result v3

    if-eqz v3, :cond_17

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9CPLdbInit : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    if-eqz v2, :cond_18

    const/4 v1, 0x2

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPClearComponent()S

    move-result v3

    :cond_18
    invoke-static {v1}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPSetInputMode(B)S

    move-result v3

    if-eqz v3, :cond_19

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9CPSetInputMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_19
    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9ClearAllSymbs()S

    goto/16 :goto_0
.end method

.method private initJapaneseLanguage()V
    .locals 8

    const/16 v7, 0x9

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-short v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v2, 0x11

    if-ne v1, v2, :cond_3

    invoke-static {v5}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9WordSymbInit(B)S

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9WordSymbInit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v1, 0x10

    invoke-static {v5, v1}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9JSysInit(ZB)S

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9JSysInit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-short v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    invoke-static {v1}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWLdbValidate(S)S

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9JLdbInit()S

    move-result v0

    if-eqz v0, :cond_2

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9JLdbInit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getXt9Version()I

    move-result v1

    if-lt v1, v6, :cond_4

    iget-short v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    invoke-static {v1, v4, v5}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SSZ)S

    move-result v0

    :goto_0
    if-eqz v0, :cond_3

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWLdbSetLanguage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-short v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    invoke-static {v1, v4}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v0

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getXt9Version()I

    move-result v1

    if-lt v1, v6, :cond_6

    invoke-static {v7, v4, v5}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SSZ)S

    move-result v0

    :goto_2
    if-eqz v0, :cond_3

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWLdbSetLanguage to english : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    invoke-static {v7, v4}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v0

    goto :goto_2
.end method

.method private initKDB()V
    .locals 12

    const/4 v10, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v7, v4, [S

    const/4 v4, 0x1

    new-array v8, v4, [S

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-short v5, v7, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-short v5, v8, v4

    iget-short v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v5, 0xe1

    if-eq v4, v5, :cond_0

    iget-short v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v5, 0xe0

    if-eq v4, v5, :cond_0

    iget-short v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v5, 0xe2

    if-ne v4, v5, :cond_7

    :cond_0
    const/4 v4, 0x0

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPGetChineseLdbNum()S

    move-result v5

    aput-short v5, v7, v4

    :cond_1
    :goto_0
    iget-short v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v5, 0x12

    if-ne v4, v5, :cond_2

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-short v5, v7, v5

    const v11, 0xff00

    and-int/2addr v5, v11

    iget-short v11, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    or-int/2addr v5, v11

    int-to-short v5, v5

    aput-short v5, v7, v4

    :cond_2
    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v6

    const/4 v4, 0x1

    if-eq v6, v4, :cond_3

    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_3
    iget-short v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v5, 0xe1

    if-ne v4, v5, :cond_8

    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v4

    if-nez v4, :cond_8

    const/4 v4, 0x0

    aget-short v4, v7, v4

    and-int/lit16 v4, v4, 0xff

    or-int/lit16 v4, v4, 0xa00

    int-to-short v0, v4

    :goto_1
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9WordSymbInit(B)S

    move-result v10

    if-eqz v10, :cond_4

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ET9WordSymbInit : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIMEInfo:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_IMEInfo;

    const/16 v5, 0x1bc

    iput-short v5, v4, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_IMEInfo;->wKeyboardHeight:S

    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIMEInfo:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_IMEInfo;

    const/16 v5, 0x2d0

    iput-short v5, v4, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_IMEInfo;->wKeyboardWidth:S

    invoke-virtual {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getXt9Version()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_f

    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIMEInfo:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_IMEInfo;

    iget-object v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-static/range {v0 .. v5}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDB_Init(SSSSLcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_IMEInfo;Lcom/ime/framework/common/InputManager;)S

    move-result v10

    :goto_2
    if-eqz v10, :cond_5

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ET9KDB_Init : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {v0}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDB_Validate(S)S

    move-result v10

    if-eqz v10, :cond_6

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ET9KDB_Validate : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void

    :cond_7
    invoke-static {v7, v8}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWLdbGetLanguage([S[S)S

    move-result v10

    if-eqz v10, :cond_1

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ET9AWLdbGetLanguage : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    iget-short v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v5, 0xe0

    if-ne v4, v5, :cond_9

    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v4

    if-nez v4, :cond_9

    const/4 v4, 0x0

    aget-short v4, v7, v4

    and-int/lit16 v4, v4, 0xff

    or-int/lit16 v4, v4, 0xb00

    int-to-short v0, v4

    goto/16 :goto_1

    :cond_9
    const/4 v4, 0x0

    aget-short v4, v7, v4

    and-int/lit16 v4, v4, 0xff

    or-int/lit16 v4, v4, 0x600

    int-to-short v0, v4

    goto/16 :goto_1

    :cond_a
    iget-short v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v5, 0xe1

    if-ne v4, v5, :cond_b

    const/4 v4, 0x0

    aget-short v4, v7, v4

    and-int/lit16 v4, v4, 0xff

    or-int/lit16 v4, v4, 0xd00

    int-to-short v0, v4

    goto/16 :goto_1

    :cond_b
    iget-short v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v5, 0xe0

    if-ne v4, v5, :cond_c

    const/4 v4, 0x0

    aget-short v4, v7, v4

    and-int/lit16 v4, v4, 0xff

    or-int/lit16 v4, v4, 0xe00

    int-to-short v0, v4

    goto/16 :goto_1

    :cond_c
    iget-short v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v5, 0xe2

    if-ne v4, v5, :cond_d

    const/4 v4, 0x0

    aget-short v4, v7, v4

    and-int/lit16 v4, v4, 0xff

    or-int/lit16 v4, v4, 0x700

    int-to-short v0, v4

    goto/16 :goto_1

    :cond_d
    iget-short v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v5, 0x1f

    if-ne v4, v5, :cond_e

    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v5, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    const/4 v11, 0x0

    invoke-interface {v4, v5, v11}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v9

    packed-switch v9, :pswitch_data_0

    const/4 v4, 0x0

    aget-short v4, v7, v4

    and-int/lit16 v4, v4, 0xff

    or-int/lit16 v4, v4, 0x700

    int-to-short v0, v4

    goto/16 :goto_1

    :pswitch_0
    const/4 v4, 0x0

    aget-short v4, v7, v4

    and-int/lit16 v4, v4, 0xff

    or-int/lit16 v4, v4, 0xf00

    int-to-short v0, v4

    goto/16 :goto_1

    :pswitch_1
    const/4 v4, 0x0

    aget-short v4, v7, v4

    and-int/lit16 v4, v4, 0xff

    or-int/lit16 v4, v4, 0x1000

    int-to-short v0, v4

    goto/16 :goto_1

    :cond_e
    const/4 v4, 0x0

    aget-short v4, v7, v4

    and-int/lit16 v4, v4, 0xff

    or-int/lit16 v4, v4, 0x700

    int-to-short v0, v4

    goto/16 :goto_1

    :cond_f
    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIMEInfo:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_IMEInfo;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDB_Init(SSSSLcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_IMEInfo;)S

    move-result v10

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initKRUDB()S
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private initKoreanLanguage()V
    .locals 11

    const/16 v10, 0x9

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getPreferenceInputMethodOnKor()I

    move-result v0

    iget-short v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v5, 0x12

    if-ne v4, v5, :cond_6

    const/16 v4, 0x10

    invoke-static {v8, v4}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWSysInit(ZB)S

    move-result v3

    if-eqz v3, :cond_0

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9AWSysInit : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KSysInit()S

    move-result v3

    if-eqz v3, :cond_1

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9KSysInit : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eq v1, v8, :cond_2

    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_2
    iget-short v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    invoke-static {v4}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWLdbValidate(S)S

    move-result v3

    if-nez v3, :cond_9

    const/16 v4, 0x712

    invoke-static {v4, v7}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KLdbInit(SS)S

    move-result v3

    if-eqz v3, :cond_3

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9KLdbInit : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getXt9Version()I

    move-result v4

    if-lt v4, v9, :cond_8

    iget-short v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    invoke-static {v4, v7, v8}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SSZ)S

    move-result v3

    :goto_0
    if-eqz v3, :cond_4

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9AWLdbSetLanguage : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getXt9Version()I

    move-result v4

    if-lt v4, v9, :cond_b

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2, v8, v7}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KSetInputMode(SZS)S

    move-result v3

    if-eqz v3, :cond_5

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9KSetInputMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    iput-boolean v8, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsKoreanCoreInit:Z

    :cond_6
    invoke-virtual {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initSmartTouch()S

    :cond_7
    :goto_3
    return-void

    :cond_8
    iget-short v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    invoke-static {v4, v7}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v3

    goto :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getXt9Version()I

    move-result v4

    if-lt v4, v9, :cond_a

    invoke-static {v10, v7, v8}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SSZ)S

    move-result v3

    :goto_4
    if-eqz v3, :cond_7

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9AWLdbSetLanguage to english : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_a
    invoke-static {v10, v7}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v3

    goto :goto_4

    :pswitch_0
    const/4 v2, 0x2

    goto :goto_1

    :pswitch_1
    const/4 v2, 0x3

    goto :goto_1

    :cond_b
    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KEnableChunJiIn()S

    move-result v3

    if-eqz v3, :cond_5

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9KEnableChunJiIn : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_c
    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->isBstHWRmodeEnable()Z

    move-result v4

    if-nez v4, :cond_e

    :cond_d
    if-eqz v1, :cond_e

    const/16 v4, 0x8

    if-ne v1, v4, :cond_5

    :cond_e
    iget-short v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    invoke-static {v4}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWLdbValidate(S)S

    move-result v3

    if-nez v3, :cond_12

    iget-short v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    invoke-static {v4, v7}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KLdbInit(SS)S

    move-result v3

    if-eqz v3, :cond_f

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9KLdbInit : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    invoke-virtual {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getXt9Version()I

    move-result v4

    if-lt v4, v9, :cond_11

    iget-short v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    invoke-static {v4, v7, v8}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SSZ)S

    move-result v3

    :goto_5
    if-eqz v3, :cond_10

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9AWLdbSetLanguage : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    invoke-virtual {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getXt9Version()I

    move-result v4

    if-lt v4, v9, :cond_14

    invoke-static {v7, v8, v7}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KSetInputMode(SZS)S

    move-result v3

    if-eqz v3, :cond_5

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9KSetInputMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_11
    iget-short v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    invoke-static {v4, v7}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v3

    goto :goto_5

    :cond_12
    invoke-virtual {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getXt9Version()I

    move-result v4

    if-lt v4, v9, :cond_13

    invoke-static {v10, v7, v8}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SSZ)S

    move-result v3

    :goto_6
    if-eqz v3, :cond_7

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9AWLdbSetLanguage to english : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_13
    invoke-static {v10, v7}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v3

    goto :goto_6

    :cond_14
    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDisableChunJiIn()S

    move-result v3

    if-eqz v3, :cond_5

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9KDisableChunJiIn : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initLatinLanguage()V
    .locals 9

    const/16 v8, 0x9

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v2, 0x10

    invoke-static {v6, v2}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWSysInit(ZB)S

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ET9AWSysInit : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-short v2, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    invoke-static {v2}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWLdbValidate(S)S

    move-result v1

    if-nez v1, :cond_9

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWLdbInit()S

    move-result v1

    if-eqz v1, :cond_1

    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ET9AWLdbInit : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getXt9Version()I

    move-result v2

    if-lt v2, v7, :cond_8

    iget-short v2, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    invoke-static {v2, v5, v6}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SSZ)S

    move-result v1

    :goto_0
    if-eqz v1, :cond_2

    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ET9AWLdbSetLanguage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWSetWordStemsPoint(S)S

    move-result v1

    if-eqz v1, :cond_3

    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ET9AWSetWordStemsPoint : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {v5, v5}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWSetSpellCorrectionMode(BZ)S

    move-result v1

    if-eqz v1, :cond_4

    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ET9AWSetSpellCorrectionMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWSetAutoSpace()S

    move-result v1

    if-eqz v1, :cond_5

    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ET9AWSetAutoSpace : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWSetNiceLatency()S

    move-result v1

    if-eqz v1, :cond_6

    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ET9AWSetNiceLatency : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWSetFastAdaptation()Z

    move-result v0

    if-eq v0, v6, :cond_7

    const-string v2, "SamsungIME"

    const-string v3, "ET9AWSetFastAdaptation failed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initSmartTouch()S

    return-void

    :cond_8
    iget-short v2, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    invoke-static {v2, v5}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v1

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWLdbInit()S

    move-result v1

    if-eqz v1, :cond_a

    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ET9AWLdbInit : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-virtual {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getXt9Version()I

    move-result v2

    if-lt v2, v7, :cond_b

    invoke-static {v8, v5, v6}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SSZ)S

    move-result v1

    :goto_2
    if-eqz v1, :cond_2

    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ET9AWLdbSetLanguage to english : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_b
    invoke-static {v8, v5}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v1

    goto :goto_2
.end method

.method private initLinguistic()V
    .locals 4

    const/16 v3, 0xe1

    const/4 v0, 0x0

    iget-short v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v2, 0x12

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initKoreanLanguage()V

    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->deactivateChineseEmoji()I

    :goto_0
    invoke-virtual {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initDLM()S

    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initCDB()S

    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initASDB()S

    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initRUDB()S

    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isEnableAutoCorrection()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setUDBDelayedReorder(Z)S

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUDBDelayedReorder : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-short v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v2, 0x11

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initJapaneseLanguage()V

    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->deactivateChineseEmoji()I

    goto :goto_0

    :cond_2
    iget-short v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    if-eq v1, v3, :cond_3

    iget-short v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v2, 0xe0

    if-eq v1, v2, :cond_3

    iget-short v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v2, 0xe2

    if-ne v1, v2, :cond_6

    :cond_3
    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initChineseLanguage()V

    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isEmoticonDisabled()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->deactivateChineseEmoji()I

    goto :goto_0

    :cond_4
    iget-short v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    if-ne v1, v3, :cond_5

    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->activateChineseEmoji()I

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->deactivateChineseEmoji()I

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initLatinLanguage()V

    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->deactivateChineseEmoji()I

    goto :goto_0

    :cond_7
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setUDBDelayedReorder(Z)S

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUDBDelayedReorder : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private initRUDB()S
    .locals 4

    const/16 v3, 0x3000

    const/4 v0, 0x1

    iget-short v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v2, 0xe1

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mUDBBuffer:[B

    invoke-static {v1, v3}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPUdbActivate([BS)S

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9CPUdbActivate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-short v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v2, 0xe2

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mZHUDBBuffer:[B

    invoke-static {v1, v3}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPUdbActivate([BS)S

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9CPUdbActivate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-short v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mZTUDBBuffer:[B

    invoke-static {v1, v3}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPUdbActivate([BS)S

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9CPUdbActivate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initSubLinguistic()V
    .locals 3

    const/16 v2, 0xe1

    iget-short v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initKoreanLanguage()V

    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->deactivateChineseEmoji()I

    :goto_0
    return-void

    :cond_0
    iget-short v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v1, 0x11

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initJapaneseLanguage()V

    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->deactivateChineseEmoji()I

    goto :goto_0

    :cond_1
    iget-short v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    if-eq v0, v2, :cond_2

    iget-short v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v1, 0xe0

    if-eq v0, v1, :cond_2

    iget-short v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v1, 0xe2

    if-ne v0, v1, :cond_5

    :cond_2
    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initChineseLanguage()V

    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initRUDB()S

    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initCDB()S

    iget-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isEmoticonDisabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->deactivateChineseEmoji()I

    goto :goto_0

    :cond_3
    iget-short v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    if-ne v0, v2, :cond_4

    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->activateChineseEmoji()I

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->deactivateChineseEmoji()I

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initLatinLanguage()V

    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->deactivateChineseEmoji()I

    goto :goto_0
.end method

.method private invokeTimeOut()V
    .locals 4

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDB_TimeOut()S

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeTimeOut : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private isAcuteAccent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsAcuteAccent:Z

    return v0
.end method

.method private isBPMFTone(I)Z
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mtoneLastidx:I

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xb1 -> :sswitch_0
        0xb2 -> :sswitch_0
        0xb3 -> :sswitch_0
        0xb4 -> :sswitch_0
        0xb5 -> :sswitch_0
        0x323 -> :sswitch_0
    .end sparse-switch
.end method

.method private isDoublePinyinChar(I)Z
    .locals 1

    const v0, 0xf230

    if-lt p1, v0, :cond_0

    const v0, 0xf24a

    if-le p1, v0, :cond_1

    :cond_0
    const v0, 0xf250

    if-lt p1, v0, :cond_2

    const v0, 0xf271

    if-gt p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isThaiVowel(I)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xe2f
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private lookupChar(I)I
    .locals 12

    const/16 v5, 0x80

    const/16 v11, 0x7a

    const/16 v10, 0x61

    const/16 v8, 0x30

    const/4 v9, 0x1

    iget-object v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iget-object v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v1

    iget-object v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v3

    if-eq v0, v9, :cond_0

    iget-object v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_0
    iget-object v2, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->KEYMAP_PHONEPAD:[S

    iget v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x74680000

    if-ne v6, v7, :cond_3

    iget-object v2, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->KEYMAP_PHONEPAD_TH:[S

    if-lt p1, v8, :cond_2

    const/16 v6, 0x3a

    if-gt p1, v6, :cond_2

    add-int/lit8 v5, p1, -0x30

    aget-short v5, v2, v5

    :cond_1
    :goto_0
    return v5

    :cond_2
    const/16 v6, -0x3a

    if-ne p1, v6, :cond_6

    const/16 v5, 0xa

    aget-short v5, v2, v5

    goto :goto_0

    :cond_3
    iget v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const v7, 0x7a68434e

    if-eq v6, v7, :cond_4

    iget v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const v7, 0x7a68484b

    if-eq v6, v7, :cond_4

    iget v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const v7, 0x7a685457

    if-ne v6, v7, :cond_6

    :cond_4
    if-eqz v3, :cond_6

    iget-object v2, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->KEYMAP_PHONEPAD_STROKE_ZH_CN:[S

    const/16 v6, 0x2a

    if-ne p1, v6, :cond_5

    const/4 v5, 0x5

    aget-short v5, v2, v5

    goto :goto_0

    :cond_5
    const/16 v6, 0x31

    if-lt p1, v6, :cond_6

    const/16 v6, 0x35

    if-gt p1, v6, :cond_6

    add-int/lit8 v5, p1, -0x31

    aget-short v5, v2, v5

    goto :goto_0

    :cond_6
    iget-object v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isDynamicKDB()Z

    move-result v6

    if-nez v6, :cond_1

    if-lt p1, v8, :cond_1

    const/16 v6, 0x39

    if-gt p1, v6, :cond_1

    add-int/lit8 v5, p1, -0x30

    aget-short v5, v2, v5

    goto :goto_0

    :cond_7
    if-eqz v0, :cond_8

    const/4 v6, 0x7

    if-eq v0, v6, :cond_8

    const/16 v6, 0x8

    if-ne v0, v6, :cond_1d

    :cond_8
    iget-object v2, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->KEYMAP_QWERTY:[S

    iget v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x74680000

    if-ne v6, v7, :cond_9

    invoke-direct {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->lookupCharForTHAI(I)I

    move-result v5

    goto :goto_0

    :cond_9
    iget v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x76690000

    if-ne v6, v7, :cond_a

    invoke-direct {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->lookupCharForVIETNAMESE(I)I

    move-result v5

    goto :goto_0

    :cond_a
    iget v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x6b6f0000

    if-ne v6, v7, :cond_b

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->lookupCharForKorean(I)I

    move-result v5

    goto :goto_0

    :cond_b
    iget v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x6c740000    # 1.1799116E27f

    if-ne v6, v7, :cond_c

    invoke-direct {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->lookupCharForLithuanian(I)I

    move-result v5

    goto/16 :goto_0

    :cond_c
    iget v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x64610000

    if-eq v6, v7, :cond_d

    iget v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x66690000

    if-eq v6, v7, :cond_d

    iget v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x6e620000

    if-eq v6, v7, :cond_d

    iget v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x73760000

    if-ne v6, v7, :cond_e

    :cond_d
    invoke-direct {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->lookupCharForDanish(I)I

    move-result v5

    goto/16 :goto_0

    :cond_e
    iget v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x69730000

    if-ne v6, v7, :cond_f

    invoke-direct {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->lookupCharForIcelandic(I)I

    move-result v5

    goto/16 :goto_0

    :cond_f
    iget v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x617a0000

    if-ne v6, v7, :cond_10

    invoke-direct {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->lookupCharForAzerbaijan(I)I

    move-result v5

    goto/16 :goto_0

    :cond_10
    iget v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x65740000

    if-ne v6, v7, :cond_11

    invoke-direct {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->lookupCharForEstonian(I)I

    move-result v5

    goto/16 :goto_0

    :cond_11
    iget v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x73710000

    if-ne v6, v7, :cond_12

    invoke-direct {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->lookupCharForAlbanian(I)I

    move-result v5

    goto/16 :goto_0

    :cond_12
    iget v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x656c0000

    if-ne v6, v7, :cond_13

    invoke-direct {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->lookupCharForGreek(I)I

    move-result v5

    goto/16 :goto_0

    :cond_13
    iget v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x74720000

    if-ne v6, v7, :cond_15

    iget-object v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v7, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v9, :cond_14

    invoke-direct {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->lookupCharForTurkish(I)I

    move-result v5

    goto/16 :goto_0

    :cond_14
    const/4 v6, 0x2

    if-ne v4, v6, :cond_15

    invoke-direct {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->lookupCharForTurkishF(I)I

    move-result v5

    goto/16 :goto_0

    :cond_15
    if-lt p1, v10, :cond_16

    if-gt p1, v11, :cond_16

    add-int/lit8 v5, p1, -0x61

    aget-short v5, v2, v5

    goto/16 :goto_0

    :cond_16
    iget v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x68790000

    if-ne v6, v7, :cond_17

    invoke-direct {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->lookupCharForArmenian(I)I

    move-result v5

    goto/16 :goto_0

    :cond_17
    iget v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x62670000

    if-ne v6, v7, :cond_18

    invoke-direct {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->lookupCharForBulgarian(I)I

    move-result v5

    goto/16 :goto_0

    :cond_18
    iget v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x72750000

    if-eq v6, v7, :cond_19

    iget v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x6b6b0000

    if-eq v6, v7, :cond_19

    iget v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x756b0000

    if-eq v6, v7, :cond_19

    iget v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x617a0000

    if-eq v6, v7, :cond_19

    iget v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x6d6b0000

    if-ne v6, v7, :cond_1a

    :cond_19
    invoke-direct {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->lookupCharForRussian(I)I

    move-result v5

    goto/16 :goto_0

    :cond_1a
    iget v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x61720000

    if-eq v6, v7, :cond_1b

    iget v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x75720000

    if-eq v6, v7, :cond_1b

    iget v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x66610000

    if-ne v6, v7, :cond_1c

    :cond_1b
    invoke-direct {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->lookupCharForArabic(I)I

    move-result v5

    goto/16 :goto_0

    :cond_1c
    iget v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v7, 0x69770000

    if-ne v6, v7, :cond_1

    invoke-direct {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->lookupCharForHebrew(I)I

    move-result v5

    goto/16 :goto_0

    :cond_1d
    iget-object v2, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->KEYMAP_QWERTY:[S

    if-lt p1, v10, :cond_1

    if-gt p1, v11, :cond_1

    add-int/lit8 v5, p1, -0x61

    aget-short v5, v2, v5

    goto/16 :goto_0
.end method

.method private lookupCharForAlbanian(I)I
    .locals 3

    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_SQ:[S

    add-int/lit8 v0, p1, -0x61

    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-short v2, v1, v0

    :goto_0
    return v2

    :cond_0
    const/16 v2, 0xeb

    if-ne p1, v2, :cond_1

    const/16 v2, 0xa

    goto :goto_0

    :cond_1
    const/16 v2, 0xe7

    if-ne p1, v2, :cond_2

    const/16 v2, 0x14

    goto :goto_0

    :cond_2
    const/16 v2, 0x80

    goto :goto_0
.end method

.method private lookupCharForArabic(I)I
    .locals 4

    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_AR:[S

    iget v2, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v3, 0x61720000

    if-ne v2, v3, :cond_1

    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_AR:[S

    :cond_0
    :goto_0
    add-int/lit8 v0, p1, -0x41

    if-ltz v0, :cond_3

    array-length v2, v1

    if-ge v0, v2, :cond_3

    aget-short v2, v1, v0

    :goto_1
    return v2

    :cond_1
    iget v2, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v3, 0x66610000

    if-ne v2, v3, :cond_2

    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_FA:[S

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v3, 0x75720000

    if-ne v2, v3, :cond_0

    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_UR:[S

    goto :goto_0

    :cond_3
    const/16 v2, 0x80

    goto :goto_1
.end method

.method private lookupCharForArmenian(I)I
    .locals 3

    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_HY:[S

    add-int/lit16 v0, p1, -0x562

    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-short v2, v1, v0

    :goto_0
    return v2

    :cond_0
    const/16 v2, 0x80

    goto :goto_0
.end method

.method private lookupCharForAzerbaijan(I)I
    .locals 3

    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_AZ:[S

    add-int/lit8 v0, p1, -0x61

    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-short v2, v1, v0

    :goto_0
    return v2

    :cond_0
    sparse-switch p1, :sswitch_data_0

    const/16 v2, 0x80

    goto :goto_0

    :sswitch_0
    const/16 v2, 0xa

    goto :goto_0

    :sswitch_1
    const/16 v2, 0xb

    goto :goto_0

    :sswitch_2
    const/16 v2, 0x15

    goto :goto_0

    :sswitch_3
    const/16 v2, 0x16

    goto :goto_0

    :sswitch_4
    const/16 v2, 0x1e

    goto :goto_0

    :sswitch_5
    const/16 v2, 0x1f

    goto :goto_0

    :sswitch_6
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xe7 -> :sswitch_4
        0xf6 -> :sswitch_0
        0xfc -> :sswitch_6
        0x11f -> :sswitch_1
        0x131 -> :sswitch_2
        0x15f -> :sswitch_5
        0x259 -> :sswitch_3
    .end sparse-switch
.end method

.method private lookupCharForBulgarian(I)I
    .locals 3

    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_BG:[S

    add-int/lit8 v0, p1, -0x41

    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-short v2, v1, v0

    :goto_0
    return v2

    :cond_0
    const/16 v2, 0x80

    goto :goto_0
.end method

.method private lookupCharForDanish(I)I
    .locals 8

    const/16 v7, 0xe6

    const/16 v6, 0xe5

    const/16 v3, 0x15

    const/16 v4, 0x14

    const/16 v2, 0xa

    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_DA:[S

    add-int/lit8 v0, p1, -0x61

    if-ltz v0, :cond_1

    array-length v5, v1

    if-ge v0, v5, :cond_1

    aget-short v2, v1, v0

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    sparse-switch v5, :sswitch_data_0

    :cond_2
    const/16 v2, 0x80

    goto :goto_0

    :sswitch_0
    if-eq p1, v6, :cond_0

    const/16 v2, 0xf8

    if-ne p1, v2, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    if-ne p1, v7, :cond_2

    move v2, v4

    goto :goto_0

    :sswitch_1
    if-eq p1, v6, :cond_0

    const/16 v2, 0xf6

    if-ne p1, v2, :cond_4

    move v2, v4

    goto :goto_0

    :cond_4
    const/16 v2, 0xe4

    if-ne p1, v2, :cond_2

    move v2, v3

    goto :goto_0

    :sswitch_2
    const/16 v3, 0xf0

    if-eq p1, v3, :cond_0

    if-ne p1, v7, :cond_5

    move v2, v4

    goto :goto_0

    :cond_5
    const/16 v2, 0xfe

    if-ne p1, v2, :cond_2

    const/16 v2, 0x1c

    goto :goto_0

    :sswitch_3
    if-eq p1, v6, :cond_0

    const/16 v2, 0xf8

    if-ne p1, v2, :cond_6

    move v2, v4

    goto :goto_0

    :cond_6
    if-ne p1, v7, :cond_2

    move v2, v3

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64610000 -> :sswitch_0
        0x66690000 -> :sswitch_1
        0x69730000 -> :sswitch_2
        0x6e620000 -> :sswitch_3
        0x73760000 -> :sswitch_1
    .end sparse-switch
.end method

.method private lookupCharForEstonian(I)I
    .locals 3

    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_ET:[S

    add-int/lit8 v0, p1, -0x61

    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-short v2, v1, v0

    :goto_0
    return v2

    :cond_0
    sparse-switch p1, :sswitch_data_0

    const/16 v2, 0x80

    goto :goto_0

    :sswitch_0
    const/16 v2, 0xa

    goto :goto_0

    :sswitch_1
    const/16 v2, 0xb

    goto :goto_0

    :sswitch_2
    const/16 v2, 0x15

    goto :goto_0

    :sswitch_3
    const/16 v2, 0x16

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xe4 -> :sswitch_3
        0xf5 -> :sswitch_1
        0xf6 -> :sswitch_2
        0xfc -> :sswitch_0
    .end sparse-switch
.end method

.method private lookupCharForGreek(I)I
    .locals 3

    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->KEYMAP_QWERTY_EL:[S

    add-int/lit8 v0, p1, -0x61

    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-short v2, v1, v0

    :goto_0
    return v2

    :cond_0
    const/16 v2, 0x80

    goto :goto_0
.end method

.method private lookupCharForHebrew(I)I
    .locals 3

    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_HE:[S

    add-int/lit8 v0, p1, -0x41

    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-short v2, v1, v0

    :goto_0
    return v2

    :cond_0
    const/16 v2, 0x80

    goto :goto_0
.end method

.method private lookupCharForIcelandic(I)I
    .locals 3

    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_IS:[S

    add-int/lit8 v0, p1, -0x61

    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-short v2, v1, v0

    :goto_0
    return v2

    :cond_0
    const/16 v2, 0xf0

    if-ne p1, v2, :cond_1

    const/16 v2, 0xa

    goto :goto_0

    :cond_1
    const/16 v2, 0xe6

    if-ne p1, v2, :cond_2

    const/16 v2, 0x14

    goto :goto_0

    :cond_2
    const/16 v2, 0xfe

    if-ne p1, v2, :cond_3

    const/16 v2, 0x1c

    goto :goto_0

    :cond_3
    const/16 v2, 0x80

    goto :goto_0
.end method

.method private lookupCharForKorean(I)I
    .locals 3

    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_KO:[S

    add-int/lit16 v0, p1, -0x3131

    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-short v2, v1, v0

    :goto_0
    return v2

    :cond_0
    const/16 v2, 0x80

    goto :goto_0
.end method

.method private lookupCharForLithuanian(I)I
    .locals 3

    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_LT:[S

    add-int/lit8 v0, p1, -0x61

    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-short v2, v1, v0

    :goto_0
    return v2

    :cond_0
    sparse-switch p1, :sswitch_data_0

    const/16 v2, 0x80

    goto :goto_0

    :sswitch_0
    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_6
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_7
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_8
    const/16 v2, 0x8

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x105 -> :sswitch_0
        0x10d -> :sswitch_1
        0x117 -> :sswitch_3
        0x119 -> :sswitch_2
        0x12f -> :sswitch_4
        0x161 -> :sswitch_5
        0x16b -> :sswitch_7
        0x173 -> :sswitch_6
        0x17e -> :sswitch_8
    .end sparse-switch
.end method

.method private lookupCharForRussian(I)I
    .locals 3

    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->EXTEND_KEYMAP_RU:[S

    add-int/lit8 v0, p1, -0x41

    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-short v2, v1, v0

    :goto_0
    return v2

    :cond_0
    const/16 v2, 0x80

    goto :goto_0
.end method

.method private lookupCharForTHAI(I)I
    .locals 3

    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->KEYMAP_QWERTY_TH:[S

    add-int/lit8 v0, p1, -0x61

    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-short v2, v1, v0

    :goto_0
    return v2

    :cond_0
    const/16 v2, 0x80

    goto :goto_0
.end method

.method private lookupCharForTurkish(I)I
    .locals 3

    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->KEYMAP_QWERTY_TR:[S

    add-int/lit8 v0, p1, -0x61

    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-short v2, v1, v0

    :goto_0
    return v2

    :cond_0
    sparse-switch p1, :sswitch_data_0

    const/16 v2, 0x80

    goto :goto_0

    :sswitch_0
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_1
    const/16 v2, 0xa

    goto :goto_0

    :sswitch_2
    const/16 v2, 0xb

    goto :goto_0

    :sswitch_3
    const/16 v2, 0x15

    goto :goto_0

    :sswitch_4
    const/16 v2, 0x1e

    goto :goto_0

    :sswitch_5
    const/16 v2, 0x1f

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xe7 -> :sswitch_5
        0xf6 -> :sswitch_4
        0xfc -> :sswitch_2
        0x11f -> :sswitch_1
        0x131 -> :sswitch_0
        0x15f -> :sswitch_3
    .end sparse-switch
.end method

.method private lookupCharForTurkishF(I)I
    .locals 3

    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->KEYMAP_QWERTY_TR_F:[S

    add-int/lit8 v0, p1, -0x61

    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-short v2, v1, v0

    :goto_0
    return v2

    :cond_0
    sparse-switch p1, :sswitch_data_0

    const/16 v2, 0x80

    goto :goto_0

    :sswitch_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const/16 v2, 0x10

    goto :goto_0

    :sswitch_3
    const/16 v2, 0x16

    goto :goto_0

    :sswitch_4
    const/16 v2, 0x19

    goto :goto_0

    :sswitch_5
    const/16 v2, 0x1c

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xe7 -> :sswitch_5
        0xf6 -> :sswitch_4
        0xfc -> :sswitch_2
        0x11f -> :sswitch_1
        0x131 -> :sswitch_0
        0x15f -> :sswitch_3
    .end sparse-switch
.end method

.method private lookupCharForVIETNAMESE(I)I
    .locals 3

    const/4 v1, 0x0

    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->KEYMAP_QWERTY_VI_9:[S

    add-int/lit8 v0, p1, -0x61

    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-short v2, v1, v0

    :goto_0
    return v2

    :cond_0
    const/16 v2, 0x80

    goto :goto_0
.end method

.method private processKey(I)S
    .locals 7

    const/4 v3, 0x1

    new-array v0, v3, [S

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->lookupChar(I)I

    move-result v1

    int-to-short v3, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6, v0}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDB_ProcessKey(SJB[S)S

    move-result v2

    if-eqz v2, :cond_0

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ET9KDB_ProcessKey : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v2
.end method

.method private processTap(IFF)S
    .locals 7

    const/4 v0, 0x1

    new-array v5, v0, [S

    const/4 v6, 0x0

    invoke-virtual {p0, v0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->refreshContextBuffer(Z)I

    float-to-int v0, p2

    int-to-short v0, v0

    const v1, 0x453b8000    # 3000.0f

    add-float/2addr v1, p3

    float-to-int v1, v1

    int-to-short v1, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDB_ProcessTap(SSJB[S)S

    move-result v6

    return v6
.end method

.method private readDBdataFromFile(B)Z
    .locals 13

    const/4 v4, 0x0

    const-string v5, ""

    iget-object v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "xT9DB"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    const/4 v0, 0x0

    if-nez p1, :cond_6

    const-string v5, "xT9UdbData.dat"

    sget-object v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mUDBBuffer:[B

    :goto_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v4, :cond_11

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_11

    sget-boolean v9, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Loading XT9 DB file : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v9, 0x4

    if-ne p1, v9, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v9, v10

    sput v9, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->DLM_SIZE:I

    const/4 v9, 0x0

    sput-object v9, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMBuffer:[B

    sget v9, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->DLM_SIZE:I

    new-array v9, v9, [B

    sput-object v9, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMBuffer:[B

    sget-object v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMBuffer:[B

    :cond_1
    if-nez p1, :cond_e

    sget-object v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mUDBBuffer:[B

    :cond_2
    :goto_1
    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-boolean v9, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v9, :cond_3

    invoke-virtual {v7, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    => "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " bytes loaded!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    if-eqz v7, :cond_4

    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    move-object v6, v7

    :cond_5
    :goto_2
    const/4 v9, 0x1

    :goto_3
    return v9

    :cond_6
    const/4 v9, 0x6

    if-ne p1, v9, :cond_7

    const-string v5, "xT9ZHUdbData.dat"

    sget-object v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mZHUDBBuffer:[B

    goto/16 :goto_0

    :cond_7
    const/4 v9, 0x7

    if-ne p1, v9, :cond_8

    const-string v5, "xT9ZTUdbData.dat"

    sget-object v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mZTUDBBuffer:[B

    goto/16 :goto_0

    :cond_8
    const/4 v9, 0x1

    if-ne p1, v9, :cond_9

    const-string v5, "xT9CdbData.dat"

    sget-object v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCDBBuffer:[B

    goto/16 :goto_0

    :cond_9
    const/4 v9, 0x2

    if-ne p1, v9, :cond_a

    const-string v5, "xT9ASdbData.dat"

    sget-object v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mASDBBuffer:[B

    goto/16 :goto_0

    :cond_a
    const/4 v9, 0x3

    if-ne p1, v9, :cond_b

    const-string v5, "xT9KUdbData.dat"

    sget-object v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mKUDBBuffer:[B

    goto/16 :goto_0

    :cond_b
    const/4 v9, 0x4

    if-ne p1, v9, :cond_c

    const-string v5, "xT9DLMData.dat"

    sget-object v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMBuffer:[B

    goto/16 :goto_0

    :cond_c
    const/4 v9, 0x5

    if-ne p1, v9, :cond_d

    const-string v5, "xT9SMTData.dat"

    sget-object v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSMTBuffer:[B

    goto/16 :goto_0

    :cond_d
    const-string v9, "SamsungIME"

    const-string v10, "Invalid DB type!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto :goto_3

    :cond_e
    const/4 v9, 0x6

    if-ne p1, v9, :cond_f

    sget-object v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mZHUDBBuffer:[B

    goto/16 :goto_1

    :cond_f
    const/4 v9, 0x7

    if-ne p1, v9, :cond_2

    sget-object v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mZTUDBBuffer:[B

    goto/16 :goto_1

    :catch_0
    move-exception v3

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not close the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    goto/16 :goto_2

    :catch_1
    move-exception v3

    :goto_4
    :try_start_3
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not load the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_5

    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v3

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not close the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catchall_0
    move-exception v9

    :goto_5
    if-eqz v6, :cond_10

    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_10
    :goto_6
    throw v9

    :catch_3
    move-exception v3

    const-string v10, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not close the DB file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "!("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_11
    :try_start_6
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_2

    :catch_4
    move-exception v3

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not create the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_3

    :catchall_1
    move-exception v9

    move-object v6, v7

    goto :goto_5

    :catch_5
    move-exception v3

    move-object v6, v7

    goto/16 :goto_4
.end method

.method private setAutoAppend(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWSetAutoAppendInList()S

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSetAutoAppendInList : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWClearAutoAppendInList()S

    move-result v0

    goto :goto_0
.end method

.method private setAutoSubstitution(Z)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initASDB()S

    invoke-virtual {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getXt9Version()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWSetLDBAutoSubstitution()S

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSetLDBAutoSubstitution : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_3

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWSetUserDefinedAutoSubstitution()S

    move-result v0

    :goto_1
    sget-boolean v1, Lcom/ime/framework/util/Debug;->ERROR:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSetUserDefinedAutoSubstitution : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWClearLDBAutoSubstitution()S

    move-result v0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWClearUserDefinedAutoSubstitution()S

    move-result v0

    goto :goto_1
.end method

.method private setInputLanguage(I)S
    .locals 5

    const/16 v4, 0xe1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v2, "BILINGUAL_INPUT_LANGUAGE"

    invoke-interface {v1, v2, v3}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mBilingualInputLanguage:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getLanguageIDForEngine(I)I

    move-result v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getIsChnEngMixedInput()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-short v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    if-ne v1, v4, :cond_2

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPSetBilingual(Z)S

    move-result v0

    :goto_0
    sget-boolean v1, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SamsungIME_UnifiedIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Xt994Wrapper setInputLanguage Xt9core.ET9CPSetBilingual wStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ET9CPHasBilingualPrefix : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPHasBilingualPrefix()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-short v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    if-ne v1, v4, :cond_1

    invoke-virtual {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setChineseFuzzyPinyin()V

    :cond_1
    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->changeKDBNum(I)V

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9SetCapsGesture()S

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9SetShiftGesture()S

    iget-short v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    return v1

    :cond_2
    invoke-static {v3}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPSetBilingual(Z)S

    move-result v0

    goto :goto_0
.end method

.method private setInputMode(Z)V
    .locals 8

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v4

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    const/4 v3, 0x0

    new-array v1, v5, [S

    new-array v2, v5, [S

    invoke-static {v1, v2}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDB_GetPageNum([S[S)S

    move-result v3

    if-eqz v3, :cond_2

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9KDB_GetPageNum : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget v4, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->INPUT_MODE_AMBIG:I

    if-eq v0, v4, :cond_3

    iget-short v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v5, 0xe1

    if-eq v4, v5, :cond_3

    iget-short v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v5, 0xe0

    if-eq v4, v5, :cond_3

    iget-short v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v5, 0xe2

    if-ne v4, v5, :cond_5

    :cond_3
    const/4 v3, 0x0

    aget-short v4, v1, v7

    aget-short v5, v2, v7

    invoke-static {v4, v5}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetAmbigMode(SS)S

    move-result v3

    if-eqz v3, :cond_4

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9KDB_SetAmbigMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void

    :cond_5
    sget v4, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->INPUT_MODE_MULTITAP:I

    if-ne v0, v4, :cond_4

    const/4 v3, 0x0

    aget-short v4, v1, v7

    aget-short v5, v2, v7

    invoke-static {v4, v5}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetMultiTapMode(SS)S

    move-result v3

    if-eqz v3, :cond_4

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9KDB_SetMultiTapMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setNextWordPrediction(Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-static {v5, v4}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWSetNextWordPrediction(ZZ)S

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSetNextWordPrediction : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v5, v4}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KEnableNextWordPrediction(ZZ)S

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9KEnableNextWordPrediction : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWSetContextBasedPrediction()S

    move-result v0

    if-eqz v0, :cond_2

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSetContextBasedPrediction : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private setRegionalCorrectionOn(Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetRegionalMode()S

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9KDB_SetRegionalMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_4

    const/4 v1, 0x2

    invoke-static {v1, v4}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWSetSpellCorrectionMode(BZ)S

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSetSpellCorrectionMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {v4}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWSetSelectionListMode(B)S

    move-result v0

    if-eqz v0, :cond_2

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSetSelectionListMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetDiscreteMode()S

    move-result v0

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    invoke-static {v1, v4}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWSetSpellCorrectionMode(BZ)S

    move-result v0

    if-eqz v0, :cond_5

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSetSpellCorrectionMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {v4}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWSetSelectionListMode(B)S

    move-result v0

    if-eqz v0, :cond_2

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSetSelectionListMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setUDBDelayedReorder(Z)S
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    invoke-static {v0, v1}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWSetUDBDelayedReorder(BB)S

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {v1, v1}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWSetUDBDelayedReorder(BB)S

    move-result v0

    goto :goto_0
.end method

.method private setWordCompletion(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWSetDBCompletion()S

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSetDBCompletion : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWClearDBCompletion()S

    move-result v0

    goto :goto_0
.end method

.method private setWordCompletionPoint(S)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWSetWordCompletionPoint(S)S

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSetWordCompletionPoint : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private toUpperCaseOfTurkish(I)C
    .locals 1

    const/16 v0, 0x69

    if-ne p1, v0, :cond_0

    const/16 v0, 0x130

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x131

    if-ne p1, v0, :cond_1

    const/16 v0, 0x49

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v0

    int-to-char v0, v0

    goto :goto_0

    :cond_2
    int-to-char v0, p1

    goto :goto_0
.end method


# virtual methods
.method public DLMAddWord([CS)S
    .locals 2

    const/high16 v0, 0x6b6f0000

    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getLocaleLanguage()Lcom/ime/framework/common/Language;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ime/framework/common/Language;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsKoreanCoreInit:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDLMAddWord([CS)S

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWDLMAddWord([CS)S

    move-result v0

    goto :goto_0
.end method

.method public HiraganaToromaji(Ljava/lang/String;)[B
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    new-array v4, v5, [I

    const/16 v5, 0xa

    new-array v0, v5, [B

    :try_start_0
    const-string v5, "Shift_JIS"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v5, v2

    int-to-short v5, v5

    invoke-static {v2, v5, v0, v4}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KanaToRomaji([BS[B[I)S
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Ljava/lang/String;

    aget v5, v4, v6

    invoke-direct {v1, v0, v6, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    return-object v5

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public addAutoSubstitution(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 7

    const/16 v4, 0x14

    invoke-virtual {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertCharSequenceToShortArray(Ljava/lang/CharSequence;)[S

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2, v0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->isExistInAutoSubstitutions([SLjava/lang/StringBuilder;)I

    move-result v1

    const/4 v5, 0x4

    if-ne v1, v5, :cond_1

    invoke-virtual {p0, p2}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertCharSequenceToShortArray(Ljava/lang/CharSequence;)[S

    move-result-object v3

    array-length v4, v2

    int-to-short v4, v4

    array-length v5, v3

    int-to-short v5, v5

    invoke-static {v2, v3, v4, v5}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWASDBAddEntry([S[SSS)S

    move-result v1

    sget-boolean v4, Lcom/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_4

    if-eqz v1, :cond_4

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Xt9Wrapper addAutoSubstitution ET9AWASDBAddEntry error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v1

    :cond_0
    :goto_0
    return v4

    :cond_1
    const/16 v5, 0x26

    if-ne v1, v5, :cond_5

    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initASDB()S

    move-result v1

    sget-boolean v5, Lcom/ime/framework/util/Debug;->ERROR:Z

    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2, v0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->isExistInAutoSubstitutions([SLjava/lang/StringBuilder;)I

    move-result v1

    const/16 v5, 0x15

    if-ne v1, v5, :cond_3

    invoke-virtual {p0, p2}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertCharSequenceToShortArray(Ljava/lang/CharSequence;)[S

    move-result-object v3

    array-length v4, v2

    int-to-short v4, v4

    array-length v5, v3

    int-to-short v5, v5

    invoke-static {v2, v3, v4, v5}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWASDBAddEntry([S[SSS)S

    move-result v1

    sget-boolean v4, Lcom/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_4

    if-eqz v1, :cond_4

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Xt9Wrapper addAutoSubstitution ET9AWASDBAddEntry error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_0

    :cond_4
    move v4, v1

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_0

    move v4, v1

    goto :goto_0
.end method

.method public addMyWord(Ljava/lang/CharSequence;)I
    .locals 8

    const/16 v5, 0x14

    const/4 v7, 0x4

    const/4 v4, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_0

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/ime/framework/util/Utils;->isKoreanLetter(C)Z

    move-result v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertCharSequenceToShortArray(Ljava/lang/CharSequence;)[S

    move-result-object v2

    if-eqz v0, :cond_3

    invoke-virtual {p0, v2, v0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->isExistInMyWords([SZ)I

    move-result v1

    if-ne v1, v7, :cond_1

    invoke-virtual {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertCharSequenceToCharArray(Ljava/lang/CharSequence;)[C

    move-result-object v3

    array-length v5, v3

    int-to-short v5, v5

    invoke-static {v3, v5}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDLMAddWord([CS)S

    :goto_0
    return v4

    :cond_1
    if-nez v1, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    move v4, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2, v0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->isExistInMyWords([SZ)I

    move-result v1

    if-ne v1, v7, :cond_4

    invoke-virtual {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertCharSequenceToCharArray(Ljava/lang/CharSequence;)[C

    move-result-object v3

    array-length v5, v3

    int-to-short v5, v5

    invoke-static {v3, v5}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWDLMAddWord([CS)S

    goto :goto_0

    :cond_4
    if-nez v1, :cond_5

    move v4, v5

    goto :goto_0

    :cond_5
    move v4, v1

    goto :goto_0

    :cond_6
    move v4, v1

    goto :goto_0
.end method

.method public breakContext()V
    .locals 0

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWBreakContext()S

    return-void
.end method

.method public checkXT9WordWrappingRule(C)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "\'-#_"

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearContext()I
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    invoke-virtual {v1}, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->init()V

    iput v2, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mActiveIndex:I

    iput v2, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSuggestionCount:I

    iget-short v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v2, 0x12

    if-ne v1, v2, :cond_3

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KClearAllSymbs()S

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9ClearAllSymbs : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-byte v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mShiftState:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9SetShift()S

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9SetShift : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-byte v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mShiftState:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9SetCapsLock()S

    move-result v0

    if-eqz v0, :cond_2

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9SetCapsLock : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0

    :cond_3
    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9ClearAllSymbs()S

    move-result v0

    goto :goto_0
.end method

.method public clearWordSourceInformation()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mWordInfoData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public convertCharSequenceToCharArray(Ljava/lang/CharSequence;)[C
    .locals 4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    new-array v2, v1, [C

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput-char v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public convertCharSequenceToShortArray(Ljava/lang/CharSequence;)[S
    .locals 4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    new-array v2, v1, [S

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    int-to-short v3, v3

    aput-short v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public convertChartArrayToCharSequence([CI)Ljava/lang/CharSequence;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget-char v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public convertShortArrayToCharSequence([SI)Ljava/lang/CharSequence;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget-short v2, p1, v0

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public deleteAutoSubstitution(Ljava/lang/CharSequence;)I
    .locals 7

    invoke-virtual {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertCharSequenceToShortArray(Ljava/lang/CharSequence;)[S

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2, v3}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->isExistInAutoSubstitutions([SLjava/lang/StringBuilder;)I

    move-result v0

    if-nez v0, :cond_0

    array-length v4, v2

    int-to-short v4, v4

    invoke-static {v2, v4}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWASDBDeleteEntry([SS)S

    move-result v0

    sget-boolean v4, Lcom/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Xt9Wrapper deleteAutoSubstitution ET9AWASDBDeleteEntry error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    :goto_0
    return v1

    :cond_0
    const/16 v4, 0x26

    if-ne v0, v4, :cond_3

    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initASDB()S

    move-result v0

    sget-boolean v4, Lcom/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->isExistInAutoSubstitutions([SLjava/lang/StringBuilder;)I

    move-result v0

    if-nez v0, :cond_2

    array-length v4, v2

    int-to-short v4, v4

    invoke-static {v2, v4}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWASDBDeleteEntry([SS)S

    move-result v0

    sget-boolean v4, Lcom/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Xt9Wrapper deleteAutoSubstitution ET9AWASDBDeleteEntry error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_0

    :cond_4
    move v1, v0

    goto :goto_0
.end method

.method public deleteChar(II)V
    .locals 4

    const/4 v0, 0x0

    iget-short v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v2, 0x12

    if-ne v1, v2, :cond_1

    int-to-byte v1, p1

    int-to-byte v2, p2

    invoke-static {v1, v2}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDeleteSymbs(BB)S

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9DeleteSymbs : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    int-to-byte v1, p1

    int-to-byte v2, p2

    invoke-static {v1, v2}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9DeleteSymbs(BB)S

    move-result v0

    goto :goto_0
.end method

.method public deleteLdb(I)V
    .locals 1

    int-to-short v0, p1

    invoke-static {v0}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9DeleteLdb(S)S

    return-void
.end method

.method public deleteMyWord(Ljava/lang/CharSequence;)I
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertCharSequenceToCharArray(Ljava/lang/CharSequence;)[C

    move-result-object v2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/ime/framework/util/Utils;->isKoreanLetter(C)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_2

    array-length v3, v2

    int-to-short v3, v3

    invoke-static {v2, v3}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDLMDeleteWord([CS)S

    move-result v1

    :cond_1
    :goto_0
    return v1

    :cond_2
    array-length v3, v2

    int-to-short v3, v3

    invoke-static {v2, v3}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWDLMDeleteWord([CS)S

    move-result v1

    goto :goto_0
.end method

.method public deleteWordFromLDB([CS)S
    .locals 3

    iget-short v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v2, 0x12

    if-ne v1, v2, :cond_0

    invoke-static {p1, p2}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDLMDeleteWord([CS)S

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget-short v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    iget-short v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v2, 0xe1

    if-eq v1, v2, :cond_1

    iget-short v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v2, 0xe0

    if-eq v1, v2, :cond_1

    iget-short v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v2, 0xe2

    if-ne v1, v2, :cond_2

    :cond_1
    new-instance v0, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;

    invoke-direct {v0}, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;-><init>()V

    iput-object p1, v0, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->pSymbs:[C

    int-to-byte v1, p2

    iput-byte v1, v0, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->bLen:B

    invoke-static {v0}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPUdbDeletePhrase(Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;)S

    move-result v1

    goto :goto_0

    :cond_2
    invoke-static {p1, p2}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWDLMDeleteWord([CS)S

    move-result v1

    goto :goto_0
.end method

.method public doNextWordPredictionForXt9(Z)I
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v1, 0x19

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->buildSuggestions(I)V

    const/4 v0, 0x0

    return v0
.end method

.method public doNoteWordDoneForXt9(I)I
    .locals 28

    const/16 v25, 0x0

    move/from16 v21, p1

    move-object/from16 v0, p0

    iget-short v12, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v13, 0x12

    if-ne v12, v13, :cond_4

    const/4 v12, -0x1

    move/from16 v0, p1

    if-ne v0, v12, :cond_0

    const/16 p1, 0x0

    :cond_0
    move/from16 v0, p1

    int-to-byte v12, v0

    invoke-static {v12}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KSelectHangul(B)S

    move-result v25

    if-eqz v25, :cond_1

    const-string v12, "SamsungIME"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "ET9KSelectHangul : "

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    invoke-virtual {v12}, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->init()V

    const/4 v12, 0x1

    new-array v4, v12, [S

    const/4 v12, 0x1

    new-array v0, v12, [B

    move-object/from16 v23, v0

    move/from16 v0, p1

    int-to-byte v12, v0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v13, v13, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-short v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v23

    invoke-static {v12, v13, v0, v4, v1}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KGetHangul(B[SS[S[B)S

    move-result v25

    if-eqz v25, :cond_2

    const-string v12, "SamsungIME"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "ET9KGetHangul : "

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v12, v12, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v12, v12, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    array-length v12, v12

    if-lez v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v12, v12, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    const/4 v13, 0x0

    aget-short v13, v4, v13

    invoke-static {v12, v13}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KNoteHangulDone([SS)S

    move-result v25

    if-eqz v25, :cond_3

    const-string v12, "SamsungIME"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "ET9KNoteHangulDone : "

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return v25

    :cond_4
    new-instance v22, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    invoke-direct/range {v22 .. v22}, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;-><init>()V

    move/from16 v0, p1

    int-to-byte v12, v0

    move-object/from16 v0, v22

    invoke-static {v0, v12}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWSelLstGetWord(Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;B)S

    move-result v25

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v6, 0x0

    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v20

    if-eqz v20, :cond_5

    const/16 v12, 0x40

    const/4 v13, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v12, v13}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v12, 0x40

    const/4 v13, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v12, v13}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    int-to-long v6, v12

    move-object/from16 v0, v22

    iget-short v10, v0, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->wWordLen:S

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    sub-int/2addr v12, v10

    int-to-long v8, v12

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsVZW:Z

    if-eqz v12, :cond_7

    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-ltz v12, :cond_7

    long-to-int v0, v8

    move/from16 v24, v0

    long-to-int v12, v8

    add-int v18, v12, v10

    const-string v16, ""

    move-object/from16 v0, v26

    move/from16 v1, v24

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->checkExclusionPattern(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    const/16 v19, 0x0

    :goto_1
    move/from16 v0, v19

    if-ge v0, v10, :cond_6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    :cond_6
    move-object/from16 v0, v26

    move/from16 v1, v24

    move/from16 v2, v18

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertCharSequenceToShortArray(Ljava/lang/CharSequence;)[S

    move-result-object v5

    const/4 v12, 0x1

    new-array v11, v12, [S

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v5 .. v13}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWNoteWordChanged([SJJS[S[SS)S

    move-result v25

    goto/16 :goto_0
.end method

.method public doNoteWordDoneForXt9WithoutIndex(I)I
    .locals 14

    const/4 v11, 0x0

    const/16 v6, 0xa

    if-eq p1, v6, :cond_0

    const/16 v6, 0x20

    if-ne p1, v6, :cond_1

    :cond_0
    move v12, v11

    :goto_0
    return v12

    :cond_1
    iget-short v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v8, 0x12

    if-ne v6, v8, :cond_2

    const/4 v6, 0x1

    new-array v13, v6, [S

    const/4 v6, 0x0

    int-to-short v8, p1

    aput-short v8, v13, v6

    const/4 v6, 0x1

    invoke-static {v13, v6}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KNoteHangulDone([SS)S

    move-result v11

    move v12, v11

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v10

    if-eqz v10, :cond_4

    const/16 v6, 0x40

    const/4 v8, 0x0

    invoke-interface {v10, v6, v8}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    const/16 v8, 0x20

    if-ne v6, v8, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    int-to-long v2, v6

    const-wide/16 v8, 0x1

    sub-long v4, v2, v8

    :cond_4
    invoke-virtual {p0, v13}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertCharSequenceToShortArray(Ljava/lang/CharSequence;)[S

    move-result-object v1

    const/4 v6, 0x1

    new-array v7, v6, [S

    sub-long v8, v2, v4

    long-to-int v6, v8

    int-to-short v6, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWNoteWordChanged([SJJS[S[SS)S

    move-result v11

    move v12, v11

    goto :goto_0
.end method

.method public doRecaptureForXt9(Ljava/lang/String;SZ)I
    .locals 13

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsReConstruction:Z

    const/4 v0, 0x1

    new-array v2, v0, [B

    const/4 v0, 0x1

    new-array v3, v0, [B

    const/4 v0, 0x1

    new-array v4, v0, [B

    const/4 v0, 0x1

    new-array v5, v0, [B

    iget-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "SETTINGS_DEFAULT_RECAPTURE"

    const/4 v12, 0x0

    invoke-interface {v0, v1, v12}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v7

    const/4 v9, 0x0

    if-nez v7, :cond_0

    if-eqz p3, :cond_6

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertCharSequenceToCharArray(Ljava/lang/CharSequence;)[C

    move-result-object v11

    invoke-virtual {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->clearContext()I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->refreshContextBuffer(Z)I

    iget-short v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v1, 0x12

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    invoke-virtual {v0}, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->init()V

    iget-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iput-short p2, v0, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->wLen:S

    const/16 v0, 0x40

    if-le p2, v0, :cond_1

    const/16 p2, 0x40

    :cond_1
    const/4 v6, 0x0

    :goto_0
    if-ge v6, p2, :cond_2

    iget-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v0, v0, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    aget-char v1, v11, v6

    int-to-short v1, v1

    aput-short v1, v0, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    new-instance v8, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;

    invoke-direct {v8}, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;-><init>()V

    iget-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    const/4 v1, 0x0

    invoke-static {v0, v8, v1}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDecodeHangul(Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;Z)S

    invoke-virtual {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getXt9Version()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_3

    iget-object v0, v8, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;->sString:[C

    iget-short v1, v8, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;->wLen:S

    invoke-static {v0, v1}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDBRecaptureWord([CS)S

    move-result v9

    :goto_1
    sget-boolean v0, Lcom/ime/framework/util/Debug;->ERROR:Z

    if-eqz v0, :cond_5

    if-eqz v9, :cond_5

    const-string v0, "SamsungIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "exceptionKorRecapture : "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->updateShiftState()V

    move v10, v9

    :goto_2
    return v10

    :cond_3
    iget-object v0, v8, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;->sString:[C

    iget-short v1, v8, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;->wLen:S

    invoke-static/range {v0 .. v5}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDB_ReselectWord([CS[B[B[B[B)S

    move-result v9

    goto :goto_1

    :cond_4
    invoke-static {v11, p2}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDBRecaptureWord([CS)S

    move-result v9

    sget-boolean v0, Lcom/ime/framework/util/Debug;->ERROR:Z

    if-eqz v0, :cond_5

    if-eqz v9, :cond_5

    const-string v0, "SamsungIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "exceptionKorRecapture : "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->updateShiftState()V

    move v10, v9

    goto :goto_2

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsRecapture:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsRecapture:Z

    invoke-virtual {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->updateShiftState()V

    :cond_6
    iget-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->setXt9Recapture(Z)V

    move v10, v9

    goto :goto_2
.end method

.method public doResetMultitap()I
    .locals 1

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDB_TimeOut()S

    move-result v0

    return v0
.end method

.method public exportChineseUdbToFile(Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0x3000

    const/4 v0, 0x1

    const-string v1, "/data/data/com.sec.android.inputmethod/zipSwiftKey/xT9UdbData.dat"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xe1

    invoke-static {v1}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPLdbInit(S)S

    move-result v0

    const-string v1, "SamsungIME_SYNC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exportChineseUdbToFile() ET9CPLdbInit(Xt9Datatype.ET9PLIDChineseSimplified): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mUDBBuffer:[B

    invoke-static {v1, v4}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPUdbActivate([BS)S

    move-result v0

    const-string v1, "SamsungIME_SYNC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exportChineseUdbToFile() ET9CPUdbActivate(Xt9Datatype.ET9PLIDChineseSimplified): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/ime/framework/engine/xt9/Xt9core;->exportChnUDB(Ljava/lang/String;)S

    return-void

    :cond_1
    const-string v1, "/data/data/com.sec.android.inputmethod/zipSwiftKey/xT9ZTUdbData.dat"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xe0

    invoke-static {v1}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPLdbInit(S)S

    move-result v0

    sget-object v1, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mZTUDBBuffer:[B

    invoke-static {v1, v4}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPUdbActivate([BS)S

    move-result v0

    goto :goto_0

    :cond_2
    const-string v1, "/data/data/com.sec.android.inputmethod/zipSwiftKey/xT9ZHUdbData.dat"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xe2

    invoke-static {v1}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPLdbInit(S)S

    move-result v0

    sget-object v1, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mZHUDBBuffer:[B

    invoke-static {v1, v4}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPUdbActivate([BS)S

    move-result v0

    goto :goto_0
.end method

.method public exportEnglishDlmToFile(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWLdbInit()S

    move-result v0

    const-string v1, "SamsungIME_SYNC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exportEnglishDlmToFile() ET9AWLdbInit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SSZ)S

    move-result v0

    const-string v1, "SamsungIME_SYNC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exportEnglishDlmToFile() ET9AWLdbSetLanguage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMBuffer:[B

    sget v2, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->DLM_SIZE:I

    invoke-static {v1, v2}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWDLMInit([BI)S

    move-result v0

    const-string v1, "SamsungIME_SYNC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exportEnglishDlmToFile() ET9AWDLMInit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/ime/framework/engine/xt9/Xt9core;->exportAlphaDLMEvent(Ljava/lang/String;)S

    return-void
.end method

.method public exportKoreanDlmToFile(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    const/16 v1, 0x712

    invoke-static {v1, v4}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KLdbInit(SS)S

    move-result v0

    const-string v1, "SamsungIME_SYNC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exportKoreanDlmToFile() ET9KLdbInit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x12

    const/4 v2, 0x1

    invoke-static {v1, v4, v2}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SSZ)S

    move-result v0

    const-string v1, "SamsungIME_SYNC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exportKoreanDlmToFile() ET9AWLdbSetLanguage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMBuffer:[B

    sget v2, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->DLM_SIZE:I

    invoke-static {v1, v2}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDLMInit([BI)S

    move-result v0

    const-string v1, "SamsungIME_SYNC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exportKoreanDlmToFile() ET9KLdbInit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/ime/framework/engine/xt9/Xt9core;->exportKorDLMEvent(Ljava/lang/String;)S

    return-void
.end method

.method public findWordFromDLM([CS)Z
    .locals 2

    invoke-static {p1, p2}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWDLMFindWord([CS)S

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findWordInUDB(Ljava/lang/CharSequence;)I
    .locals 6

    const/16 v5, 0x40

    invoke-virtual {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertCharSequenceToShortArray(Ljava/lang/CharSequence;)[S

    move-result-object v1

    const/4 v3, 0x1

    new-array v2, v3, [S

    const/4 v0, 0x1

    const/4 v3, 0x0

    array-length v4, v1

    int-to-short v4, v4

    aput-short v4, v2, v3

    iget-short v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v4, 0xe1

    if-ne v3, v4, :cond_1

    sget-object v3, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mWordBuf:[S

    sget-object v4, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mWordLengthBuf:[S

    invoke-static {v1, v2, v3, v5, v4}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWScanBufForNextCustomWord([S[S[SS[S)S

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-short v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v4, 0xe2

    if-ne v3, v4, :cond_2

    sget-object v3, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mZHWordBuf:[S

    sget-object v4, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mZHWordLengthBuf:[S

    invoke-static {v1, v2, v3, v5, v4}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWScanBufForNextCustomWord([S[S[SS[S)S

    move-result v0

    goto :goto_0

    :cond_2
    iget-short v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v4, 0xe0

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mZTWordBuf:[S

    sget-object v4, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mZTWordLengthBuf:[S

    invoke-static {v1, v2, v3, v5, v4}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWScanBufForNextCustomWord([S[S[SS[S)S

    move-result v0

    goto :goto_0
.end method

.method public getActiveIndex([I)I
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mActiveIndex:I

    aput v0, p1, v1

    return v1
.end method

.method public getAutoSubstitutionsList(Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)I"
        }
    .end annotation

    const/16 v1, 0x40

    const/4 v6, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setAutoSubstitution(Z)V

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCount:[S

    aput-short v6, v0, v6

    iget-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCount:[S

    invoke-static {v0}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWASDBGetEntryCount([S)S

    move-result v8

    const/16 v0, 0x26

    if-ne v8, v0, :cond_1

    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initASDB()S

    move-result v8

    sget-boolean v0, Lcom/ime/framework/util/Debug;->ERROR:Z

    if-eqz v0, :cond_0

    if-eqz v8, :cond_0

    move v9, v8

    :goto_0
    return v9

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCount:[S

    aput-short v6, v0, v6

    iget-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCount:[S

    invoke-static {v0}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWASDBGetEntryCount([S)S

    move-result v8

    sget-boolean v0, Lcom/ime/framework/util/Debug;->ERROR:Z

    if-eqz v0, :cond_2

    if-eqz v8, :cond_2

    const-string v0, "SamsungIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Xt9Wrapper getAutoSubstitutionsList ET9AWASDBGetEntryCount error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/ime/framework/util/Debug;->ERROR:Z

    if-eqz v0, :cond_2

    if-eqz v8, :cond_2

    const-string v0, "SamsungIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Xt9Wrapper getAutoSubstitutionsList ET9AWASDBGetEntryCount error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_1
    iget-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCount:[S

    aget-short v0, v0, v6

    if-ge v7, v0, :cond_4

    iget-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mShortcutBuf:[S

    iget-object v2, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mShortcutLengthBuf:[S

    iget-object v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSubstitutionBuf:[S

    iget-object v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSubstitutionLengthBuf:[S

    move v4, v1

    invoke-static/range {v0 .. v6}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWASDBGetEntry([SS[S[SS[SB)S

    sget-boolean v0, Lcom/ime/framework/util/Debug;->ERROR:Z

    if-eqz v0, :cond_3

    if-eqz v8, :cond_3

    const-string v0, "SamsungIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Xt9Wrapper getAutoSubstitutionsList ET9AWASDBGetEntry error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mShortcutBuf:[S

    iget-object v2, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mShortcutLengthBuf:[S

    aget-short v2, v2, v6

    invoke-virtual {p0, v0, v2}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertShortArrayToCharSequence([SI)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSubstitutionBuf:[S

    iget-object v2, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSubstitutionLengthBuf:[S

    aget-short v2, v2, v6

    invoke-virtual {p0, v0, v2}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertShortArrayToCharSequence([SI)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    move v9, v8

    goto/16 :goto_0
.end method

.method public getBestCandidate()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mBestCandidate:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSuggestionCount:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mBestCandidate:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getCharSequence(Ljava/lang/StringBuilder;)I
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iget-boolean v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsDisableAutoCorrection:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsActiveWordStatusChangable:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v1

    if-nez v1, :cond_1

    iget-short v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1, v3}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getCharSequence(Ljava/lang/StringBuilder;I)I

    :goto_0
    return v3

    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getInputWords()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getCharSequence(Ljava/lang/StringBuilder;I)I
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-direct {p0, p2}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getInputWords(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return v1
.end method

.method public getEngAddedWordList(I)Ljava/lang/StringBuilder;
    .locals 8

    const/4 v7, 0x0

    const/16 v4, 0x40

    new-array v2, v4, [S

    const/4 v4, 0x1

    new-array v1, v4, [S

    int-to-short v4, p1

    invoke-static {v2, v1, v4}, Lcom/ime/framework/engine/xt9/Xt9core;->getEngAddedWordList([S[SS)S

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-short v4, v1, v7

    if-nez v4, :cond_1

    const/4 v3, 0x0

    :cond_0
    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "phrase_len[0] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-short v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEngAddedWordList : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_1
    const/4 v0, 0x0

    :goto_0
    aget-short v4, v1, v7

    if-ge v0, v4, :cond_0

    array-length v4, v2

    if-ge v0, v4, :cond_0

    aget-short v4, v2, v0

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getExactCharSequence(Ljava/lang/StringBuilder;)I
    .locals 14

    const/16 v13, 0x2025

    const/16 v11, 0x11a2

    const/4 v10, 0x1

    const/4 v12, 0x0

    iget-object v8, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v4

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v8, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSimpleWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;

    invoke-static {v8}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9GetExactWord(Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;)S

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return v12

    :cond_1
    const/4 v5, 0x0

    iget-short v8, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v9, 0x12

    if-ne v8, v9, :cond_6

    iget-object v8, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    invoke-static {v8}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KBuildHangul(Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;)S

    move-result v7

    if-nez v7, :cond_0

    iget-object v8, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-short v5, v8, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->wLen:S

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_0

    iget-object v8, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v8, v8, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    aget-short v8, v8, v3

    if-ne v8, v13, :cond_2

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v8, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v8, v8, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    aget-short v8, v8, v3

    int-to-char v8, v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    iget-object v8, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-short v5, v8, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->wLen:S

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v5, :cond_5

    iget-object v8, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v8, v8, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    aget-short v8, v8, v3

    if-ne v8, v13, :cond_4

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    iget-object v8, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v8, v8, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    aget-short v8, v8, v3

    int-to-char v8, v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_5
    if-eq v4, v10, :cond_0

    iget-object v8, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-short v8, v8, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->wLen:S

    if-le v8, v10, :cond_0

    iget-object v8, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v8, v8, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->pSymbCounts:[S

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v8, v8, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->pSymbCounts:[S

    array-length v8, v8

    if-lez v8, :cond_0

    iget-object v8, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHangulWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v8, v8, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->pSymbCounts:[S

    aget-short v8, v8, v12

    int-to-byte v8, v8

    invoke-static {v12, v8}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDeleteSymbs(BB)S

    move-result v7

    goto :goto_0

    :cond_6
    iget-short v8, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v9, 0x11

    if-ne v8, v9, :cond_7

    new-array v6, v10, [I

    iget-object v8, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSimpleWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;

    iget-object v8, v8, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;->sString:[C

    iget-object v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSimpleWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;

    iget-short v9, v9, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;->wLen:S

    iget-object v10, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mMidashigoWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;

    iget-object v10, v10, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;->sWord:[B

    invoke-static {v8, v9, v10, v6}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9RomajiToKana([CS[B[I)S

    move-result v7

    const-string v0, ""

    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v8, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mMidashigoWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;

    iget-object v8, v8, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;->sWord:[B

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v6, v10

    const-string v11, "Shift_JIS"

    invoke-direct {v1, v8, v9, v10, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v2

    :goto_5
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    iget-object v8, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSimpleWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;

    iget-short v5, v8, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;->wLen:S

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v5, :cond_0

    iget-object v8, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSimpleWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;

    iget-object v8, v8, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;->sString:[C

    aget-char v8, v8, v3

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :catch_1
    move-exception v2

    move-object v0, v1

    goto :goto_5
.end method

.method public getInputLanguageId()S
    .locals 1

    iget v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    invoke-virtual {p0, v0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getXt9LanguageId(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getInputSequenceCount()I
    .locals 1

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9InputSequenceCount()S

    move-result v0

    return v0
.end method

.method public getInputTransResult()Ljava/lang/CharSequence;
    .locals 6

    const/16 v2, 0xe0

    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v4, v4, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    if-ge v4, v2, :cond_0

    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v2, v4, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    :cond_0
    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v4, v4, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v4, v4, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    if-ge v0, v4, :cond_5

    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isShuangPinMode()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v4, v4, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v4, v4, v0

    invoke-direct {p0, v4}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->isDoublePinyinChar(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x0

    if-lez v0, :cond_3

    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v4, v4, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    add-int/lit8 v5, v0, -0x1

    aget-char v4, v4, v5

    const v5, 0xf24a

    if-ne v4, v5, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_2
    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v4, v4, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v4, v4, v0

    invoke-direct {p0, v4}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getShuangpinSpells(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ime/framework/util/Utils;->convertToTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v4, v4, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v4, v4, v0

    invoke-direct {p0, v4}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getShuangpinSpells(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v4, v4, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v4, v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getKeyPositionByTap(II)I
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    new-array v4, v10, [S

    int-to-short v6, p1

    add-int/lit16 v7, p2, 0xbb8

    int-to-short v7, v7

    invoke-static {v6, v7, v4}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDB_GetKeyPositionByTap(SS[S)S

    move-result v5

    if-eqz v5, :cond_1

    const-string v6, "SamsungIME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ET9KDB_GetKeyPositionByTap - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x13

    if-ne v5, v6, :cond_0

    new-array v1, v10, [S

    new-array v3, v10, [S

    invoke-static {v1, v3}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDB_GetPageNum([S[S)S

    move-result v5

    const-string v6, "SamsungIME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ET9KDB_GetPageNum - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", 1 page = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-short v8, v1, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", 2 page = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-short v8, v3, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v10, [S

    new-array v2, v10, [S

    invoke-static {v0, v2}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDB_GetKdbNum([S[S)S

    move-result v5

    const-string v6, "SamsungIME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ET9KDB_GetKdbNum - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", 1 kdb = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-short v8, v0, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", 2 kdb = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-short v8, v2, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v6, -0x12c

    :goto_0
    return v6

    :cond_1
    aget-short v6, v4, v9

    goto :goto_0
.end method

.method public getKeyPositions([Landroid/graphics/Rect;)I
    .locals 7

    const/4 v3, 0x0

    array-length v2, p1

    new-array v0, v2, [Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9Region;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    new-instance v4, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9Region;

    invoke-direct {v4}, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9Region;-><init>()V

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0, v2}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDB_GetKeyPositions([Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9Region;I)S

    move-result v3

    if-eqz v3, :cond_2

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9KDB_GetKeyPositions - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v3

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v4, p1, v1

    aget-object v5, v0, v1

    iget-short v5, v5, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9Region;->wLeft:S

    iput v5, v4, Landroid/graphics/Rect;->left:I

    aget-object v4, p1, v1

    aget-object v5, v0, v1

    iget-short v5, v5, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9Region;->wTop:S

    add-int/lit16 v5, v5, -0xbb8

    iput v5, v4, Landroid/graphics/Rect;->top:I

    aget-object v4, p1, v1

    aget-object v5, v0, v1

    iget-short v5, v5, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9Region;->wRight:S

    iput v5, v4, Landroid/graphics/Rect;->right:I

    aget-object v4, p1, v1

    aget-object v5, v0, v1

    iget-short v5, v5, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9Region;->wBottom:S

    add-int/lit16 v5, v5, -0xbb8

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getKorAddedWordList(I)Ljava/lang/StringBuilder;
    .locals 8

    const/4 v7, 0x0

    const/16 v4, 0x40

    new-array v2, v4, [S

    const/4 v4, 0x1

    new-array v1, v4, [S

    int-to-short v4, p1

    invoke-static {v2, v1, v4}, Lcom/ime/framework/engine/xt9/Xt9core;->getKorAddedWordList([S[SS)S

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-short v4, v1, v7

    if-nez v4, :cond_1

    const/4 v3, 0x0

    :cond_0
    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "phrase_len[0] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-short v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getKorAddedWordList : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_1
    const/4 v0, 0x0

    :goto_0
    aget-short v4, v1, v7

    if-ge v0, v4, :cond_0

    array-length v4, v2

    if-ge v0, v4, :cond_0

    aget-short v4, v2, v0

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getLanguageIDForEngine(I)I
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sparse-switch p1, :sswitch_data_0

    const/16 v0, 0x9

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x39

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x4b

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x57

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x63

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x6a

    goto :goto_0

    :sswitch_6
    const/16 v0, 0x6d

    goto :goto_0

    :sswitch_7
    const/16 v0, 0x74

    goto :goto_0

    :sswitch_8
    const/16 v0, 0x7c

    goto :goto_0

    :sswitch_9
    const/16 v0, 0x85

    goto :goto_0

    :sswitch_a
    const/16 v0, 0x84

    goto :goto_0

    :sswitch_b
    const/16 v0, 0x5a

    goto :goto_0

    :sswitch_c
    const/16 v0, 0x47

    goto :goto_0

    :sswitch_d
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_e
    const/16 v0, 0xe2

    goto :goto_0

    :sswitch_f
    const/16 v0, 0xe1

    goto :goto_0

    :sswitch_10
    const/16 v0, 0xe0

    goto :goto_0

    :sswitch_11
    const/16 v0, 0x59

    goto :goto_0

    :sswitch_12
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_13
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_14
    const-string v3, "nl"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "BE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    const/16 v0, 0x13

    goto :goto_0

    :sswitch_15
    const/16 v0, 0x9

    goto :goto_0

    :sswitch_16
    const/16 v0, 0x9

    goto :goto_0

    :sswitch_17
    const/16 v0, 0x25

    goto :goto_0

    :sswitch_18
    const/16 v0, 0xb

    goto :goto_0

    :sswitch_19
    const/16 v0, 0xc

    goto :goto_0

    :sswitch_1a
    const/16 v0, 0x60

    goto :goto_0

    :sswitch_1b
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_1c
    const/16 v0, 0x8

    goto :goto_0

    :sswitch_1d
    const/16 v0, 0xd

    goto :goto_0

    :sswitch_1e
    const/16 v0, 0xe

    goto :goto_0

    :sswitch_1f
    const/16 v0, 0xf

    goto :goto_0

    :sswitch_20
    const/16 v0, 0x21

    goto :goto_0

    :sswitch_21
    const/16 v0, 0x10

    goto :goto_0

    :sswitch_22
    const/16 v0, 0x11

    goto :goto_0

    :sswitch_23
    const/16 v0, 0x61

    goto :goto_0

    :sswitch_24
    const/16 v0, 0x12

    goto :goto_0

    :sswitch_25
    const/16 v0, 0x26

    goto :goto_0

    :sswitch_26
    const/16 v0, 0x27

    goto/16 :goto_0

    :sswitch_27
    const/16 v0, 0x3e

    goto/16 :goto_0

    :sswitch_28
    const/16 v0, 0x14

    goto/16 :goto_0

    :sswitch_29
    const/16 v0, 0x29

    goto/16 :goto_0

    :sswitch_2a
    const/16 v0, 0x15

    goto/16 :goto_0

    :sswitch_2b
    const/16 v0, 0x16

    goto/16 :goto_0

    :sswitch_2c
    const/16 v0, 0x18

    goto/16 :goto_0

    :sswitch_2d
    const/16 v0, 0x19

    goto/16 :goto_0

    :sswitch_2e
    const/16 v0, 0x80

    goto/16 :goto_0

    :sswitch_2f
    const/16 v0, 0x1b

    goto/16 :goto_0

    :sswitch_30
    const/16 v0, 0x24

    goto/16 :goto_0

    :sswitch_31
    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_32
    const/16 v0, 0x1d

    goto/16 :goto_0

    :sswitch_33
    const/16 v0, 0x1e

    goto/16 :goto_0

    :sswitch_34
    const/16 v0, 0x1f

    goto/16 :goto_0

    :sswitch_35
    const/16 v0, 0x22

    goto/16 :goto_0

    :sswitch_36
    const/16 v0, 0x20

    goto/16 :goto_0

    :sswitch_37
    const/16 v0, 0x2a

    goto/16 :goto_0

    :sswitch_38
    const/4 v0, 0x3

    goto/16 :goto_0

    :sswitch_39
    const/16 v0, 0x55

    goto/16 :goto_0

    :sswitch_3a
    const/16 v0, 0x2d

    goto/16 :goto_0

    :sswitch_3b
    const/16 v0, 0x2f

    goto/16 :goto_0

    :sswitch_3c
    const/16 v0, 0x54

    goto/16 :goto_0

    :sswitch_3d
    const/16 v0, 0x1c

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x61720000 -> :sswitch_0
        0x617a0000 -> :sswitch_c
        0x62670000 -> :sswitch_d
        0x626e0000 -> :sswitch_2
        0x63610000 -> :sswitch_38
        0x63730000 -> :sswitch_12
        0x64610000 -> :sswitch_13
        0x64650000 -> :sswitch_1b
        0x656c0000 -> :sswitch_1c
        0x656e4742 -> :sswitch_15
        0x656e5553 -> :sswitch_16
        0x65730000 -> :sswitch_31
        0x65734553 -> :sswitch_31
        0x65735553 -> :sswitch_31
        0x65740000 -> :sswitch_17
        0x65750000 -> :sswitch_3a
        0x66610000 -> :sswitch_29
        0x66690000 -> :sswitch_18
        0x66720000 -> :sswitch_19
        0x66724341 -> :sswitch_19
        0x66724652 -> :sswitch_19
        0x67610000 -> :sswitch_3c
        0x676c0000 -> :sswitch_39
        0x67750000 -> :sswitch_3
        0x68690000 -> :sswitch_1
        0x68720000 -> :sswitch_11
        0x68750000 -> :sswitch_1e
        0x68790000 -> :sswitch_b
        0x69640000 -> :sswitch_20
        0x69730000 -> :sswitch_1f
        0x69740000 -> :sswitch_21
        0x69770000 -> :sswitch_1d
        0x6a610000 -> :sswitch_22
        0x6b610000 -> :sswitch_1a
        0x6b6b0000 -> :sswitch_23
        0x6b6e0000 -> :sswitch_4
        0x6b6f0000 -> :sswitch_24
        0x6c740000 -> :sswitch_26
        0x6c760000 -> :sswitch_25
        0x6d6b0000 -> :sswitch_3b
        0x6d6c0000 -> :sswitch_5
        0x6d720000 -> :sswitch_6
        0x6d730000 -> :sswitch_27
        0x6e620000 -> :sswitch_28
        0x6e6c0000 -> :sswitch_14
        0x70610000 -> :sswitch_7
        0x706c0000 -> :sswitch_2a
        0x70740000 -> :sswitch_2b
        0x70744252 -> :sswitch_2b
        0x70745054 -> :sswitch_2b
        0x726f0000 -> :sswitch_2c
        0x72750000 -> :sswitch_2d
        0x73690000 -> :sswitch_8
        0x736b0000 -> :sswitch_2f
        0x736c0000 -> :sswitch_30
        0x73710000 -> :sswitch_3d
        0x73720000 -> :sswitch_2e
        0x73760000 -> :sswitch_32
        0x74610000 -> :sswitch_a
        0x74650000 -> :sswitch_9
        0x74680000 -> :sswitch_33
        0x74720000 -> :sswitch_34
        0x756b0000 -> :sswitch_35
        0x75720000 -> :sswitch_36
        0x76690000 -> :sswitch_37
        0x7a68434e -> :sswitch_f
        0x7a68484b -> :sswitch_e
        0x7a685457 -> :sswitch_10
    .end sparse-switch
.end method

.method public getMultiTapSequence(I)Ljava/lang/StringBuilder;
    .locals 13

    const/4 v8, 0x1

    const/16 v9, 0x20

    new-array v3, v9, [S

    const/4 v9, 0x1

    new-array v6, v9, [S

    const/4 v9, 0x1

    new-array v0, v9, [B

    const/4 v9, 0x1

    new-array v5, v9, [S

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->lookupChar(I)I

    move-result v7

    const/16 v9, 0x80

    if-ne v7, v9, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    iget-object v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setInputMode(Z)V

    :cond_2
    int-to-short v9, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12, v5}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDB_ProcessKey(SJB[S)S

    move-result v8

    if-eqz v8, :cond_3

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ET9KDB_ProcessKey : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/16 v9, 0x20

    invoke-static {v3, v9, v6, v0}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDB_GetMultiTapSequence([SS[S[B)S

    move-result v8

    if-eqz v8, :cond_4

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ET9KDB_GetMultiTapSequence : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-short v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v10, 0x12

    if-ne v9, v10, :cond_9

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KClearOneSymb()S

    move-result v8

    :goto_1
    if-eqz v8, :cond_5

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ET9ClearOneSymb : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz v2, :cond_6

    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setInputMode(Z)V

    :cond_6
    const/4 v1, 0x0

    :goto_2
    const/4 v9, 0x0

    aget-short v9, v6, v9

    if-ge v1, v9, :cond_0

    array-length v9, v3

    if-ge v1, v9, :cond_0

    aget-short v9, v3, v1

    const/16 v10, 0x30

    if-lt v9, v10, :cond_7

    aget-short v9, v3, v1

    const/16 v10, 0x39

    if-le v9, v10, :cond_8

    :cond_7
    aget-short v9, v3, v1

    int-to-char v9, v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9ClearOneSymb()S

    move-result v8

    goto :goto_1
.end method

.method public getMyWordsList(Ljava/util/ArrayList;Z)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;Z)I"
        }
    .end annotation

    const/16 v7, 0x40

    const/4 v3, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    new-array v0, v6, [S

    new-array v2, v6, [S

    if-eqz p2, :cond_3

    invoke-static {v0}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDLMGetWordCount([S)S

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    sget-object v3, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMWordBuf:[C

    invoke-static {v3, v7, v2, v6}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDLMGetWord([CS[SB)S

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMWordBuf:[C

    aget-short v4, v2, v5

    invoke-virtual {p0, v3, v4}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertChartArrayToCharSequence([CI)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMWordBuf:[C

    aget-short v4, v2, v5

    invoke-virtual {p0, v3, v4}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertChartArrayToCharSequence([CI)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move v1, v3

    :cond_2
    :goto_1
    return v1

    :cond_3
    invoke-static {v0}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWDLMGetWordCount([S)S

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    :goto_2
    sget-object v3, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMWordBuf:[C

    invoke-static {v3, v7, v2, v6}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWDLMGetWord([CS[SB)S

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMWordBuf:[C

    aget-short v4, v2, v5

    invoke-virtual {p0, v3, v4}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertChartArrayToCharSequence([CI)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMWordBuf:[C

    aget-short v4, v2, v5

    invoke-virtual {p0, v3, v4}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertChartArrayToCharSequence([CI)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move v1, v3

    goto :goto_1
.end method

.method public getPhoneticSpellGroup(Ljava/util/ArrayList;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPGetPrefixCount()B

    move-result v3

    new-instance v0, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    invoke-direct {v0}, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_3

    int-to-short v6, v1

    invoke-static {v6, v0}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPGetPrefix(SLcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;)S

    move-result v5

    if-nez v5, :cond_2

    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v6, 0xe0

    invoke-direct {v4, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    :goto_1
    iget-byte v6, v0, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    if-ge v2, v6, :cond_1

    iget-object v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isShuangPinMode()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v0, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v6, v6, v2

    invoke-direct {p0, v6}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->isDoublePinyinChar(I)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v0, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v6, v6, v2

    invoke-direct {p0, v6}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getShuangpinSpells(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    iget-object v6, v0, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v6, v6, v2

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_1
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-short v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v7, 0xe1

    if-ne v6, v7, :cond_4

    iget-object v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getIsChnEngMixedInput()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsTraceInput:Z

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isShuangPinMode()Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "\u82f1\u6587"

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-boolean v6, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v6, :cond_5

    const-string v6, "SamsungIME_UnifiedIME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Xt994Wrapper getPhoneticSpellGroup spellGroup : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v6, 0x0

    return v6
.end method

.method public getPhoneticSpellings(S)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    if-nez v4, :cond_1

    const/4 v1, 0x0

    :cond_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x3

    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    invoke-virtual {v4}, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->init()V

    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    invoke-static {p1, v0, v6, v4}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPGetCharSpell(SBBLcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;)S

    move-result v3

    if-nez v3, :cond_0

    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v4, v4, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v4, v4, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    iget-object v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v5, v5, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    invoke-static {v4, v6, v5}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v0, 0x1

    int-to-byte v0, v4

    goto :goto_0
.end method

.method public getPredictWord(Ljava/lang/CharSequence;Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->updateSelectList()I

    invoke-virtual {p0, p2}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getSuggestion(Ljava/util/ArrayList;)I

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPredictWordForHwr(Ljava/lang/CharSequence;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/16 v7, 0xb

    new-array v3, v7, [S

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/16 v7, 0xa

    if-le v2, v7, :cond_0

    const/16 v2, 0xa

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    int-to-short v7, v7

    aput-short v7, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v3, v2, v9}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPSetContext([SIZ)S

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9ClearAllSymbs()S

    move-result v6

    if-nez v6, :cond_2

    new-instance v0, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;

    invoke-direct {v0}, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;-><init>()V

    new-array v4, v9, [B

    if-nez v6, :cond_2

    invoke-virtual {v0}, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->init()V

    invoke-static {v10, v0, v11, v4}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPGetPhrase(SLcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;[B)S

    move-result v6

    const/16 v7, 0x22

    if-ne v7, v6, :cond_2

    new-array v5, v9, [S

    invoke-static {v5}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPBuildSelectionList([S)S

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v0}, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->init()V

    invoke-static {v10, v0, v11, v4}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPGetPhrase(SLcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;[B)S

    move-result v6

    new-instance v7, Ljava/lang/String;

    iget-object v8, v0, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->pSymbs:[C

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p2, v10, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->init()V

    invoke-static {v9, v0, v11, v4}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPGetPhrase(SLcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;[B)S

    move-result v6

    new-instance v7, Ljava/lang/String;

    iget-object v8, v0, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->pSymbs:[C

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p2, v9, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public getSelectedXt9PhraseLength()I
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v0, v0, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pLen:B

    return v0
.end method

.method public getSimplifiedFromTraditional(C)C
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [C

    aput-char p1, v0, v2

    invoke-static {v0, v3}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPTraditionalToSimplified([CS)S

    move-result v1

    if-nez v1, :cond_0

    aget-char p1, v0, v2

    :cond_0
    return p1
.end method

.method public getSuggestion(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getSuggestion(Ljava/util/ArrayList;Z)I

    move-result v0

    return v0
.end method

.method public getSuggestion(Ljava/util/ArrayList;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I)I"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    if-lez p2, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v0, v2

    :goto_0
    add-int v3, v2, p2

    if-ge v0, v3, :cond_2

    invoke-direct {p0, v0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getInputWords(I)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_2

    sget-object v3, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {v1, v3}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mWordInformation:Ljava/lang/Byte;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mWordInfoData:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mWordInformation:Ljava/lang/Byte;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mWordInformation:Ljava/lang/Byte;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method public getSuggestion(Ljava/util/ArrayList;Z)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;Z)I"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v1

    if-nez v1, :cond_1

    iget-short v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v6, 0xe1

    if-ne v5, v6, :cond_0

    iget-short v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v6, 0xe0

    if-eq v5, v6, :cond_0

    iget-short v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v6, 0xe2

    if-ne v5, v6, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    if-nez p1, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    iget-object v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getCandidateviewStatus()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    invoke-direct {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getPreviewSuggestion(Ljava/util/ArrayList;)I

    move-result v4

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSuggestionCount:I

    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getMaxWordsCount()S

    move-result v5

    if-le v3, v5, :cond_4

    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getMaxWordsCount()S

    move-result v3

    :cond_4
    invoke-virtual {p0, v4}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setXt9AutoReplacementCondition(Z)V

    iput-object v7, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mBestCandidate:Ljava/lang/CharSequence;

    iput-boolean v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mFlagForAutoReplacement:Z

    if-lez v3, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->clearWordSourceInformation()V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_6

    invoke-direct {p0, v0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getInputWords(I)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_6

    sget-object v5, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {v2, v5}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mWordInformation:Ljava/lang/Byte;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mWordInfoData:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mWordInformation:Ljava/lang/Byte;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v7, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mWordInformation:Ljava/lang/Byte;

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iput-boolean v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsReConstruction:Z

    iput-boolean v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsReselection:Z

    iput-boolean v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsTraceInput:Z

    goto :goto_0
.end method

.method public getTraditionalFromSimplified(C)C
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [C

    aput-char p1, v0, v2

    invoke-static {v0, v3}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPSimplifiedToTraditional([CS)S

    move-result v1

    if-nez v1, :cond_0

    aget-char p1, v0, v2

    :cond_0
    return p1
.end method

.method public getWordInfoSequence()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mWordInfoData:Ljava/util/ArrayList;

    return-object v0
.end method

.method getWrappingWordFromContextBuffer(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;[I)Ljava/lang/StringBuilder;
    .locals 6

    const/4 v5, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->checkXT9WordWrappingRule(C)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_0
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    aput v4, p3, v5

    :cond_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->checkXT9WordWrappingRule(C)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_2
    invoke-virtual {p2, v5, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsReselectionWord:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    iput-object v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsReselectionWord:Ljava/lang/StringBuilder;

    return-object v3

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getXt9AutoReplacementCondition()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mXt9AutoReplacementCondition:Z

    return v0
.end method

.method public getXt9LanguageId(I)I
    .locals 6

    const/4 v1, 0x0

    const/16 v4, 0x100

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    const/16 v1, 0x9

    :goto_0
    add-int v2, v4, v1

    const/16 v5, 0x1e0

    if-eq v2, v5, :cond_0

    const/16 v5, 0x1e1

    if-eq v2, v5, :cond_0

    const/16 v5, 0x1e2

    if-ne v2, v5, :cond_1

    :cond_0
    add-int/lit16 v2, v2, -0x100

    :cond_1
    return v2

    :sswitch_0
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1
    const/16 v1, 0x39

    goto :goto_0

    :sswitch_2
    const/16 v1, 0x4b

    goto :goto_0

    :sswitch_3
    const/16 v1, 0x57

    goto :goto_0

    :sswitch_4
    const/16 v1, 0x63

    goto :goto_0

    :sswitch_5
    const/16 v1, 0x6a

    goto :goto_0

    :sswitch_6
    const/16 v1, 0x6d

    goto :goto_0

    :sswitch_7
    const/16 v1, 0x74

    goto :goto_0

    :sswitch_8
    const/16 v1, 0x7c

    goto :goto_0

    :sswitch_9
    const/16 v1, 0x85

    goto :goto_0

    :sswitch_a
    const/16 v1, 0x84

    goto :goto_0

    :sswitch_b
    const/16 v1, 0x5a

    goto :goto_0

    :sswitch_c
    const/16 v1, 0x47

    goto :goto_0

    :sswitch_d
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_e
    const/16 v1, 0xe2

    goto :goto_0

    :sswitch_f
    const/16 v1, 0xe1

    goto :goto_0

    :sswitch_10
    const/16 v1, 0xe0

    goto :goto_0

    :sswitch_11
    const/16 v1, 0x59

    goto :goto_0

    :sswitch_12
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_13
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_14
    const-string v5, "nl"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "BE"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v1, 0xc

    goto :goto_0

    :cond_2
    const/16 v1, 0x13

    goto :goto_0

    :sswitch_15
    const/16 v1, 0x9

    const/16 v4, 0x800

    goto :goto_0

    :sswitch_16
    const/16 v1, 0x9

    goto :goto_0

    :sswitch_17
    const/16 v1, 0x25

    goto :goto_0

    :sswitch_18
    const/16 v1, 0xb

    goto :goto_0

    :sswitch_19
    const/16 v1, 0xc

    goto :goto_0

    :sswitch_1a
    const/16 v1, 0xc

    const/16 v4, 0xc00

    goto :goto_0

    :sswitch_1b
    const/16 v1, 0x60

    goto :goto_0

    :sswitch_1c
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_1d
    const/16 v1, 0x8

    goto :goto_0

    :sswitch_1e
    const/16 v1, 0xd

    goto :goto_0

    :sswitch_1f
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_20
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_21
    const/16 v1, 0x21

    goto/16 :goto_0

    :sswitch_22
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_23
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_24
    const/16 v1, 0x61

    goto/16 :goto_0

    :sswitch_25
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_26
    const/16 v1, 0x26

    goto/16 :goto_0

    :sswitch_27
    const/16 v1, 0x27

    goto/16 :goto_0

    :sswitch_28
    const/16 v1, 0x3e

    goto/16 :goto_0

    :sswitch_29
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_2a
    const/16 v1, 0x29

    goto/16 :goto_0

    :sswitch_2b
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_2c
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_2d
    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_2e
    const/16 v1, 0x19

    goto/16 :goto_0

    :sswitch_2f
    const/16 v1, 0x80

    goto/16 :goto_0

    :sswitch_30
    const/16 v1, 0x1b

    goto/16 :goto_0

    :sswitch_31
    const/16 v1, 0x24

    goto/16 :goto_0

    :sswitch_32
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_33
    const/16 v1, 0x1d

    goto/16 :goto_0

    :sswitch_34
    const/16 v1, 0x1e

    goto/16 :goto_0

    :sswitch_35
    const/16 v1, 0x1f

    goto/16 :goto_0

    :sswitch_36
    const/16 v1, 0x22

    goto/16 :goto_0

    :sswitch_37
    const/16 v1, 0x20

    goto/16 :goto_0

    :sswitch_38
    const/16 v1, 0x2a

    goto/16 :goto_0

    :sswitch_39
    const/4 v1, 0x3

    goto/16 :goto_0

    :sswitch_3a
    const/16 v1, 0x55

    goto/16 :goto_0

    :sswitch_3b
    const/16 v1, 0x2d

    goto/16 :goto_0

    :sswitch_3c
    const/16 v1, 0x2f

    goto/16 :goto_0

    :sswitch_3d
    const/16 v1, 0x54

    goto/16 :goto_0

    :sswitch_3e
    const/16 v1, 0x1c

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x61720000 -> :sswitch_0
        0x617a0000 -> :sswitch_c
        0x62670000 -> :sswitch_d
        0x626e0000 -> :sswitch_2
        0x63610000 -> :sswitch_39
        0x63730000 -> :sswitch_12
        0x64610000 -> :sswitch_13
        0x64650000 -> :sswitch_1c
        0x656c0000 -> :sswitch_1d
        0x656e4742 -> :sswitch_15
        0x656e5553 -> :sswitch_16
        0x65730000 -> :sswitch_32
        0x65734553 -> :sswitch_32
        0x65735553 -> :sswitch_32
        0x65740000 -> :sswitch_17
        0x65750000 -> :sswitch_3b
        0x66610000 -> :sswitch_2a
        0x66690000 -> :sswitch_18
        0x66720000 -> :sswitch_19
        0x66724341 -> :sswitch_1a
        0x66724652 -> :sswitch_19
        0x67610000 -> :sswitch_3d
        0x676c0000 -> :sswitch_3a
        0x67750000 -> :sswitch_3
        0x68690000 -> :sswitch_1
        0x68720000 -> :sswitch_11
        0x68750000 -> :sswitch_1f
        0x68790000 -> :sswitch_b
        0x69640000 -> :sswitch_21
        0x69730000 -> :sswitch_20
        0x69740000 -> :sswitch_22
        0x69770000 -> :sswitch_1e
        0x6a610000 -> :sswitch_23
        0x6b610000 -> :sswitch_1b
        0x6b6b0000 -> :sswitch_24
        0x6b6e0000 -> :sswitch_4
        0x6b6f0000 -> :sswitch_25
        0x6c740000 -> :sswitch_27
        0x6c760000 -> :sswitch_26
        0x6d6b0000 -> :sswitch_3c
        0x6d6c0000 -> :sswitch_5
        0x6d720000 -> :sswitch_6
        0x6d730000 -> :sswitch_28
        0x6e620000 -> :sswitch_29
        0x6e6c0000 -> :sswitch_14
        0x70610000 -> :sswitch_7
        0x706c0000 -> :sswitch_2b
        0x70740000 -> :sswitch_2c
        0x70744252 -> :sswitch_2c
        0x70745054 -> :sswitch_2c
        0x726f0000 -> :sswitch_2d
        0x72750000 -> :sswitch_2e
        0x73690000 -> :sswitch_8
        0x736b0000 -> :sswitch_30
        0x736c0000 -> :sswitch_31
        0x73710000 -> :sswitch_3e
        0x73720000 -> :sswitch_2f
        0x73760000 -> :sswitch_33
        0x74610000 -> :sswitch_a
        0x74650000 -> :sswitch_9
        0x74680000 -> :sswitch_34
        0x74720000 -> :sswitch_35
        0x756b0000 -> :sswitch_36
        0x75720000 -> :sswitch_37
        0x76690000 -> :sswitch_38
        0x7a68434e -> :sswitch_f
        0x7a68484b -> :sswitch_e
        0x7a685457 -> :sswitch_10
    .end sparse-switch
.end method

.method public getXt9Version()I
    .locals 9

    iget v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mXt9Version:I

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mXt9Version:I

    :goto_0
    return v6

    :cond_0
    const/16 v3, 0x64

    new-array v1, v3, [S

    new-array v2, v3, [S

    const-string v5, ""

    invoke-virtual {p0, v1, v3, v2}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getXt9Version([SS[S)S

    move-result v4

    if-eqz v4, :cond_1

    const-string v6, "SamsungIME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getXt9Version : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/16 v6, 0x14

    if-ge v0, v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-short v7, v1, v0

    int-to-char v7, v7

    invoke-static {v7}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string v6, "XT9 V09.13"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x5

    goto :goto_0

    :cond_3
    const-string v6, "XT9 V09.10"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x4

    goto :goto_0

    :cond_4
    const-string v6, "XT9 V09.08"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x3

    goto :goto_0

    :cond_5
    const-string v6, "XT9 V09.06"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x2

    goto :goto_0

    :cond_6
    const-string v6, "XT9 V09"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, 0x1

    goto :goto_0

    :cond_7
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public getXt9Version([SS[S)S
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9GetCodeVersion([SS[S)S

    move-result v0

    return v0
.end method

.method public hasInputSequence()Z
    .locals 2

    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSimpleWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;

    invoke-static {v1}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9GetExactWord(Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;)S

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSimpleWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;

    iget-short v1, v1, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;->wLen:S

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public importChineseUDBFromFile(Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0x3000

    const/4 v0, 0x1

    const-string v1, "/data/data/com.sec.android.inputmethod/app_SyncFiles/xT9UdbData.dat"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xe1

    invoke-static {v1}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPLdbInit(S)S

    move-result v0

    const-string v1, "SamsungIME_SYNC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "importChineseUDBFromFile() ET9CPLdbInit(Xt9Datatype.ET9PLIDChineseSimplified): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mUDBBuffer:[B

    invoke-static {v1, v4}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPUdbActivate([BS)S

    move-result v0

    const-string v1, "SamsungIME_SYNC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "importChineseUDBFromFile() ET9CPUdbActivate(Xt9Datatype.ET9PLIDChineseSimplified): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/ime/framework/engine/xt9/Xt9core;->importChnUDB(Ljava/lang/String;)S

    return-void

    :cond_1
    const-string v1, "/data/data/com.sec.android.inputmethod/app_SyncFiles/xT9ZTUdbData.dat"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xe0

    invoke-static {v1}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPLdbInit(S)S

    move-result v0

    sget-object v1, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mZTUDBBuffer:[B

    invoke-static {v1, v4}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPUdbActivate([BS)S

    move-result v0

    goto :goto_0

    :cond_2
    const-string v1, "/data/data/com.sec.android.inputmethod/app_SyncFiles/xT9ZHUdbData.dat"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xe2

    invoke-static {v1}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPLdbInit(S)S

    move-result v0

    sget-object v1, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mZHUDBBuffer:[B

    invoke-static {v1, v4}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPUdbActivate([BS)S

    move-result v0

    goto :goto_0
.end method

.method public importEnglishDlmFromFile(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWLdbInit()S

    move-result v0

    const-string v1, "SamsungIME_SYNC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "importEnglishDlmFromFile() ET9AWLdbInit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SSZ)S

    move-result v0

    const-string v1, "SamsungIME_SYNC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "importEnglishDlmFromFile() ET9AWLdbSetLanguage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMBuffer:[B

    sget v2, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->DLM_SIZE:I

    invoke-static {v1, v2}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWDLMInit([BI)S

    move-result v0

    const-string v1, "SamsungIME_SYNC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "importEnglishDlmFromFile() ET9AWDLMInit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/ime/framework/engine/xt9/Xt9core;->importAlphaDLMEvent(Ljava/lang/String;)S

    return-void
.end method

.method public importKoreanDlmFromFile(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    const/16 v1, 0x712

    invoke-static {v1, v4}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KLdbInit(SS)S

    move-result v0

    const-string v1, "SamsungIME_SYNC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "importKoreanDlmFromFile() ET9KLdbInit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x12

    const/4 v2, 0x1

    invoke-static {v1, v4, v2}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SSZ)S

    move-result v0

    const-string v1, "SamsungIME_SYNC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "importKoreanDlmFromFile() ET9AWLdbSetLanguage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMBuffer:[B

    sget v2, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->DLM_SIZE:I

    invoke-static {v1, v2}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDLMInit([BI)S

    move-result v0

    const-string v1, "SamsungIME_SYNC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "importKoreanDlmFromFile() ET9KDLMInit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/ime/framework/engine/xt9/Xt9core;->importKorDLMEvent(Ljava/lang/String;)S

    return-void
.end method

.method public init()I
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v1, -0x1

    const/4 v6, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mRepository:Lcom/ime/framework/repository/Repository;

    if-nez v3, :cond_0

    invoke-static {}, Lcom/ime/framework/repository/RepositoryImpl;->getInstance()Lcom/ime/framework/repository/Repository;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mRepository:Lcom/ime/framework/repository/Repository;

    :cond_0
    invoke-virtual {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getXt9Version()I

    move-result v3

    iput v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mXt9Version:I

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Xt994 init mXt9Version : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mXt9Version:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mXt9Version:I

    if-ne v3, v1, :cond_1

    const-string v3, "SamsungIME"

    const-string v4, "getXt9Version error"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v4, "XT9_VERSION"

    iget v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mXt9Version:I

    invoke-interface {v3, v4, v5}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    iget v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mXt9Version:I

    if-ge v3, v7, :cond_2

    :goto_0
    return v1

    :cond_2
    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1, p0}, Lcom/ime/framework/common/InputManager;->setXt9DBController(Lcom/ime/framework/engine/xt9/Xt9DBController;)V

    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v3, "INPUT_LANGUAGE"

    const v4, 0x656e4742

    invoke-interface {v1, v3, v4}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    iget v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    invoke-virtual {p0, v1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getLanguageIDForEngine(I)I

    move-result v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    iput-boolean v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsDisableAutoCorrection:Z

    iget-boolean v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInitialized:Z

    if-nez v1, :cond_8

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9MakeLdbList()S

    iget v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mXt9Version:I

    if-lt v1, v8, :cond_7

    sget-object v1, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->SMT_SIZE_ARR:[I

    invoke-static {v1}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9SmartTouchGetDataSize([I)S

    sget-object v1, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSMTBuffer:[B

    if-nez v1, :cond_3

    sget-object v1, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->SMT_SIZE_ARR:[I

    aget v1, v1, v2

    new-array v1, v1, [B

    sput-object v1, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSMTBuffer:[B

    :cond_3
    :goto_1
    sget-object v1, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mASDBBuffer:[B

    if-nez v1, :cond_4

    const/16 v1, 0x2800

    new-array v1, v1, [B

    sput-object v1, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mASDBBuffer:[B

    :cond_4
    invoke-direct {p0, v2}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->readDBdataFromFile(B)Z

    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->readDBdataFromFile(B)Z

    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->readDBdataFromFile(B)Z

    invoke-direct {p0, v7}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->readDBdataFromFile(B)Z

    invoke-direct {p0, v8}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->readDBdataFromFile(B)Z

    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->readDBdataFromFile(B)Z

    sget v1, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->DLM_SIZE:I

    if-nez v1, :cond_5

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWDLMGetDataSize()I

    move-result v1

    sput v1, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->DLM_SIZE:I

    const/4 v1, 0x0

    sput-object v1, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMBuffer:[B

    sget v1, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->DLM_SIZE:I

    new-array v1, v1, [B

    sput-object v1, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMBuffer:[B

    :cond_5
    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initLinguistic()V

    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initKDB()V

    iput-boolean v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInitialized:Z

    :goto_2
    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9SetCapsGesture()S

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9SetShiftGesture()S

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iput-boolean v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsVZW:Z

    :cond_6
    move v1, v2

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9SmartTouchGetDataSize()S

    move-result v1

    sput v1, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->SMT_SIZE:I

    sget-object v1, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSMTBuffer:[B

    if-nez v1, :cond_3

    sget v1, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->SMT_SIZE:I

    new-array v1, v1, [B

    sput-object v1, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSMTBuffer:[B

    goto :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initSubLinguistic()V

    goto :goto_2
.end method

.method public initDLM()S
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, -0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v4, "XT9_DLM_ENABLE"

    invoke-interface {v3, v4, v9}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v3, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMBuffer:[B

    sget v4, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->DLM_SIZE:I

    invoke-static {v3, v4}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWDLMInit([BI)S

    move-result v1

    if-ne v1, v6, :cond_0

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWDLMGetDataSize()I

    move-result v3

    sput v3, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->DLM_SIZE:I

    sput-object v8, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMBuffer:[B

    sget v3, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->DLM_SIZE:I

    new-array v3, v3, [B

    sput-object v3, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMBuffer:[B

    invoke-virtual {p0, v7}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->writeDBdataToFile(B)V

    const/4 v1, 0x0

    :cond_0
    if-eqz v1, :cond_1

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ET9AWDLMInit : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v3, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMBuffer:[B

    sget v4, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->DLM_SIZE:I

    invoke-static {v3, v4}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDLMInit([BI)S

    move-result v1

    if-ne v1, v6, :cond_2

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDLMGetDataSize()I

    move-result v3

    sput v3, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->DLM_SIZE:I

    sput-object v8, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMBuffer:[B

    sget v3, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->DLM_SIZE:I

    new-array v3, v3, [B

    sput-object v3, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMBuffer:[B

    invoke-virtual {p0, v7}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->writeDBdataToFile(B)V

    const/4 v1, 0x0

    :cond_2
    if-eqz v1, :cond_3

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ET9KDLMInit : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mXt9Version:I

    const/4 v4, 0x3

    if-lt v3, v4, :cond_5

    sget-object v3, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMBuffer:[B

    sget v4, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->DLM_SIZE:I

    invoke-static {v3, v4}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9JDLMInit([BI)S

    move-result v1

    if-ne v1, v6, :cond_4

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDLMGetDataSize()I

    move-result v3

    sput v3, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->DLM_SIZE:I

    sput-object v8, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMBuffer:[B

    sget v3, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->DLM_SIZE:I

    new-array v3, v3, [B

    sput-object v3, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMBuffer:[B

    invoke-virtual {p0, v7}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->writeDBdataToFile(B)V

    const/4 v1, 0x0

    :cond_4
    if-eqz v1, :cond_5

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ET9JDLMInit : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isEnableAutoCorrection()Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setUDBDelayedReorder(Z)S

    move-result v1

    if-eqz v1, :cond_6

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setUDBDelayedReorder : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_0
    move v2, v1

    :goto_1
    return v2

    :cond_7
    move v2, v1

    goto :goto_1

    :cond_8
    invoke-direct {p0, v9}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setUDBDelayedReorder(Z)S

    move-result v1

    if-eqz v1, :cond_6

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setUDBDelayedReorder : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public initSmartTouch()S
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mXt9Version:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    sget-object v1, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSMTBuffer:[B

    sget-object v2, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->SMT_SIZE_ARR:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v1, v2}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9SmartTouchInit([BI)S

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9SmartTouchInit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0

    :cond_1
    sget-object v1, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSMTBuffer:[B

    sget v2, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->SMT_SIZE:I

    invoke-static {v1, v2}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9SmartTouchInit([BI)S

    move-result v0

    goto :goto_0
.end method

.method public inputCharSequence(Ljava/lang/CharSequence;)I
    .locals 31

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v16, "SETTINGS_DEFAULT_RECAPTURE"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v11, v0, v1}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v26

    const/16 v29, 0x0

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsReselection:Z

    if-eqz v26, :cond_a

    move-object/from16 v0, p0

    iget-short v11, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v16, 0x11

    move/from16 v0, v16

    if-ne v11, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v11

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v11, v0, :cond_a

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v11

    if-nez v11, :cond_a

    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertCharSequenceToCharArray(Ljava/lang/CharSequence;)[C

    move-result-object v4

    const/16 v23, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->clearContext()I

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x1

    new-array v6, v11, [B

    const/4 v11, 0x1

    new-array v7, v11, [B

    const/4 v11, 0x1

    new-array v0, v11, [B

    move-object/from16 v19, v0

    const/4 v11, 0x1

    new-array v8, v11, [B

    const/4 v11, 0x1

    new-array v9, v11, [B

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x1

    new-array v0, v11, [I

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v25

    if-eqz v25, :cond_5

    const/4 v11, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v11}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v11

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v11, "null"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_1
    const/16 v11, 0x40

    const/16 v16, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-interface {v0, v11, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v11

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v11, "null"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v11, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_2
    const/16 v11, 0x40

    const/16 v16, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-interface {v0, v11, v1}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v11, "null"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_3
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    if-eqz v28, :cond_4

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_4

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_4
    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertCharSequenceToCharArray(Ljava/lang/CharSequence;)[C

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    int-to-long v12, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v10, v2}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getWrappingWordFromContextBuffer(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;[I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    int-to-short v5, v11

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    const/16 v16, 0x0

    aget v16, v27, v16

    sub-int v11, v11, v16

    int-to-long v14, v11

    if-eqz v28, :cond_5

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_5

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    int-to-short v5, v11

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    int-to-long v14, v11

    :cond_5
    move-object/from16 v0, p0

    iget-short v11, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v16, 0x12

    move/from16 v0, v16

    if-ne v11, v0, :cond_8

    long-to-int v11, v14

    int-to-long v0, v5

    move-wide/from16 v16, v0

    add-long v16, v16, v14

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v11, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertCharSequenceToCharArray(Ljava/lang/CharSequence;)[C

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getXt9Version()I

    move-result v11

    const/16 v16, 0x4

    move/from16 v0, v16

    if-lt v11, v0, :cond_7

    invoke-static/range {v4 .. v9}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDB_ReselectWord([CS[B[B[B[B)S

    move-result v29

    :cond_6
    :goto_0
    if-eqz v29, :cond_9

    move/from16 v30, v29

    :goto_1
    return v30

    :cond_7
    invoke-static {v4, v5}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDB_ReselectWord([CS)S

    move-result v29

    goto :goto_0

    :cond_8
    move-object v11, v4

    move/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    invoke-static/range {v11 .. v21}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWSmartReselect([CJJS[B[B[B[B[B)S

    move-result v29

    const/4 v11, 0x0

    aget-byte v11, v9, v11

    if-eqz v11, :cond_6

    const/16 v23, 0x0

    goto :goto_0

    :cond_9
    const/4 v11, 0x0

    aget-byte v11, v6, v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSuggestionCount:I

    const/4 v11, 0x0

    aget-byte v11, v19, v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mActiveIndex:I

    if-eqz v23, :cond_a

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsRecapture:Z

    const/4 v11, 0x0

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v11, v1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->refreshContextBuffer(ZZ)I

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->updateSelectList()I

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsRecapture:Z

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->updateShiftState()V

    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v11, v0}, Lcom/ime/framework/common/InputManager;->setXt9Recapture(Z)V

    move/from16 v30, v29

    goto :goto_1
.end method

.method public inputKey(I)I
    .locals 13

    const/16 v12, 0xe2

    const/16 v11, 0xe1

    const/16 v10, 0xe0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v2

    const/4 v7, -0x5

    if-ne p1, v7, :cond_7

    iget-short v7, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    if-eq v7, v11, :cond_0

    iget-short v7, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    if-eq v7, v10, :cond_0

    iget-short v7, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    if-ne v7, v12, :cond_3

    :cond_0
    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPUnselectPhrase()S

    move-result v4

    const/16 v7, 0x18

    if-ne v4, v7, :cond_4

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9ClearOneSymb()S

    move-result v4

    sget-boolean v7, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v7, :cond_1

    if-eqz v4, :cond_1

    const-string v7, "SamsungIME"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ET9ClearOneSymb : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPClearContext()S

    move-result v4

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9InputSequenceCount()S

    move-result v7

    if-ge v7, v6, :cond_4

    iget-object v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    invoke-virtual {v6}, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->init()V

    :cond_2
    :goto_0
    return v5

    :cond_3
    iget-short v7, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v8, 0x12

    if-ne v7, v8, :cond_6

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KClearOneSymb()S

    move-result v4

    :goto_1
    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->invokeTimeOut()V

    const/4 v7, 0x6

    if-eq v4, v7, :cond_2

    sget-boolean v7, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v7, :cond_4

    if-eqz v4, :cond_4

    const-string v7, "SamsungIME"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ET9ClearOneSymb : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9InputSequenceCount()S

    move-result v7

    if-ge v7, v6, :cond_9

    iget-short v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    if-eq v6, v11, :cond_5

    iget-short v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    if-eq v6, v10, :cond_5

    iget-short v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    if-ne v6, v12, :cond_2

    :cond_5
    invoke-virtual {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->updateSelectList()I

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9ClearOneSymb()S

    move-result v4

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-static {}, Lcom/ime/framework/repository/InputStatus;->isInputNumberOnComposing()Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_8
    move v1, v6

    :goto_2
    iget-object v7, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/ime/framework/inputmode/InputModeManager;->isKorPasswordMode()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-direct {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->explicitSymbol(I)S

    :cond_9
    :goto_3
    iget-short v7, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    if-eq v7, v11, :cond_a

    iget-short v7, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    if-eq v7, v10, :cond_a

    iget-short v7, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    if-ne v7, v12, :cond_12

    :cond_a
    invoke-virtual {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->updateSelectList()I

    move-result v5

    goto :goto_0

    :cond_b
    move v1, v5

    goto :goto_2

    :cond_c
    iget-short v7, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    if-eq v7, v11, :cond_d

    iget-short v7, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    if-eq v7, v10, :cond_d

    iget-short v7, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    if-ne v7, v12, :cond_e

    :cond_d
    if-eqz v2, :cond_e

    invoke-direct {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->lookupChar(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->explicitSymbol(I)S

    goto :goto_3

    :cond_e
    iget-object v7, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v7

    if-eq v7, v6, :cond_f

    iget-object v7, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v7

    if-eqz v7, :cond_11

    :cond_f
    iget-object v7, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v7

    if-eq v7, v6, :cond_10

    if-eqz v1, :cond_11

    :cond_10
    invoke-direct {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->explicitSymbol(I)S

    goto :goto_3

    :cond_11
    invoke-direct {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->processKey(I)S

    move-result v4

    if-eqz v4, :cond_9

    invoke-direct {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->explicitSymbol(I)S

    goto :goto_3

    :cond_12
    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9InputSequenceCount()S

    move-result v0

    if-lez v0, :cond_2

    move v5, v6

    goto/16 :goto_0
.end method

.method public inputKey(ILandroid/graphics/PointF;)I
    .locals 13

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v6

    const/4 v9, -0x5

    if-ne p1, v9, :cond_6

    iget-short v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v10, 0xe1

    if-eq v9, v10, :cond_0

    iget-short v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v10, 0xe0

    if-eq v9, v10, :cond_0

    iget-short v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v10, 0xe2

    if-ne v9, v10, :cond_3

    :cond_0
    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPUnselectPhrase()S

    move-result v8

    const/16 v9, 0x18

    if-ne v8, v9, :cond_2

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9ClearOneSymb()S

    move-result v8

    sget-boolean v9, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v9, :cond_1

    if-eqz v8, :cond_1

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ET9ClearOneSymb : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPClearContext()S

    move-result v8

    :cond_2
    :goto_0
    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9InputSequenceCount()S

    move-result v9

    const/4 v10, 0x1

    if-ge v9, v10, :cond_8

    const/4 v9, 0x0

    :goto_1
    return v9

    :cond_3
    iget-short v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v10, 0x12

    if-ne v9, v10, :cond_4

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KClearOneSymb()S

    move-result v8

    :goto_2
    const/4 v9, 0x6

    if-ne v8, v9, :cond_5

    const/4 v9, 0x0

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9ClearOneSymb()S

    move-result v8

    goto :goto_2

    :cond_5
    sget-boolean v9, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v9, :cond_2

    if-eqz v8, :cond_2

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ET9ClearOneSymb : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v9

    if-nez v9, :cond_7

    invoke-static {}, Lcom/ime/framework/repository/InputStatus;->isInputNumberOnComposing()Z

    move-result v9

    if-eqz v9, :cond_a

    :cond_7
    const/4 v4, 0x1

    :goto_3
    iget-object v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/ime/framework/inputmode/InputModeManager;->isKorPasswordMode()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-direct {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->explicitSymbol(I)S

    :cond_8
    :goto_4
    iget-short v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v10, 0x12

    if-eq v9, v10, :cond_1d

    iget-short v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v10, 0xe1

    if-eq v9, v10, :cond_9

    iget-short v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v10, 0xe2

    if-eq v9, v10, :cond_9

    iget-short v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v10, 0xe0

    if-eq v9, v10, :cond_9

    iget-object v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_9

    iget-object v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v9

    if-eqz v9, :cond_1d

    :cond_9
    invoke-virtual {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->updateSelectList()I

    move-result v9

    goto :goto_1

    :cond_a
    const/4 v4, 0x0

    goto :goto_3

    :cond_b
    iget-short v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v10, 0xe1

    if-eq v9, v10, :cond_c

    iget-short v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v10, 0xe0

    if-eq v9, v10, :cond_c

    iget-short v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v10, 0xe2

    if-ne v9, v10, :cond_d

    :cond_c
    if-eqz v6, :cond_d

    invoke-direct {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->lookupChar(I)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->explicitSymbol(I)S

    move-result v8

    if-eqz v8, :cond_8

    invoke-direct {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->explicitSymbol(I)S

    goto :goto_4

    :cond_d
    iget-short v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v10, 0xe2

    if-ne v9, v10, :cond_e

    const/16 v9, 0x7a

    if-ne p1, v9, :cond_e

    const v9, 0xff1f

    invoke-direct {p0, v9}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->explicitSymbol(I)S

    goto :goto_4

    :cond_e
    iget-object v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_f

    iget-object v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v9

    if-eqz v9, :cond_11

    :cond_f
    iget-object v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_10

    if-eqz v4, :cond_11

    :cond_10
    invoke-direct {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->explicitSymbol(I)S

    goto/16 :goto_4

    :cond_11
    iget-object v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v9

    if-nez v9, :cond_1c

    iget-short v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v10, 0x11

    if-ne v9, v10, :cond_14

    iget-object v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_12

    iget-object v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v9

    if-eqz v9, :cond_14

    :cond_12
    int-to-char v9, p1

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->HiraganaToromaji(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v9, 0x0

    invoke-static {v9}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->getCursor(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_5
    array-length v9, v0

    if-ge v3, v9, :cond_13

    aget-byte v9, v0, v3

    invoke-direct {p0, v9}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->explicitSymbol(I)S

    aget-byte v9, v0, v3

    int-to-char v9, v9

    invoke-static {v9}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->append(I)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_13
    const/4 v9, 0x1

    new-array v5, v9, [Lcom/ime/framework/input/StrSegment;

    const/4 v9, 0x0

    new-instance v10, Lcom/ime/framework/input/StrSegment;

    int-to-char v11, p1

    invoke-static {v11}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v11

    array-length v12, v0

    add-int/2addr v12, v2

    add-int/lit8 v12, v12, -0x1

    invoke-direct {v10, v11, v2, v12}, Lcom/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v10, v5, v9

    const/4 v9, 0x1

    array-length v10, v0

    invoke-static {v9, v5, v10}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->replaceStrSegment(I[Lcom/ime/framework/input/StrSegment;I)V

    const/4 v9, 0x1

    invoke-static {v9}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    :goto_6
    if-eqz v8, :cond_8

    invoke-direct {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->explicitSymbol(I)S

    goto/16 :goto_4

    :cond_14
    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_15

    iget-object v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v9

    if-eqz v9, :cond_18

    :cond_15
    invoke-direct {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->isBPMFTone(I)Z

    move-result v9

    if-eqz v9, :cond_18

    iget v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mtoneLastidx:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_16

    const/4 v9, -0x5

    invoke-virtual {p0, v9}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->inputKey(I)I

    :cond_16
    iget v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mtoneLastidx:I

    const/4 v10, 0x4

    if-ge v9, v10, :cond_17

    iget v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mtoneLastidx:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mtoneLastidx:I

    :goto_7
    iget-object v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->BPMF_KEYCODES:[S

    iget v10, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mtoneLastidx:I

    aget-short p1, v9, v10

    invoke-direct {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->explicitSymbol(I)S

    goto :goto_6

    :cond_17
    const/4 v9, 0x0

    iput v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mtoneLastidx:I

    goto :goto_7

    :cond_18
    iget-object v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v9

    if-eqz v9, :cond_19

    invoke-direct {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->explicitSymbol(I)S

    goto :goto_6

    :cond_19
    if-eqz p2, :cond_1a

    const/16 v9, 0x27

    if-ne p1, v9, :cond_1b

    :cond_1a
    invoke-direct {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->processKey(I)S

    move-result v8

    goto :goto_6

    :cond_1b
    iget v9, p2, Landroid/graphics/PointF;->x:F

    iget v10, p2, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, p1, v9, v10}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->processTap(IFF)S

    move-result v8

    goto :goto_6

    :cond_1c
    invoke-direct {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->processKey(I)S

    move-result v8

    if-eqz v8, :cond_8

    invoke-direct {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->explicitSymbol(I)S

    goto/16 :goto_4

    :cond_1d
    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9InputSequenceCount()S

    move-result v1

    if-lez v1, :cond_1e

    const/4 v9, 0x1

    goto/16 :goto_1

    :cond_1e
    const/4 v9, 0x0

    goto/16 :goto_1
.end method

.method public isAutoAcceptBeforeStoredTrace([Z[Z)S
    .locals 1

    invoke-static {p1, p2}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDB_ShouldAutoAcceptBeforeStoredTrace([Z[Z)S

    move-result v0

    return v0
.end method

.method public isAutoAcceptBeforeTrace([Landroid/graphics/PointF;I[Z)Z
    .locals 8

    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    array-length v2, p1

    new-array v1, v2, [Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;

    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_3

    if-eqz p1, :cond_1

    aget-object v2, p1, v0

    if-nez v2, :cond_2

    :cond_1
    const/4 v2, 0x0

    aput-object v2, v1, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v2, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;

    aget-object v3, p1, v0

    iget v3, v3, Landroid/graphics/PointF;->x:F

    float-to-long v4, v3

    aget-object v3, p1, v0

    iget v3, v3, Landroid/graphics/PointF;->y:F

    float-to-long v6, v3

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;-><init>(JJ)V

    aput-object v2, v1, v0

    goto :goto_2

    :cond_3
    invoke-static {v1, p2, p3}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDB_ShouldAutoAcceptBeforeTrace([Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;I[Z)Z

    move-result v2

    goto :goto_0
.end method

.method public declared-synchronized isContainInLanguageDB(Ljava/lang/String;)Z
    .locals 12

    const/4 v10, 0x1

    monitor-enter p0

    const/4 v9, 0x0

    const/4 v2, 0x1

    :try_start_0
    new-array v3, v2, [B

    const/4 v2, 0x1

    new-array v4, v2, [S

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v0, v2, [S

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [S

    const/4 v2, 0x1

    new-array v5, v2, [S

    const/4 v2, 0x1

    new-array v6, v2, [S

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_0

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-short v2, v2

    aput-short v2, v0, v7

    aput-short v2, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    int-to-short v2, v2

    invoke-static/range {v0 .. v6}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWScanBufForNextSpellCorrection([S[SS[B[S[S[S)S

    move-result v9

    iget-short v2, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v11, 0x12

    if-ne v2, v11, :cond_1

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KClearAllSymbs()S

    move-result v9

    :goto_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->refreshContextBuffer(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x4

    if-ne v9, v2, :cond_2

    move v2, v10

    :goto_2
    monitor-exit p0

    return v2

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9ClearAllSymbs()S
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public isExistInAutoSubstitutions([SLjava/lang/StringBuilder;)I
    .locals 6

    const/16 v5, 0x40

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setAutoSubstitution(Z)V

    const/4 v0, 0x0

    new-array v1, v5, [S

    const/4 v3, 0x2

    new-array v2, v3, [S

    array-length v3, p1

    int-to-short v3, v3

    invoke-static {p1, v3, v1, v5, v2}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWASDBFindEntry([SS[SS[S)S

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    aget-short v3, v2, v4

    invoke-virtual {p0, v1, v3}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertShortArrayToCharSequence([SI)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initASDB()S

    array-length v3, p1

    int-to-short v3, v3

    invoke-static {p1, v3, v1, v5, v2}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWASDBFindEntry([SS[SS[S)S

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    aget-short v3, v2, v4

    invoke-virtual {p0, v1, v3}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertShortArrayToCharSequence([SI)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_0
    return v0
.end method

.method public isExistInMyWords([SZ)I
    .locals 4

    const/4 v0, 0x0

    array-length v3, p1

    invoke-virtual {p0, p1, v3}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertShortArrayToCharSequence([SI)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertCharSequenceToCharArray(Ljava/lang/CharSequence;)[C

    move-result-object v2

    if-eqz p2, :cond_0

    array-length v3, p1

    int-to-short v3, v3

    invoke-static {v2, v3}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDLMFindWord([CS)S

    move-result v0

    :goto_0
    return v0

    :cond_0
    array-length v3, p1

    int-to-short v3, v3

    invoke-static {v2, v3}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWDLMFindWord([CS)S

    move-result v0

    goto :goto_0
.end method

.method public isNumericCharacter(I)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSentenceTermPunct(I)Z
    .locals 2

    iget-short v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    int-to-short v0, p1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWShouldRemoveSpaceBeforeWord(SZ)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    int-to-short v0, p1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWShouldRemoveSpaceBeforeWord(SZ)Z

    move-result v0

    goto :goto_0
.end method

.method public isSentenceTermPunct(Ljava/lang/CharSequence;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x21

    if-eq v2, v3, :cond_0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x3f

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isTextCharacter(I)Z
    .locals 10

    const v9, 0x7a685457

    const v8, 0x7a68434e

    const/16 v7, 0x30

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v1

    iget-object v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iget-object v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v2

    if-eq v1, v3, :cond_0

    const/4 v5, 0x2

    if-ne v1, v5, :cond_2

    :cond_0
    move v3, v4

    :cond_1
    :goto_0
    return v3

    :cond_2
    if-eqz v0, :cond_3

    const/16 v5, 0x8

    if-eq v0, v5, :cond_3

    const/4 v5, 0x7

    if-ne v0, v5, :cond_9

    :cond_3
    if-nez v1, :cond_9

    iget v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x74680000

    if-ne v5, v6, :cond_4

    const/16 v5, 0x7b

    if-eq p1, v5, :cond_1

    :cond_4
    iget v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x76690000

    if-ne v5, v6, :cond_5

    invoke-static {p1}, Lcom/ime/framework/common/InputSequenceCheck;->isVietameseTone(I)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_5
    iget v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    if-ne v5, v8, :cond_7

    const/16 v5, 0x61

    if-lt p1, v5, :cond_6

    const/16 v5, 0x7a

    if-le p1, v5, :cond_1

    :cond_6
    const/16 v5, 0x1a

    if-eq p1, v5, :cond_1

    :cond_7
    iget v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    if-ne v5, v9, :cond_8

    invoke-direct {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->isBPMFTone(I)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_8
    iget-object v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v5

    if-eqz v5, :cond_9

    const/16 v5, 0x27

    if-eq p1, v5, :cond_1

    :cond_9
    iget v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x6b610000

    if-ne v5, v6, :cond_a

    if-eq p1, v3, :cond_1

    :cond_a
    if-eq v0, v3, :cond_b

    iget-object v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v5

    if-eqz v5, :cond_15

    :cond_b
    if-nez v1, :cond_15

    iget v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    if-eq v5, v8, :cond_c

    iget v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const v6, 0x7a68484b

    if-eq v5, v6, :cond_c

    iget v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    if-ne v5, v9, :cond_e

    :cond_c
    if-eqz v2, :cond_e

    const/16 v5, 0x31

    if-lt p1, v5, :cond_d

    const/16 v5, 0x35

    if-le p1, v5, :cond_1

    :cond_d
    const/16 v5, 0x2a

    if-eq p1, v5, :cond_1

    const/16 v5, 0x3a

    if-ne p1, v5, :cond_11

    move v3, v4

    goto :goto_0

    :cond_e
    iget v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    if-ne v5, v8, :cond_18

    const/16 v5, 0x5f

    if-ne p1, v5, :cond_f

    move v3, v4

    goto/16 :goto_0

    :cond_f
    const/16 v4, 0x32

    if-lt p1, v4, :cond_10

    const/16 v4, 0x39

    if-le p1, v4, :cond_1

    :cond_10
    const/16 v4, 0x1a

    if-eq p1, v4, :cond_1

    :cond_11
    if-le p1, v7, :cond_12

    const/16 v4, 0x39

    if-le p1, v4, :cond_1

    :cond_12
    iget v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v5, 0x74680000

    if-ne v4, v5, :cond_13

    if-eq p1, v7, :cond_1

    const/16 v4, -0x3a

    if-eq p1, v4, :cond_1

    :cond_13
    iget v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v5, 0x76690000

    if-ne v4, v5, :cond_14

    if-eq p1, v7, :cond_1

    :cond_14
    const/16 v4, 0x27

    if-eq p1, v4, :cond_1

    const/16 v4, 0x2d

    if-eq p1, v4, :cond_1

    :cond_15
    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v4

    if-eqz v4, :cond_16

    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isShuangPinMode()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-direct {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->isDoublePinyinChar(I)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_16
    invoke-virtual {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->isTreatedAsLetter(I)Z

    move-result v4

    if-eqz v4, :cond_17

    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_17
    invoke-static {p1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v3

    goto/16 :goto_0

    :cond_18
    iget v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    if-ne v4, v9, :cond_19

    invoke-direct {p0, p1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->isBPMFTone(I)Z

    move-result v4

    if-eqz v4, :cond_11

    goto/16 :goto_0

    :cond_19
    iget v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v5, 0x6a610000

    if-ne v4, v5, :cond_11

    const/16 v4, 0x3041

    if-lt p1, v4, :cond_11

    const/16 v4, 0x3094

    if-gt p1, v4, :cond_11

    goto/16 :goto_0
.end method

.method public isTreatedAsLetter(I)Z
    .locals 2

    const-string v0, "\'-#_"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ldbUpdate()V
    .locals 0

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9UpdateLdbList()S

    return-void
.end method

.method public moveTrace(FFJ)V
    .locals 5

    invoke-static {p1, p2, p3, p4}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDB_TouchMove(FFJ)S

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9KDB_TouchMove : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public prepareNormalPredictByXT9(Ljava/lang/CharSequence;)V
    .locals 4

    const/16 v3, 0xb

    new-array v2, v3, [S

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/16 v3, 0xa

    if-le v1, v3, :cond_0

    const/16 v1, 0xa

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    int-to-short v3, v3

    aput-short v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPSetContext([SIZ)S

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9ClearAllSymbs()S

    return-void
.end method

.method public processStoredTrace(B)S
    .locals 4

    invoke-static {p1}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDB_ProcessStoredTrace(B)S

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->clearContext()I

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9KDB_ProcessStoredTrace error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-boolean v1, Lcom/ime/framework/util/Debug;->ERROR:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9KDB_ProcessStoredTrace error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsTraceInput:Z

    invoke-virtual {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->updateSelectList()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->clearContext()I

    goto :goto_0
.end method

.method public processTrace([Landroid/graphics/PointF;I[JBZ)S
    .locals 14

    if-nez p1, :cond_1

    const/16 v4, 0x1b

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v7, "XT9_GESTURE_GAP"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mGap:I

    array-length v6, p1

    new-array v5, v6, [Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;

    array-length v6, p1

    new-array v3, v6, [J

    const/4 v2, 0x0

    :goto_1
    array-length v6, p1

    if-ge v2, v6, :cond_4

    if-eqz p1, :cond_2

    aget-object v6, p1, v2

    if-nez v6, :cond_3

    :cond_2
    const/4 v6, 0x0

    aput-object v6, v5, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    new-instance v6, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;

    aget-object v7, p1, v2

    iget v7, v7, Landroid/graphics/PointF;->x:F

    float-to-long v8, v7

    aget-object v7, p1, v2

    iget v7, v7, Landroid/graphics/PointF;->y:F

    float-to-long v10, v7

    const-wide/16 v12, 0xbb8

    add-long/2addr v10, v12

    iget v7, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mGap:I

    int-to-long v12, v7

    sub-long/2addr v10, v12

    invoke-direct {v6, v8, v9, v10, v11}, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;-><init>(JJ)V

    aput-object v6, v5, v2

    const-wide/16 v6, 0x0

    aput-wide v6, v3, v2

    goto :goto_2

    :cond_4
    move/from16 v0, p2

    move/from16 v1, p4

    invoke-static {v5, v0, v3, v1}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDB_ProcessTrace([Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;I[JB)S

    move-result v4

    const/4 v6, 0x5

    if-ne v4, v6, :cond_5

    invoke-virtual {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->clearContext()I

    goto :goto_0

    :cond_5
    sget-boolean v6, Lcom/ime/framework/util/Debug;->ERROR:Z

    if-eqz v6, :cond_6

    if-eqz v4, :cond_6

    const-string v6, "SamsungIME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Xt9Wrapper processTrace ET9KDB_ProcessTrace error : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsTraceInput:Z

    invoke-virtual {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->updateSelectList()I

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->clearContext()I

    goto :goto_0
.end method

.method public processWhenPickSuggestionManually(I)I
    .locals 4

    const/4 v0, 0x0

    iget-short v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v2, 0x12

    if-ne v1, v2, :cond_1

    int-to-byte v1, p1

    invoke-static {v1}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KSelectHangul(B)S

    move-result v0

    :goto_0
    sget-boolean v1, Lcom/ime/framework/util/Debug;->ERROR:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processWhenPickSuggestionManually : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0

    :cond_1
    int-to-byte v1, p1

    invoke-static {v1}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWSelLstSelWord(B)S

    move-result v0

    goto :goto_0
.end method

.method public reflashSelectList()I
    .locals 1

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9ClearAllSymbs()S

    invoke-virtual {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->updateSelectList()I

    move-result v0

    return v0
.end method

.method public refreshContextBuffer(Z)I
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9InputSequenceCount()S

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v5, 0x100

    invoke-interface {v1, v5, v7}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    invoke-direct {p0, v0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getWordStartIndex(Ljava/lang/CharSequence;)I

    move-result v2

    if-ltz v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_3

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const-string v7, ""

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertCharSequenceToShortArray(Ljava/lang/CharSequence;)[S

    move-result-object v4

    array-length v5, v4

    if-ltz v5, :cond_1

    if-nez v4, :cond_4

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    const-string v5, "SamsungIME"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ET9AWFillContextBuffer : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v3

    :cond_3
    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const-string v6, ""

    invoke-virtual {v0, v7, v5, v6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-short v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v6, 0x12

    if-ne v5, v6, :cond_5

    array-length v5, v4

    invoke-static {v4, v5}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KFillContextBuffer([SI)S

    move-result v3

    goto :goto_1

    :cond_5
    array-length v5, v4

    invoke-static {v4, v5}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWFillContextBuffer([SI)S

    move-result v3

    goto :goto_1
.end method

.method public refreshContextBuffer(ZZ)I
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9InputSequenceCount()S

    move-result v5

    if-eqz v5, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    iget-object v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v5, 0x100

    invoke-interface {v1, v5, v7}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    invoke-direct {p0, v0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getWordStartIndex(Ljava/lang/CharSequence;)I

    move-result v2

    if-ltz v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const-string v7, ""

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->convertCharSequenceToShortArray(Ljava/lang/CharSequence;)[S

    move-result-object v4

    array-length v5, v4

    if-ltz v5, :cond_2

    if-nez v4, :cond_5

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    const-string v5, "SamsungIME"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ET9AWFillContextBuffer : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v3

    :cond_4
    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const-string v6, ""

    invoke-virtual {v0, v7, v5, v6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget-short v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v6, 0x12

    if-ne v5, v6, :cond_6

    array-length v5, v4

    invoke-static {v4, v5}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KFillContextBuffer([SI)S

    move-result v3

    goto :goto_1

    :cond_6
    array-length v5, v4

    invoke-static {v4, v5}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWFillContextBuffer([SI)S

    move-result v3

    goto :goto_1
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->writeDBdataToFile(B)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->writeDBdataToFile(B)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->writeDBdataToFile(B)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->writeDBdataToFile(B)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->writeDBdataToFile(B)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->writeDBdataToFile(B)V

    return-void
.end method

.method public releaseTrace(FFJ)V
    .locals 5

    invoke-static {p1, p2, p3, p4}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDB_TouchEnd(FFJ)S

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9KDB_TouchEnd : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    return-void
.end method

.method public resetDLMData()S
    .locals 1

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWDLMReset()S

    move-result v0

    return v0
.end method

.method public romajiToHiragana(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v5, 0x1

    new-array v3, v5, [I

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    int-to-short v6, v6

    iget-object v7, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mMidashigoWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;

    iget-object v7, v7, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;->sWord:[B

    invoke-static {v5, v6, v7, v3}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9RomajiToKana([CS[B[I)S

    move-result v4

    const-string v0, ""

    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mMidashigoWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;

    iget-object v5, v5, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;->sWord:[B

    const/4 v6, 0x0

    const/4 v7, 0x0

    aget v7, v3, v7

    const-string v8, "Shift_JIS"

    invoke-direct {v1, v5, v6, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public setActiveWordStatusChangable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsActiveWordStatusChangable:Z

    return-void
.end method

.method public setChineseFuzzyPinyin()V
    .locals 11

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-short v8, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v9, 0xe1

    if-ne v8, v9, :cond_3

    sget-object v0, Lcom/ime/framework/engine/xt9/Xt9Datatype;->ET9_MOHUPAIR_STRING:[Ljava/lang/String;

    array-length v3, v0

    const/4 v2, 0x0

    move v6, v5

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    iget-object v8, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mRepository:Lcom/ime/framework/repository/Repository;

    const/4 v9, 0x0

    invoke-interface {v8, v1, v9}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v8, Lcom/ime/framework/engine/xt9/Xt9Datatype;->ET9_MOHU_PAIR_MASK:[S

    add-int/lit8 v5, v6, 0x1

    aget-short v8, v8, v6

    or-int/2addr v8, v4

    int-to-short v4, v8

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v6, v5

    goto :goto_0

    :cond_0
    sget-object v8, Lcom/ime/framework/engine/xt9/Xt9Datatype;->ET9_MOHU_PAIR_MASK:[S

    add-int/lit8 v5, v6, 0x1

    aget-short v8, v8, v6

    xor-int/lit8 v8, v8, -0x1

    and-int/2addr v8, v4

    int-to-short v4, v8

    goto :goto_1

    :cond_1
    invoke-static {v4}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPSetMohuPairs(S)S

    move-result v7

    if-eqz v7, :cond_2

    const-string v8, "SamsungIME"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ET9CPSetMohuPairs : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v5, v6

    :cond_3
    return-void
.end method

.method public setChinesePhoneticIndex(I)V
    .locals 6

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPGetPrefixCount()B

    move-result v1

    sget-boolean v3, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungIME_UnifiedIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XTt994Wrapper setChinesePhoneticIndex nPhoneticIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Xt9core.ET9CPHasBilingualPrefix(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPHasBilingualPrefix()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    if-ge p1, v1, :cond_4

    int-to-byte v3, p1

    invoke-static {v3}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPSetActivePrefix(B)S

    move-result v2

    :cond_1
    :goto_0
    sget-boolean v3, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "SamsungIME_UnifiedIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XTt994Wrapper setChinesePhoneticIndex wStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v2, :cond_3

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ET9CPSetActivePrefix : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->updateSelectList()I

    return-void

    :cond_4
    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPHasBilingualPrefix()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0xfe

    int-to-byte v3, v0

    invoke-static {v3}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPSetActivePrefix(B)S

    move-result v2

    goto :goto_0
.end method

.method public setHwrPanelRect(IIII)V
    .locals 0

    return-void
.end method

.method public setKeyboard()V
    .locals 5

    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isDynamicKDB()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getCurrentKDBNum()I

    move-result v1

    iput v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mFirstKdbNum:I

    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getCurrentKDBPageNum()I

    move-result v1

    iput v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mFirstKdbPage:I

    new-instance v0, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase;

    iget v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mFirstKdbNum:I

    iget v2, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mFirstKdbPage:I

    iget-object v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCurrentKeyboard:Lcom/ime/framework/view/Keyboard;

    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->isAcuteAccent()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase;-><init>(IILcom/ime/framework/view/Keyboard;Z)V

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setKeyboardDatabase(Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase;)I

    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->changeKDBNum(I)V

    :cond_0
    return-void
.end method

.method public setKeyboard(Lcom/ime/framework/view/Keyboard;)V
    .locals 6

    iget-object v2, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isDynamicKDB()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object p1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCurrentKeyboard:Lcom/ime/framework/view/Keyboard;

    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getCurrentKDBNum()I

    move-result v2

    iput v2, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mFirstKdbNum:I

    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getCurrentKDBPageNum()I

    move-result v2

    iput v2, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mFirstKdbPage:I

    iget-object v2, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v0

    new-instance v1, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase;

    iget v2, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mFirstKdbNum:I

    iget v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mFirstKdbPage:I

    iget-object v4, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCurrentKeyboard:Lcom/ime/framework/view/Keyboard;

    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->isAcuteAccent()Z

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase;-><init>(IILcom/ime/framework/view/Keyboard;Z)V

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setKeyboardDatabase(Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase;)I

    iget-object v2, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->changeKDBNum(I)V

    iget-object v2, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-short v2, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v3, 0x12

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setInputMode(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, v0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setInputMode(Z)V

    goto :goto_0
.end method

.method public setKeyboardDatabase(Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase;)I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase;->keys:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase;->keys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {p1}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9SetKeyboardDatabase(Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase;)S

    move-result v0

    :cond_0
    return v0
.end method

.method public setKeyboardOffset(II)V
    .locals 2

    int-to-short v0, p1

    int-to-short v1, p2

    invoke-static {v0, v1}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetKeyboardOffset(SS)S

    return-void
.end method

.method public setKeyboardSize(II)V
    .locals 4

    int-to-short v1, p1

    int-to-short v2, p2

    invoke-static {v1, v2}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetKeyboardSize(SS)S

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setKeyboardSize : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", witdh : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    const/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setKeyboardOffset(II)V

    return-void
.end method

.method public setOptionsByState()I
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v0

    iget-object v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    const v7, 0x656e4742

    invoke-interface {v3, v6, v7}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    iget v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    invoke-direct {p0, v3}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setInputLanguage(I)S

    iget-object v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v3

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_0
    iget-short v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v6, 0x12

    if-ne v3, v6, :cond_7

    invoke-direct {p0, v5}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setInputMode(Z)V

    :goto_0
    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_NEXTWORDPREDICTION"

    invoke-interface {v3, v6, v5}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v4

    :goto_1
    invoke-direct {p0, v3}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setNextWordPrediction(Z)V

    if-eqz v0, :cond_9

    iget-object v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_AUTOAPPEND"

    invoke-interface {v3, v6, v5}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v4

    :goto_2
    invoke-direct {p0, v3}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setAutoAppend(Z)V

    invoke-direct {p0, v0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setAutoSubstitution(Z)V

    iget-object v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_WORDCOMPLETION"

    invoke-interface {v3, v6, v4}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v0, :cond_a

    if-eqz v1, :cond_a

    move v3, v4

    :goto_3
    invoke-direct {p0, v3}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setWordCompletion(Z)V

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_WORDCOMPLETIONPOINT"

    const/4 v7, 0x2

    invoke-interface {v3, v6, v7}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    int-to-short v3, v3

    invoke-direct {p0, v3}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setWordCompletionPoint(S)V

    :cond_1
    iget-short v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v6, 0xe1

    if-ne v3, v6, :cond_2

    iget-object v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isShuangPinMode()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-short v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v6, 0xe0

    if-eq v3, v6, :cond_3

    iget-short v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v6, 0xe2

    if-ne v3, v6, :cond_c

    :cond_3
    iget-object v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isEnableAutoCorrection()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-direct {p0, v4}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setRegionalCorrectionOn(Z)V

    :goto_4
    if-eqz v0, :cond_e

    iget-object v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_SPELLCORRECTION"

    invoke-interface {v3, v6, v4}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_4
    :goto_5
    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWSetSpaceSegmentation()S

    move-result v2

    if-eqz v2, :cond_5

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9AWSetSpaceSegmentation : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9ClearDownshiftDefault()S

    move-result v2

    if-eqz v2, :cond_6

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9ClearDownshiftDefault : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initDLM()S

    return v5

    :cond_7
    invoke-direct {p0, v0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setInputMode(Z)V

    goto/16 :goto_0

    :cond_8
    move v3, v5

    goto/16 :goto_1

    :cond_9
    move v3, v5

    goto/16 :goto_2

    :cond_a
    move v3, v5

    goto/16 :goto_3

    :cond_b
    invoke-direct {p0, v5}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setRegionalCorrectionOn(Z)V

    goto :goto_4

    :cond_c
    if-eqz v0, :cond_d

    iget-object v3, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_REGIONALCORRECTION"

    invoke-interface {v3, v6, v5}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_d

    move v3, v4

    :goto_6
    invoke-direct {p0, v3}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setRegionalCorrectionOn(Z)V

    goto :goto_4

    :cond_d
    move v3, v5

    goto :goto_6

    :cond_e
    invoke-static {v5, v5}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWSetSpellCorrectionMode(BZ)S

    move-result v2

    if-eqz v2, :cond_f

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9KDB_Validate : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    invoke-static {v5}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWSetSelectionListMode(B)S

    move-result v2

    if-eqz v2, :cond_4

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9AWSetSelectionListMode : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

.method public setXt9AutoReplacementCondition(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mXt9AutoReplacementCondition:Z

    return-void
.end method

.method public startTrace(FFJ)V
    .locals 5

    invoke-static {p1, p2, p3, p4}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDB_TouchStart(FFJ)S

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9KDB_TouchStart : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public updateAcuteAccentState(Z)V
    .locals 3

    iget v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v2, 0x656c0000

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    const/high16 v2, 0x6c760000

    if-ne v1, v2, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    :cond_1
    iget-short v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v2, 0x12

    if-eq v1, v2, :cond_2

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsAcuteAccent:Z

    invoke-virtual {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setKeyboard()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsAcuteAccent:Z

    invoke-virtual {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setKeyboard()V

    goto :goto_0
.end method

.method public updateEngine()I
    .locals 4

    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v2, "INPUT_LANGUAGE"

    const v3, 0x656e4742

    invoke-interface {v1, v2, v3}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    iget v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mImeInputLanguage:I

    invoke-direct {p0, v1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->setInputLanguage(I)S

    invoke-direct {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initSubLinguistic()V

    const/4 v1, 0x0

    return v1
.end method

.method public updateSelectList()I
    .locals 18

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v13}, Lcom/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v10

    const/4 v13, 0x1

    new-array v4, v13, [B

    const/4 v13, 0x1

    new-array v2, v13, [B

    const/4 v13, 0x1

    new-array v9, v13, [S

    const/4 v11, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v14, 0xe1

    if-eq v13, v14, :cond_0

    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v14, 0xe0

    if-eq v13, v14, :cond_0

    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v14, 0xe2

    if-ne v13, v14, :cond_14

    :cond_0
    new-instance v1, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    invoke-direct {v1}, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    invoke-virtual {v13}, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->init()V

    invoke-static {v9}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPBuildSelectionList([S)S

    move-result v12

    if-nez v12, :cond_1

    invoke-static {v1}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPGetSpell(Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;)S

    move-result v12

    if-eqz v12, :cond_8

    const-string v13, "SamsungIME"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ET9CPGetSpell : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, -0x1

    :goto_0
    return v13

    :cond_1
    const/16 v13, 0x2b

    if-ne v12, v13, :cond_2

    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v14, 0x12

    if-ne v13, v14, :cond_5

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KClearOneSymb()S

    move-result v12

    :cond_2
    :goto_1
    sget-boolean v13, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v13, :cond_3

    if-eqz v12, :cond_3

    const-string v13, "SamsungIME"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ET9ClearOneSymb : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {v9}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPBuildSelectionList([S)S

    move-result v12

    if-nez v12, :cond_7

    invoke-static {v1}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPGetSpell(Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;)S

    move-result v12

    iget-byte v13, v1, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    if-eqz v13, :cond_4

    if-eqz v12, :cond_7

    :cond_4
    const-string v13, "SamsungIME"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ET9CPGetSpell : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, -0x1

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9ClearOneSymb()S

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mtoneLastidx:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mtoneLastidx:I

    const/4 v14, 0x4

    if-ge v13, v14, :cond_6

    move-object/from16 v0, p0

    iget v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mtoneLastidx:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mtoneLastidx:I

    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->BPMF_KEYCODES:[S

    move-object/from16 v0, p0

    iget v14, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mtoneLastidx:I

    aget-short v13, v13, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->explicitSymbol(I)S

    goto :goto_1

    :cond_6
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mtoneLastidx:I

    goto :goto_2

    :cond_7
    const/16 v13, 0x2b

    if-ne v12, v13, :cond_8

    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v14, 0x12

    if-ne v13, v14, :cond_9

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KClearOneSymb()S

    move-result v12

    :cond_8
    :goto_3
    if-nez v12, :cond_13

    iget-byte v13, v1, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    if-lez v13, :cond_13

    new-instance v8, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;

    invoke-direct {v8}, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;-><init>()V

    const/4 v13, 0x1

    new-array v3, v13, [B

    const/4 v13, 0x0

    invoke-static {v8, v13, v3}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPGetSelection(Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;[B)S

    move-result v12

    iget-byte v13, v8, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->bLen:B

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v14, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    add-int/2addr v13, v14

    const/16 v14, 0xe0

    if-ge v13, v14, :cond_13

    iget-byte v13, v8, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->bLen:B

    if-lez v13, :cond_b

    const/4 v6, 0x0

    :goto_4
    iget-byte v13, v8, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->bLen:B

    if-ge v6, v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v13, v13, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v15, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput-byte v0, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    iget-object v14, v8, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->pSymbs:[C

    aget-char v14, v14, v6

    aput-char v14, v13, v15

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_9
    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9ClearOneSymb()S

    move-result v12

    goto :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v14, v8, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->bLen:B

    iput-byte v14, v13, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pLen:B

    :cond_b
    const/4 v6, 0x0

    :goto_5
    iget-byte v13, v1, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    if-ge v6, v13, :cond_13

    iget-object v13, v1, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v13, v13, v6

    const/16 v14, 0x1a

    if-eq v13, v14, :cond_c

    iget-object v13, v1, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v13, v13, v6

    const/16 v14, 0x27

    if-ne v13, v14, :cond_e

    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v13, v13, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v15, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput-byte v0, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    const/16 v14, 0x27

    aput-char v14, v13, v15

    :cond_d
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_e
    iget-object v13, v1, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v13, v13, v6

    const/16 v14, 0x5f

    if-eq v13, v14, :cond_d

    if-eqz v10, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v14, v13, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v15, v13, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput-byte v0, v13, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->STROKE_CHARSET:[C

    move-object/from16 v16, v0

    iget-object v13, v1, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v13, v13, v6

    const/16 v17, 0x1

    move/from16 v0, v17

    if-lt v13, v0, :cond_f

    iget-object v13, v1, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v13, v13, v6

    const/16 v17, 0x6

    move/from16 v0, v17

    if-le v13, v0, :cond_10

    :cond_f
    const/4 v13, 0x0

    :goto_7
    aget-char v13, v16, v13

    aput-char v13, v14, v15

    goto :goto_6

    :cond_10
    iget-object v13, v1, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v13, v13, v6

    add-int/lit8 v13, v13, -0x1

    goto :goto_7

    :cond_11
    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v14, 0xe2

    if-ne v13, v14, :cond_12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v13}, Lcom/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v13

    if-nez v13, :cond_12

    iget-object v13, v1, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v13, v13, v6

    packed-switch v13, :pswitch_data_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v13, v13, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v15, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput-byte v0, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    iget-object v14, v1, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v14, v14, v6

    aput-char v14, v13, v15

    goto/16 :goto_6

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v13, v13, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v15, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput-byte v0, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    const/16 v14, 0x65e5

    aput-char v14, v13, v15

    goto/16 :goto_6

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v13, v13, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v15, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput-byte v0, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    const/16 v14, 0x6708

    aput-char v14, v13, v15

    goto/16 :goto_6

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v13, v13, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v15, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput-byte v0, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    const v14, 0x91d1

    aput-char v14, v13, v15

    goto/16 :goto_6

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v13, v13, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v15, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput-byte v0, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    const/16 v14, 0x6728

    aput-char v14, v13, v15

    goto/16 :goto_6

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v13, v13, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v15, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput-byte v0, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    const/16 v14, 0x6c34

    aput-char v14, v13, v15

    goto/16 :goto_6

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v13, v13, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v15, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput-byte v0, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    const/16 v14, 0x706b

    aput-char v14, v13, v15

    goto/16 :goto_6

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v13, v13, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v15, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput-byte v0, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    const/16 v14, 0x571f

    aput-char v14, v13, v15

    goto/16 :goto_6

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v13, v13, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v15, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput-byte v0, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    const/16 v14, 0x7af9

    aput-char v14, v13, v15

    goto/16 :goto_6

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v13, v13, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v15, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput-byte v0, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    const/16 v14, 0x6208

    aput-char v14, v13, v15

    goto/16 :goto_6

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v13, v13, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v15, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput-byte v0, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    const/16 v14, 0x5341

    aput-char v14, v13, v15

    goto/16 :goto_6

    :pswitch_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v13, v13, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v15, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput-byte v0, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    const/16 v14, 0x5927

    aput-char v14, v13, v15

    goto/16 :goto_6

    :pswitch_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v13, v13, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v15, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput-byte v0, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    const/16 v14, 0x4e2d

    aput-char v14, v13, v15

    goto/16 :goto_6

    :pswitch_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v13, v13, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v15, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput-byte v0, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    const/16 v14, 0x4e00

    aput-char v14, v13, v15

    goto/16 :goto_6

    :pswitch_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v13, v13, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v15, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput-byte v0, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    const/16 v14, 0x5f13

    aput-char v14, v13, v15

    goto/16 :goto_6

    :pswitch_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v13, v13, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v15, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput-byte v0, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    const/16 v14, 0x4eba

    aput-char v14, v13, v15

    goto/16 :goto_6

    :pswitch_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v13, v13, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v15, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput-byte v0, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    const/16 v14, 0x5fc3

    aput-char v14, v13, v15

    goto/16 :goto_6

    :pswitch_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v13, v13, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v15, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput-byte v0, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    const/16 v14, 0x624b

    aput-char v14, v13, v15

    goto/16 :goto_6

    :pswitch_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v13, v13, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v15, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput-byte v0, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    const/16 v14, 0x53e3

    aput-char v14, v13, v15

    goto/16 :goto_6

    :pswitch_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v13, v13, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v15, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput-byte v0, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    const/16 v14, 0x5c38

    aput-char v14, v13, v15

    goto/16 :goto_6

    :pswitch_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v13, v13, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v15, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput-byte v0, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    const/16 v14, 0x5eff

    aput-char v14, v13, v15

    goto/16 :goto_6

    :pswitch_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v13, v13, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v15, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput-byte v0, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    const/16 v14, 0x5c71

    aput-char v14, v13, v15

    goto/16 :goto_6

    :pswitch_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v13, v13, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v15, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput-byte v0, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    const/16 v14, 0x5973

    aput-char v14, v13, v15

    goto/16 :goto_6

    :pswitch_17
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v13, v13, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v15, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput-byte v0, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    const/16 v14, 0x7530

    aput-char v14, v13, v15

    goto/16 :goto_6

    :pswitch_18
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v13, v13, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v15, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput-byte v0, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    const v14, 0x96e3

    aput-char v14, v13, v15

    goto/16 :goto_6

    :pswitch_19
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v13, v13, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v15, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput-byte v0, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    const/16 v14, 0x535c

    aput-char v14, v13, v15

    goto/16 :goto_6

    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v13, v13, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v15, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput-byte v0, v14, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    iget-object v14, v1, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v14, v14, v6

    aput-char v14, v13, v15

    goto/16 :goto_6

    :cond_13
    const/4 v5, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->getMaxWordsCount()S

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSuggestionCount:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mActiveIndex:I

    :goto_8
    move v13, v11

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsReselection:Z

    if-nez v13, :cond_15

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->refreshContextBuffer(Z)I

    :cond_15
    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v14, 0x12

    if-ne v13, v14, :cond_19

    invoke-static {v4, v2, v9}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KBuildSelectionList([B[B[S)S

    move-result v12

    :goto_9
    const/4 v13, 0x4

    if-ne v12, v13, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->clearContext()I

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->breakContext()V

    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v14, 0x12

    if-ne v13, v14, :cond_1d

    invoke-static {v4, v2, v9}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KBuildSelectionList([B[B[S)S

    move-result v12

    :cond_16
    :goto_a
    if-nez v12, :cond_17

    const/4 v13, 0x0

    aget-byte v11, v4, v13

    const/4 v13, 0x0

    aget-byte v5, v2, v13

    :cond_17
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v13}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v7

    if-nez v7, :cond_18

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v13

    if-nez v13, :cond_21

    :cond_18
    :goto_b
    move-object/from16 v0, p0

    iput v11, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSuggestionCount:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mActiveIndex:I

    goto :goto_8

    :cond_19
    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v14, 0x11

    if-ne v13, v14, :cond_1c

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->OnBlockPrediction()Z

    move-result v13

    if-nez v13, :cond_1a

    invoke-static {v4, v9}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9JBuildSelectionList([B[S)S

    move-result v12

    goto :goto_9

    :cond_1a
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->getCursorDir()I

    move-result v13

    if-nez v13, :cond_1b

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->getCursorDir()I

    move-result v13

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->composingText()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->composingText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-static {v13, v14, v15}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9startRangeConversion(I[CI)I

    :goto_c
    const/4 v13, 0x0

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9getRangeConvCandidateWordCount()I

    move-result v14

    int-to-byte v14, v14

    aput-byte v14, v4, v13

    goto :goto_9

    :cond_1b
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->getCursorDir()I

    move-result v13

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->getBlockText()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->getBlockText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-static {v13, v14, v15}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9startRangeConversion(I[CI)I

    goto :goto_c

    :cond_1c
    invoke-static {v4, v2, v9}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWSelLstBuild([B[B[S)S

    move-result v12

    goto/16 :goto_9

    :cond_1d
    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v14, 0x11

    if-ne v13, v14, :cond_20

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->OnBlockPrediction()Z

    move-result v13

    if-nez v13, :cond_1e

    invoke-static {v4, v9}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9JBuildSelectionList([B[S)S

    move-result v12

    goto/16 :goto_a

    :cond_1e
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->getCursorDir()I

    move-result v13

    if-nez v13, :cond_1f

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->getCursorDir()I

    move-result v13

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->composingText()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->composingText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-static {v13, v14, v15}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9startRangeConversion(I[CI)I

    :goto_d
    const/4 v13, 0x0

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9getRangeConvCandidateWordCount()I

    move-result v14

    int-to-byte v14, v14

    aput-byte v14, v4, v13

    goto/16 :goto_a

    :cond_1f
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->getCursorDir()I

    move-result v13

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->getBlockText()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->getBlockText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-static {v13, v14, v15}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9startRangeConversion(I[CI)I

    goto :goto_d

    :cond_20
    invoke-static {v4, v2, v9}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWSelLstBuild([B[B[S)S

    move-result v12

    goto/16 :goto_a

    :cond_21
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/ime/framework/common/InputManager;->isEnableAutoCorrection()Z

    move-result v13

    if-nez v13, :cond_18

    const/4 v5, 0x0

    goto/16 :goto_b

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method

.method public updateShiftState()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v5}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v3

    iget-object v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v5}, Lcom/ime/framework/common/ShiftStateController;->getCapsLockState()Z

    move-result v1

    iget-object v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v5}, Lcom/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v5}, Lcom/ime/framework/common/ShiftStateController;->getShiftPolicy()I

    move-result v5

    if-ne v5, v8, :cond_1

    iget-object v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v5, 0x7

    if-eq v0, v5, :cond_0

    const/16 v5, 0x8

    if-ne v0, v5, :cond_1

    :cond_0
    iget-short v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v6, 0x12

    if-eq v5, v6, :cond_1

    if-eqz v3, :cond_3

    invoke-static {v8, v7}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetPageNum(SS)S

    :cond_1
    :goto_0
    if-eqz v1, :cond_5

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9SetUnShift()S

    move-result v4

    iput-byte v7, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mShiftState:B

    :goto_1
    sget-boolean v5, Lcom/ime/framework/util/Debug;->ERROR:Z

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    const-string v5, "SamsungIME"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateShiftState() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    invoke-static {v7, v7}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetPageNum(SS)S

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9SetCapsLock()S

    move-result v4

    iput-byte v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mShiftState:B

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_7

    iget-short v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v6, 0x11

    if-eq v5, v6, :cond_7

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9SetCapsLock()S

    move-result v4

    iput-byte v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mShiftState:B

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9SetShift()S

    move-result v4

    iput-byte v8, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mShiftState:B

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9SetUnShift()S

    move-result v4

    iput-byte v7, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mShiftState:B

    goto :goto_1
.end method

.method public wordSelected(ILjava/lang/CharSequence;)I
    .locals 9

    const/4 v4, 0x0

    iget-short v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v6, 0xe1

    if-eq v5, v6, :cond_0

    iget-short v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v6, 0xe0

    if-eq v5, v6, :cond_0

    iget-short v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v6, 0xe2

    if-ne v5, v6, :cond_5

    :cond_0
    int-to-short v5, p1

    iget-object v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    invoke-static {v5, v6}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPSelectPhrase(SLcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;)S

    move-result v3

    const/16 v5, 0x64

    if-ne v3, v5, :cond_3

    invoke-interface {p2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    int-to-short v5, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7, v4, v4}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AddExplicitSymb(SJBB)S

    move-result v3

    :cond_1
    invoke-virtual {p0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->updateSelectList()I

    move-result v4

    :cond_2
    :goto_0
    return v4

    :cond_3
    const/16 v5, 0x65

    if-ne v3, v5, :cond_1

    new-instance v2, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;

    invoke-direct {v2}, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;-><init>()V

    const/4 v5, 0x1

    new-array v0, v5, [B

    const/4 v5, 0x0

    invoke-static {v2, v5, v0}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPGetSelection(Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;[B)S

    move-result v3

    iget-object v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    invoke-virtual {v5}, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->init()V

    const/4 v1, 0x0

    :goto_1
    iget-byte v5, v2, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->bLen:B

    if-ge v1, v5, :cond_4

    iget-object v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v5, v5, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    iget-object v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v7, v6, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    add-int/lit8 v8, v7, 0x1

    int-to-byte v8, v8

    iput-byte v8, v6, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    iget-object v6, v2, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->pSymbs:[C

    aget-char v6, v6, v1

    aput-char v6, v5, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCPSpell:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v6, v2, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->bLen:B

    iput-byte v6, v5, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pLen:B

    if-nez v3, :cond_2

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPCommitSelection()S

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9ClearAllSymbs()S

    goto :goto_0

    :cond_5
    iget-short v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputLanguageId:S

    const/16 v6, 0x11

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mMidashigoWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;

    invoke-virtual {v5}, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;->init()V

    iget-object v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSimpleWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;

    invoke-static {v5}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9GetExactWord(Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;)S

    move-result v3

    int-to-byte v5, p1

    iget-object v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mMidashigoWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;

    iget-object v6, v6, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;->sWord:[B

    iget-object v7, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mMidashigoWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;

    iget-object v7, v7, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;->wLen:[S

    invoke-static {v5, v6, v7}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9JGetCandidate(B[B[S)S

    move-result v3

    iget-object v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSimpleWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;

    iget-short v5, v5, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;->wLen:S

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSimpleWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;

    iget-object v5, v5, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;->sString:[C

    iget-object v6, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSimpleWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;

    iget-short v6, v6, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;->wLen:S

    iget-object v7, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mMidashigoWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;

    iget-object v7, v7, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;->sWord:[B

    iget-object v8, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mMidashigoWord:Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;

    iget-object v8, v8, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;->wLen:[S

    aget-short v8, v8, v4

    invoke-static {v5, v6, v7, v8}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9JNoteWordDone([CS[BI)S

    goto :goto_0
.end method

.method public writeDBdataToFile(B)V
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x0

    const/4 v5, 0x0

    const-string v6, ""

    iget-object v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "xT9DB"

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_2

    const-string v6, "xT9UdbData.dat"

    sget-object v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mUDBBuffer:[B

    const/16 v2, 0x3000

    :goto_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v7, 0x0

    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    const/4 v9, 0x0

    invoke-direct {v8, v5, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_15
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const/4 v9, 0x0

    :try_start_2
    invoke-virtual {v8, v0, v9, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_24
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_23
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_22
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    if-eqz v8, :cond_c

    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/FileDescriptor;->sync()V

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/SyncFailedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_2
    move-object v7, v8

    :cond_1
    :goto_3
    return-void

    :cond_2
    const/4 v9, 0x6

    if-ne p1, v9, :cond_3

    const-string v6, "xT9ZHUdbData.dat"

    sget-object v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mZHUDBBuffer:[B

    const/16 v2, 0x3000

    goto :goto_0

    :cond_3
    const/4 v9, 0x7

    if-ne p1, v9, :cond_4

    const-string v6, "xT9ZTUdbData.dat"

    sget-object v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mZTUDBBuffer:[B

    const/16 v2, 0x3000

    goto :goto_0

    :cond_4
    const/4 v9, 0x1

    if-ne p1, v9, :cond_5

    const-string v6, "xT9CdbData.dat"

    sget-object v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCDBBuffer:[B

    const/16 v2, 0x800

    goto :goto_0

    :cond_5
    const/4 v9, 0x2

    if-ne p1, v9, :cond_6

    const-string v6, "xT9ASdbData.dat"

    sget-object v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mASDBBuffer:[B

    const/16 v2, 0x2800

    goto :goto_0

    :cond_6
    const/4 v9, 0x3

    if-ne p1, v9, :cond_7

    const-string v6, "xT9KUdbData.dat"

    sget-object v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mKUDBBuffer:[B

    const/16 v2, 0x5000

    goto :goto_0

    :cond_7
    if-ne p1, v12, :cond_8

    const-string v6, "xT9DLMData.dat"

    sget-object v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mDLMBuffer:[B

    sget v2, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->DLM_SIZE:I

    goto :goto_0

    :cond_8
    const/4 v9, 0x5

    if-ne p1, v9, :cond_a

    const-string v6, "xT9SMTData.dat"

    sget-object v0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mSMTBuffer:[B

    iget v9, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mXt9Version:I

    if-lt v9, v12, :cond_9

    sget-object v9, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->SMT_SIZE_ARR:[I

    aget v2, v9, v11

    goto :goto_0

    :cond_9
    sget v2, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->SMT_SIZE:I

    goto :goto_0

    :cond_a
    const-string v9, "SamsungIME"

    const-string v10, "Invalid DB type!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_0
    move-exception v4

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not create the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_1
    move-exception v4

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not close the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_2
    move-exception v4

    :try_start_5
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not sync the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/SyncFailedException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception v4

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not close the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_4
    move-exception v4

    :try_start_7
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not close the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_2

    :catch_5
    move-exception v4

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not close the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catchall_0
    move-exception v9

    :try_start_9
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :goto_4
    throw v9

    :catch_6
    move-exception v4

    const-string v10, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not close the DB file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "!("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_7
    move-exception v4

    :goto_5
    :try_start_a
    const-string v9, "SamsungIME"

    const-string v10, "FileOutputStream is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v7, :cond_1

    :try_start_b
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/FileDescriptor;->sync()V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/SyncFailedException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto/16 :goto_3

    :catch_8
    move-exception v4

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not close the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catch_9
    move-exception v4

    :try_start_d
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not sync the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/SyncFailedException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    goto/16 :goto_3

    :catch_a
    move-exception v4

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not close the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catch_b
    move-exception v4

    :try_start_f
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not close the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    goto/16 :goto_3

    :catch_c
    move-exception v4

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not close the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catchall_1
    move-exception v9

    :try_start_11
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d

    :goto_6
    throw v9

    :catch_d
    move-exception v4

    const-string v10, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not close the DB file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "!("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_e
    move-exception v4

    :goto_7
    :try_start_12
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not find the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    if-eqz v7, :cond_1

    :try_start_13
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/FileDescriptor;->sync()V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/SyncFailedException; {:try_start_13 .. :try_end_13} :catch_10
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_12
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    :try_start_14
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_f

    goto/16 :goto_3

    :catch_f
    move-exception v4

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not close the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catch_10
    move-exception v4

    :try_start_15
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not sync the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/SyncFailedException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    :try_start_16
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_11

    goto/16 :goto_3

    :catch_11
    move-exception v4

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not close the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catch_12
    move-exception v4

    :try_start_17
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not close the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    :try_start_18
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_13

    goto/16 :goto_3

    :catch_13
    move-exception v4

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not close the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catchall_2
    move-exception v9

    :try_start_19
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_14

    :goto_8
    throw v9

    :catch_14
    move-exception v4

    const-string v10, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not close the DB file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "!("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :catch_15
    move-exception v4

    :goto_9
    :try_start_1a
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not write on the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    if-eqz v7, :cond_1

    :try_start_1b
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/FileDescriptor;->sync()V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/SyncFailedException; {:try_start_1b .. :try_end_1b} :catch_17
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_19
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    :try_start_1c
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_16

    goto/16 :goto_3

    :catch_16
    move-exception v4

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not close the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catch_17
    move-exception v4

    :try_start_1d
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not sync the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/SyncFailedException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    :try_start_1e
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_18

    goto/16 :goto_3

    :catch_18
    move-exception v4

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not close the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catch_19
    move-exception v4

    :try_start_1f
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not close the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    :try_start_20
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_1a

    goto/16 :goto_3

    :catch_1a
    move-exception v4

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not close the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catchall_3
    move-exception v9

    :try_start_21
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_1b

    :goto_a
    throw v9

    :catch_1b
    move-exception v4

    const-string v10, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not close the DB file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "!("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :catchall_4
    move-exception v9

    :goto_b
    if-eqz v7, :cond_b

    :try_start_22
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/FileDescriptor;->sync()V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_22
    .catch Ljava/io/SyncFailedException; {:try_start_22 .. :try_end_22} :catch_1d
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_1f
    .catchall {:try_start_22 .. :try_end_22} :catchall_5

    :try_start_23
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_1c

    :cond_b
    :goto_c
    throw v9

    :catch_1c
    move-exception v4

    const-string v10, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not close the DB file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "!("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :catch_1d
    move-exception v4

    :try_start_24
    const-string v10, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not sync the DB file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "!("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/SyncFailedException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_5

    :try_start_25
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_1e

    goto :goto_c

    :catch_1e
    move-exception v4

    const-string v10, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not close the DB file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "!("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :catch_1f
    move-exception v4

    :try_start_26
    const-string v10, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not close the DB file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "!("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_5

    :try_start_27
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_20

    goto/16 :goto_c

    :catch_20
    move-exception v4

    const-string v10, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not close the DB file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "!("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :catchall_5
    move-exception v9

    :try_start_28
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_21

    :goto_d
    throw v9

    :catch_21
    move-exception v4

    const-string v10, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not close the DB file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "!("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :catchall_6
    move-exception v9

    move-object v7, v8

    goto/16 :goto_b

    :catch_22
    move-exception v4

    move-object v7, v8

    goto/16 :goto_9

    :catch_23
    move-exception v4

    move-object v7, v8

    goto/16 :goto_7

    :catch_24
    move-exception v4

    move-object v7, v8

    goto/16 :goto_5

    :cond_c
    move-object v7, v8

    goto/16 :goto_3
.end method

.method public writeDBdataToFileOnFinishInput()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->writeDBdataToFile(B)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->writeDBdataToFile(B)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->writeDBdataToFile(B)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->writeDBdataToFile(B)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->writeDBdataToFile(B)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->writeDBdataToFile(B)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->writeDBdataToFile(B)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->writeDBdataToFile(B)V

    return-void
.end method

.method public writeWordToDLM([CIIZZ)S
    .locals 9

    const/high16 v0, 0x6b6f0000

    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getLocaleLanguage()Lcom/ime/framework/common/Language;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ime/framework/common/Language;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mIsKoreanCoreInit:Z

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    move v1, p2

    move v2, p4

    move v3, p5

    invoke-static/range {v0 .. v5}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9KDLMScanBuf([CIZZZZ)S

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    add-int/lit8 v3, p2, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p1

    move v1, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v8}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9AWDLMScanBuf([CIIIIZZZZ)S

    move-result v0

    goto :goto_0
.end method
