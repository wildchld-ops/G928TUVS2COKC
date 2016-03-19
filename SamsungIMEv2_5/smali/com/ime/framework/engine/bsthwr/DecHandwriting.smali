.class public Lcom/ime/framework/engine/bsthwr/DecHandwriting;
.super Ljava/lang/Object;
.source "DecHandwriting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ime/framework/engine/bsthwr/DecHandwriting$2;,
        Lcom/ime/framework/engine/bsthwr/DecHandwriting$hwEngineCandInfo;,
        Lcom/ime/framework/engine/bsthwr/DecHandwriting$eRecogType;
    }
.end annotation


# static fields
.field private static final HW_ENGINE_END_SIGN:I = 0xffff

.field private static final HW_ENGINE_ONE_CAND_MAX_LENGTH:I = 0x48

.field private static final HW_ENGINE_ONE_CAND_MAX_LENGTH_FOR_SINGLE_RECOG:I = 0x18

.field private static final HW_GESTURE_BACKSPACE_CODE:C = '\u0008'

.field private static final HW_GESTURE_CASESWITCH_CODE:C = '\u0002'

.field private static final HW_GESTURE_DELETE_CODE:C = '\u001e'

.field private static final HW_GESTURE_ENTER_CODE:C = '\r'

.field private static final HW_GESTURE_SPACE_CODE:C = ' '

.field private static final HW_GESTURE_TAB_CODE:C = '\t'

.field private static final HW_INVALID_CANDIDATE_CODE:C = '\uffff'

.field public static final MAX_PREV_WORD_NUM:I = 0x5

.field public static final MAX_REG_CAND_CNT:I = 0xa

.field private static final SCH_TO_TCH:I = 0x2

.field private static final TCH_TO_SCH:I = 0x1

.field public static mRecognizeObj:Ljava/lang/Object;


# instance fields
.field private DEBUG:Z

.field private TAG:Ljava/lang/String;

.field private mComposingStr:Ljava/lang/String;

.field private mEngineCandResultInfo:Lcom/ime/framework/engine/bsthwr/DecHandwriting$hwEngineCandInfo;

.field protected mHwInputData:Lcom/ime/framework/engine/bsthwr/DecHwInputData;

.field private mManager:Lcom/ime/framework/engine/bsthwr/HWManager;

.field private recgType:Lcom/ime/framework/engine/bsthwr/DecHandwriting$eRecogType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->mRecognizeObj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/ime/framework/engine/bsthwr/HWManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->mHwInputData:Lcom/ime/framework/engine/bsthwr/DecHwInputData;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->DEBUG:Z

    const-string v0, "DecHandwriting"

    iput-object v0, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->mManager:Lcom/ime/framework/engine/bsthwr/HWManager;

    new-instance v0, Lcom/ime/framework/engine/bsthwr/DecHandwriting$hwEngineCandInfo;

    invoke-direct {v0, p0}, Lcom/ime/framework/engine/bsthwr/DecHandwriting$hwEngineCandInfo;-><init>(Lcom/ime/framework/engine/bsthwr/DecHandwriting;)V

    iput-object v0, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->mEngineCandResultInfo:Lcom/ime/framework/engine/bsthwr/DecHandwriting$hwEngineCandInfo;

    return-void
.end method

.method static synthetic access$000(Lcom/ime/framework/engine/bsthwr/DecHandwriting;)Lcom/ime/framework/engine/bsthwr/DecHandwriting$eRecogType;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->recgType:Lcom/ime/framework/engine/bsthwr/DecHandwriting$eRecogType;

    return-object v0
.end method

.method static synthetic access$002(Lcom/ime/framework/engine/bsthwr/DecHandwriting;Lcom/ime/framework/engine/bsthwr/DecHandwriting$eRecogType;)Lcom/ime/framework/engine/bsthwr/DecHandwriting$eRecogType;
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->recgType:Lcom/ime/framework/engine/bsthwr/DecHandwriting$eRecogType;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ime/framework/engine/bsthwr/DecHandwriting;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ime/framework/engine/bsthwr/DecHandwriting;)I
    .locals 1

    invoke-direct {p0}, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->startRecognize()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/ime/framework/engine/bsthwr/DecHandwriting;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->DEBUG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/ime/framework/engine/bsthwr/DecHandwriting;)Lcom/ime/framework/engine/bsthwr/HWManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->mManager:Lcom/ime/framework/engine/bsthwr/HWManager;

    return-object v0
.end method

.method private getValidPredict(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const-string v4, ""

    :goto_0
    return-object v4

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private preProcessResult()Z
    .locals 8

    const/4 v7, 0x0

    const v6, 0xffff

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->mEngineCandResultInfo:Lcom/ime/framework/engine/bsthwr/DecHandwriting$hwEngineCandInfo;

    invoke-virtual {v2}, Lcom/ime/framework/engine/bsthwr/DecHandwriting$hwEngineCandInfo;->getCandResult()[C

    move-result-object v1

    const/16 v2, 0xd

    aget-char v3, v1, v4

    if-ne v2, v3, :cond_1

    aget-char v2, v1, v5

    if-ne v6, v2, :cond_1

    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->mManager:Lcom/ime/framework/engine/bsthwr/HWManager;

    const/16 v3, 0x42

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3, v7}, Lcom/ime/framework/engine/bsthwr/HWManager;->handleEvent(ILjava/lang/Object;Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0x20

    aget-char v3, v1, v4

    if-ne v2, v3, :cond_2

    aget-char v2, v1, v5

    if-ne v6, v2, :cond_2

    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->mManager:Lcom/ime/framework/engine/bsthwr/HWManager;

    const/16 v3, 0x3e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3, v7}, Lcom/ime/framework/engine/bsthwr/HWManager;->handleEvent(ILjava/lang/Object;Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    aget-char v3, v1, v4

    if-eq v2, v3, :cond_3

    const/16 v2, 0x1e

    aget-char v3, v1, v4

    if-ne v2, v3, :cond_4

    :cond_3
    aget-char v2, v1, v5

    if-ne v6, v2, :cond_4

    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->mManager:Lcom/ime/framework/engine/bsthwr/HWManager;

    const/16 v3, 0x43

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3, v7}, Lcom/ime/framework/engine/bsthwr/HWManager;->handleEvent(ILjava/lang/Object;Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    aget-char v3, v1, v4

    if-eq v2, v3, :cond_5

    const/16 v2, 0x9

    aget-char v3, v1, v4

    if-ne v2, v3, :cond_0

    :cond_5
    aget-char v2, v1, v5

    if-ne v6, v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->mManager:Lcom/ime/framework/engine/bsthwr/HWManager;

    const/16 v3, 0x3d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3, v7}, Lcom/ime/framework/engine/bsthwr/HWManager;->handleEvent(ILjava/lang/Object;Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private startRecognize()I
    .locals 14

    const/4 v11, 0x0

    sget v3, Lcom/ime/framework/engine/bsthwr/BstHwrDatatype;->HWR_TEXT_TYPE_COMMON:I

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->TAG:Ljava/lang/String;

    const-string v1, "startRecognize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->mHwInputData:Lcom/ime/framework/engine/bsthwr/DecHwInputData;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->mHwInputData:Lcom/ime/framework/engine/bsthwr/DecHwInputData;

    invoke-virtual {v0}, Lcom/ime/framework/engine/bsthwr/DecHwInputData;->getData()[I

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->mHwInputData:Lcom/ime/framework/engine/bsthwr/DecHwInputData;

    invoke-virtual {v0}, Lcom/ime/framework/engine/bsthwr/DecHwInputData;->getDataNum()S

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->TAG:Ljava/lang/String;

    const-string v1, "-----call recognize engine----"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->mEngineCandResultInfo:Lcom/ime/framework/engine/bsthwr/DecHandwriting$hwEngineCandInfo;

    invoke-virtual {v0}, Lcom/ime/framework/engine/bsthwr/DecHandwriting$hwEngineCandInfo;->reset()V

    invoke-static {}, Lcom/ime/framework/engine/bsthwr/HWManager;->getXt9HandwritingRecogMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->TAG:Ljava/lang/String;

    const-string v1, "--RECOG_CHAR-"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/ime/framework/engine/bsthwr/DecHandwriting$eRecogType;->RECOG_CHAR:Lcom/ime/framework/engine/bsthwr/DecHandwriting$eRecogType;

    iput-object v0, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->recgType:Lcom/ime/framework/engine/bsthwr/DecHandwriting$eRecogType;

    :goto_0
    iget-boolean v0, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecognize recgType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->recgType:Lcom/ime/framework/engine/bsthwr/DecHandwriting$eRecogType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v0, Lcom/ime/framework/engine/bsthwr/DecHandwriting$2;->$SwitchMap$com$ime$framework$engine$bsthwr$DecHandwriting$eRecogType:[I

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->recgType:Lcom/ime/framework/engine/bsthwr/DecHandwriting$eRecogType;

    invoke-virtual {v1}, Lcom/ime/framework/engine/bsthwr/DecHandwriting$eRecogType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    return v11

    :cond_3
    sget-object v0, Lcom/ime/framework/engine/bsthwr/DecHandwriting$eRecogType;->RECOG_TEXT:Lcom/ime/framework/engine/bsthwr/DecHandwriting$eRecogType;

    iput-object v0, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->recgType:Lcom/ime/framework/engine/bsthwr/DecHandwriting$eRecogType;

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->TAG:Ljava/lang/String;

    const-string v1, "---RECOG_TEXT-----"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getCurrentInputLanguage()Lcom/ime/framework/common/Language;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ime/framework/common/Language;->getId()I

    move-result v0

    const v1, 0x656e5553

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->mHwInputData:Lcom/ime/framework/engine/bsthwr/DecHwInputData;

    invoke-virtual {v0}, Lcom/ime/framework/engine/bsthwr/DecHwInputData;->getData()[I

    move-result-object v0

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->mHwInputData:Lcom/ime/framework/engine/bsthwr/DecHwInputData;

    invoke-virtual {v1}, Lcom/ime/framework/engine/bsthwr/DecHwInputData;->getDataNum()S

    move-result v1

    const/4 v2, 0x0

    const/16 v5, 0xa

    iget-object v6, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->mEngineCandResultInfo:Lcom/ime/framework/engine/bsthwr/DecHandwriting$hwEngineCandInfo;

    invoke-virtual {v6}, Lcom/ime/framework/engine/bsthwr/DecHandwriting$hwEngineCandInfo;->getCandResult()[C

    move-result-object v6

    iget-object v7, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->mEngineCandResultInfo:Lcom/ime/framework/engine/bsthwr/DecHandwriting$hwEngineCandInfo;

    iget-object v7, v7, Lcom/ime/framework/engine/bsthwr/DecHandwriting$hwEngineCandInfo;->PrevWordBuff:[C

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/sec/android/bsthw/recognition/BstHwr;->hwRecogText([IIIIII[C[CI)I

    move-result v11

    const/4 v12, 0x0

    :goto_2
    const/16 v0, 0xa

    if-ge v12, v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->mEngineCandResultInfo:Lcom/ime/framework/engine/bsthwr/DecHandwriting$hwEngineCandInfo;

    invoke-virtual {v0}, Lcom/ime/framework/engine/bsthwr/DecHandwriting$hwEngineCandInfo;->getCandResult()[C

    move-result-object v0

    aget-char v0, v0, v12

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v13

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---str2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->mHwInputData:Lcom/ime/framework/engine/bsthwr/DecHwInputData;

    invoke-virtual {v0}, Lcom/ime/framework/engine/bsthwr/DecHwInputData;->getData()[I

    move-result-object v5

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->mHwInputData:Lcom/ime/framework/engine/bsthwr/DecHwInputData;

    invoke-virtual {v0}, Lcom/ime/framework/engine/bsthwr/DecHwInputData;->getDataNum()S

    move-result v6

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->mEngineCandResultInfo:Lcom/ime/framework/engine/bsthwr/DecHandwriting$hwEngineCandInfo;

    invoke-virtual {v0}, Lcom/ime/framework/engine/bsthwr/DecHandwriting$hwEngineCandInfo;->getCandResult()[C

    move-result-object v7

    const/16 v8, 0xa

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->mEngineCandResultInfo:Lcom/ime/framework/engine/bsthwr/DecHandwriting$hwEngineCandInfo;

    iget-object v9, v0, Lcom/ime/framework/engine/bsthwr/DecHandwriting$hwEngineCandInfo;->PrevWordBuff:[C

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/sec/android/bsthw/recognition/BstHwr;->hwRecogChar([II[CI[CI)I

    move-result v11

    goto/16 :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->mHwInputData:Lcom/ime/framework/engine/bsthwr/DecHwInputData;

    invoke-virtual {v0}, Lcom/ime/framework/engine/bsthwr/DecHwInputData;->getData()[I

    move-result-object v0

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->mHwInputData:Lcom/ime/framework/engine/bsthwr/DecHwInputData;

    invoke-virtual {v1}, Lcom/ime/framework/engine/bsthwr/DecHwInputData;->getDataNum()S

    move-result v1

    const/4 v2, 0x0

    const/16 v5, 0xa

    iget-object v6, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->mEngineCandResultInfo:Lcom/ime/framework/engine/bsthwr/DecHandwriting$hwEngineCandInfo;

    invoke-virtual {v6}, Lcom/ime/framework/engine/bsthwr/DecHandwriting$hwEngineCandInfo;->getCandResult()[C

    move-result-object v6

    iget-object v7, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->mEngineCandResultInfo:Lcom/ime/framework/engine/bsthwr/DecHandwriting$hwEngineCandInfo;

    iget-object v7, v7, Lcom/ime/framework/engine/bsthwr/DecHandwriting$hwEngineCandInfo;->PrevWordBuff:[C

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/sec/android/bsthw/recognition/BstHwr;->hwRecogText([IIIIII[C[CI)I

    move-result v11

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->TAG:Ljava/lang/String;

    const-string v1, "---RECOG_TEXT-----hwRecogText==before--getCandResult--"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->mHwInputData:Lcom/ime/framework/engine/bsthwr/DecHwInputData;

    invoke-virtual {v0}, Lcom/ime/framework/engine/bsthwr/DecHwInputData;->getData()[I

    move-result-object v0

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->mHwInputData:Lcom/ime/framework/engine/bsthwr/DecHwInputData;

    invoke-virtual {v1}, Lcom/ime/framework/engine/bsthwr/DecHwInputData;->getDataNum()S

    move-result v1

    const/4 v2, 0x1

    const/16 v5, 0xa

    iget-object v6, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->mEngineCandResultInfo:Lcom/ime/framework/engine/bsthwr/DecHandwriting$hwEngineCandInfo;

    invoke-virtual {v6}, Lcom/ime/framework/engine/bsthwr/DecHandwriting$hwEngineCandInfo;->getCandResult()[C

    move-result-object v6

    iget-object v7, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->mEngineCandResultInfo:Lcom/ime/framework/engine/bsthwr/DecHandwriting$hwEngineCandInfo;

    iget-object v7, v7, Lcom/ime/framework/engine/bsthwr/DecHandwriting$hwEngineCandInfo;->PrevWordBuff:[C

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/sec/android/bsthw/recognition/BstHwr;->hwRecogText([IIIIII[C[CI)I

    move-result v11

    const/4 v12, 0x0

    :goto_3
    const/16 v0, 0xa

    if-ge v12, v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->mEngineCandResultInfo:Lcom/ime/framework/engine/bsthwr/DecHandwriting$hwEngineCandInfo;

    invoke-virtual {v0}, Lcom/ime/framework/engine/bsthwr/DecHandwriting$hwEngineCandInfo;->getCandResult()[C

    move-result-object v0

    aget-char v0, v0, v12

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v13

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---str2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addHwdata(Lcom/ime/framework/engine/bsthwr/DecHwInputData;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->mHwInputData:Lcom/ime/framework/engine/bsthwr/DecHwInputData;

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public decoding()I
    .locals 2

    iget-boolean v0, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->TAG:Ljava/lang/String;

    const-string v1, "-----it is hw --- decoding--------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/ime/framework/engine/bsthwr/DecHandwriting$1;

    const-string v1, "hwrRecognizedThread"

    invoke-direct {v0, p0, v1}, Lcom/ime/framework/engine/bsthwr/DecHandwriting$1;-><init>(Lcom/ime/framework/engine/bsthwr/DecHandwriting;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ime/framework/engine/bsthwr/DecHandwriting$1;->start()V

    const/4 v0, 0x6

    return v0
.end method

.method getCandidatesList()Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->mEngineCandResultInfo:Lcom/ime/framework/engine/bsthwr/DecHandwriting$hwEngineCandInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/ime/framework/engine/bsthwr/DecHandwriting$hwEngineCandInfo;->getCandResult()[C

    move-result-object v2

    invoke-static {}, Lcom/ime/framework/engine/InputEngineManagerImpl;->getInstance()Lcom/ime/framework/engine/InputEngineManager;

    move-result-object v8

    invoke-static {}, Lcom/ime/framework/engine/bsthwr/HWManager;->getHandwritingTSSwitch()I

    move-result v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v12

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v13

    if-eqz v2, :cond_3

    const/16 v17, 0x0

    aget-char v17, v2, v17

    if-eqz v17, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    :goto_0
    array-length v0, v2

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_3

    aget-char v17, v2, v9

    const/16 v18, 0x1e

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    aget-char v17, v2, v9

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    aget-char v17, v2, v9

    const/16 v18, 0xd

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    aget-char v17, v2, v9

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    :cond_0
    add-int/lit8 v9, v9, 0x1

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_6

    const/4 v11, 0x0

    :goto_2
    array-length v0, v2

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v11, v0, :cond_2

    aget-char v17, v2, v11

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v17, ", "

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    if-eqz v13, :cond_4

    if-eqz v8, :cond_4

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_4

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/CharSequence;

    move-object/from16 v0, v17

    invoke-interface {v8, v0, v15}, Lcom/ime/framework/engine/InputEngineManager;->getPredictWordForHwr(Ljava/lang/CharSequence;Ljava/util/ArrayList;)V

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_c

    const/16 v18, 0x1

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->getValidPredict(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_4
    :goto_4
    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/ime/framework/engine/bsthwr/HWManager;->isStorkeMode()Z

    move-result v17

    if-nez v17, :cond_5

    invoke-interface {v10}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    :cond_5
    return-object v14

    :cond_6
    const v17, 0xffff

    aget-char v18, v2, v9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 v9, v9, 0x1

    :cond_8
    aget-char v5, v2, v9

    if-eqz v13, :cond_9

    if-eqz v8, :cond_9

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_b

    invoke-interface {v8, v5}, Lcom/ime/framework/engine/InputEngineManager;->getSimplifiedFromTraditional(C)C

    move-result v5

    :cond_9
    :goto_5
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_a
    aget-char v17, v2, v9

    if-nez v17, :cond_8

    goto/16 :goto_3

    :cond_b
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v7, v0, :cond_9

    invoke-interface {v8, v5}, Lcom/ime/framework/engine/InputEngineManager;->getTraditionalFromSimplified(C)C

    move-result v5

    goto :goto_5

    :cond_c
    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    const/16 v18, 0x1

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->getValidPredict(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v18, 0x2

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->getValidPredict(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_4
.end method

.method public getComposingStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->mComposingStr:Ljava/lang/String;

    return-object v0
.end method

.method protected getHWCandidateResult(C)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHwData()Lcom/ime/framework/engine/bsthwr/DecHwInputData;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->mHwInputData:Lcom/ime/framework/engine/bsthwr/DecHwInputData;

    return-object v0
.end method

.method public prepareHwrCandidates(I)I
    .locals 2

    const/4 v0, 0x1

    sget v1, Lcom/ime/framework/engine/bsthwr/BstHwrDatatype;->HWRERROR_SUCCESS:I

    if-ne p1, v1, :cond_1

    invoke-direct {p0}, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->preProcessResult()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->reset()V

    const/4 v0, 0x2

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v1, Lcom/ime/framework/engine/bsthwr/BstHwrDatatype;->HWRERROR_SUCCESS:I

    if-ne p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->resetCandList()V

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->mEngineCandResultInfo:Lcom/ime/framework/engine/bsthwr/DecHandwriting$hwEngineCandInfo;

    invoke-virtual {v0}, Lcom/ime/framework/engine/bsthwr/DecHandwriting$hwEngineCandInfo;->reset()V

    return-void
.end method

.method protected resetCandList()V
    .locals 0

    return-void
.end method

.method public setComposingStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->mComposingStr:Ljava/lang/String;

    return-void
.end method
