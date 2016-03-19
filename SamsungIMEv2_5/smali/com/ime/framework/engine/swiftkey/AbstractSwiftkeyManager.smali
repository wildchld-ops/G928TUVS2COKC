.class public abstract Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;
.super Ljava/lang/Object;
.source "AbstractSwiftkeyManager.java"

# interfaces
.implements Lcom/ime/framework/engine/swiftkey/SwiftkeyManager;


# static fields
.field private static final ADD_NON_INITIAL_EXPANDED:Z = true

.field private static final ENCODING:Ljava/lang/String; = "encoding:"

.field private static final MIN_CHARS:I = 0x2

.field protected static korInitialInputLibrary:Lcom/touchtype/samsung/supportlibrary/SupportLibrary;


# instance fields
.field private final DEFAULT_SYMBOL_LAYOUT_KEY:[Ljava/lang/String;

.field private final EMOJI_CP_END_1:I

.field private final EMOJI_CP_END_2:I

.field private final EMOJI_CP_END_3:I

.field private final EMOJI_CP_END_4:I

.field private final EMOJI_CP_START_1:I

.field private final EMOJI_CP_START_2:I

.field private final EMOJI_CP_START_3:I

.field private final EMOJI_CP_START_4:I

.field private final INTENTIONAL_EVENT_SYMBOL:Ljava/lang/String;

.field private final LOOSE_WINGDINGS_WHITELIST:[I

.field private final MultiWord_Prob_Threshold:D

.field private mAdjacentErrorCorrection:Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/AdjacentErrorCorrection;

.field private mAppendVerbatimInSequence:Z

.field protected mBackupPredictions:Lcom/touchtype_fluency/Predictions;

.field private mCachedSequence:Lcom/touchtype_fluency/Sequence;

.field private mCachedTouchHistory:Lcom/touchtype_fluency/TouchHistory;

.field protected mCandidateWordNumber:I

.field protected mCapitalization:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

.field protected mCharacterMapHelper:Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;

.field protected mContactSpecificID:Ljava/lang/String;

.field protected mCurrentKeyPressModelName:Ljava/lang/String;

.field private final mDLMLocker:Ljava/lang/Object;

.field private mDefaultExclusionPattern:Ljava/util/regex/Pattern;

.field protected mDiableTempDynamicModel:Z

.field protected mDirtyDynamicModel:Z

.field protected mDirtyKeyPressModel:Z

.field protected mDirtyTempDynamicModel:Z

.field private final mEmojiCP:[[I

.field private mEmojiCprList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/touchtype_fluency/CodepointRange;",
            ">;"
        }
    .end annotation
.end field

.field private mEmojiPredictions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/touchtype_fluency/Prediction;",
            ">;"
        }
    .end annotation
.end field

.field private mEmojiSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mEnableContactSpecificContext:Z

.field private mExclusionPattern:Ljava/util/regex/Pattern;

.field protected mFieldSpecificType:I

.field protected mInputBuffer:Ljava/lang/StringBuilder;

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field protected mIntentionalEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAddDefaultSymbol:Z

.field protected mIsAlreadyAddTouchHistory:Z

.field private mIsEmojiEnabled:Z

.field private mIsMergeRemoveList:Z

.field private mIsPreviewFlow:Z

.field private final mKPMLocker:Ljava/lang/Object;

.field protected mKeyPressModelDir:Ljava/lang/String;

.field private mLayoutKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxTimeofPrewivewFlowPause:J

.field private final mMinTimeofPrewivewFlowPause:J

.field private mMultiWordPredictionBufLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/touchtype_fluency/Prediction;",
            ">;"
        }
    .end annotation
.end field

.field mNoEmojiTagSelector:Lcom/touchtype_fluency/TagSelector;

.field protected mPredictions:Lcom/touchtype_fluency/Predictions;

.field protected mPredictor:Lcom/touchtype_fluency/Predictor;

.field private mPreviewFlowPredictions:Lcom/touchtype_fluency/Predictions;

.field private mPreviewFlowTouchPointIndex:I

.field private mPreviewSequence:Lcom/touchtype_fluency/Sequence;

.field protected mReady:Z

.field protected mReservePredictions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mSequnceType:Lcom/touchtype_fluency/Sequence$Type;

.field protected mShiftState:Lcom/touchtype_fluency/TouchHistory$ShiftState;

.field protected mSkipLearningTerm:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mSwiftKeySession:Lcom/touchtype_fluency/Session;

.field protected mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

.field protected mSwiftKeyVersion:Lcom/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

.field private mTime:J

.field protected mTokenizer:Lcom/touchtype_fluency/Tokenizer;

.field protected mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

.field private mTouchHistoryRepository:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/touchtype_fluency/TouchHistory;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTrainedSequence:Lcom/touchtype_fluency/Sequence;

.field protected mTrainer:Lcom/touchtype_fluency/Trainer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/touchtype/samsung/supportlibrary/SupportLibrary;->getInstance(Lcom/touchtype_fluency/LoggingListener;)Lcom/touchtype/samsung/supportlibrary/SupportLibrary;

    move-result-object v0

    sput-object v0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->korInitialInputLibrary:Lcom/touchtype/samsung/supportlibrary/SupportLibrary;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->SWIFTKEY_VERSION_NONE:Lcom/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyVersion:Lcom/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    sget-object v0, Lcom/touchtype_fluency/Sequence$Type;->MESSAGE_START:Lcom/touchtype_fluency/Sequence$Type;

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSequnceType:Lcom/touchtype_fluency/Sequence$Type;

    new-instance v0, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v0}, Lcom/touchtype_fluency/TouchHistory;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mReservePredictions:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistoryRepository:Ljava/util/LinkedList;

    sget-object v0, Lcom/touchtype_fluency/TouchHistory$ShiftState;->UNSHIFTED:Lcom/touchtype_fluency/TouchHistory$ShiftState;

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mShiftState:Lcom/touchtype_fluency/TouchHistory$ShiftState;

    sget-object v0, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;->LOWER_CASE:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCapitalization:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mMultiWordPredictionBufLists:Ljava/util/ArrayList;

    iput v3, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mFieldSpecificType:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIntentionalEvents:Ljava/util/Set;

    const-string v0, "_-\'&"

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->INTENTIONAL_EVENT_SYMBOL:Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "."

    aput-object v1, v0, v3

    const-string v1, ","

    aput-object v1, v0, v4

    const-string v1, "?"

    aput-object v1, v0, v2

    const-string v1, "!"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->DEFAULT_SYMBOL_LAYOUT_KEY:[Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDLMLocker:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mKPMLocker:Ljava/lang/Object;

    const-string v0, "\\d{4,}"

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mExclusionPattern:Ljava/util/regex/Pattern;

    const-string v0, "\\d{4,7}"

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDefaultExclusionPattern:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSkipLearningTerm:Ljava/util/ArrayList;

    new-instance v0, Lcom/touchtype_fluency/Sequence;

    invoke-direct {v0}, Lcom/touchtype_fluency/Sequence;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainedSequence:Lcom/touchtype_fluency/Sequence;

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mMaxTimeofPrewivewFlowPause:J

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mMinTimeofPrewivewFlowPause:J

    const v0, 0x1f300

    iput v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->EMOJI_CP_START_1:I

    const v0, 0x1f5ff

    iput v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->EMOJI_CP_END_1:I

    const v0, 0x1f600

    iput v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->EMOJI_CP_START_2:I

    const v0, 0x1f64f

    iput v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->EMOJI_CP_END_2:I

    const v0, 0x1f680

    iput v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->EMOJI_CP_START_3:I

    const v0, 0x1f6ff

    iput v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->EMOJI_CP_END_3:I

    const/16 v0, 0x2600

    iput v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->EMOJI_CP_START_4:I

    const/16 v0, 0x26ff

    iput v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->EMOJI_CP_END_4:I

    new-array v0, v6, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v2

    new-array v1, v2, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mEmojiCP:[[I

    const/16 v0, 0x69

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->LOOSE_WINGDINGS_WHITELIST:[I

    const-wide v0, 0x3fc70a3d70a3d70aL    # 0.18

    iput-wide v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->MultiWord_Prob_Threshold:D

    new-instance v0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$1;

    invoke-direct {v0, p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$1;-><init>(Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;)V

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mNoEmojiTagSelector:Lcom/touchtype_fluency/TagSelector;

    return-void

    :array_0
    .array-data 4
        0x1f300
        0x1f5ff
    .end array-data

    :array_1
    .array-data 4
        0x1f600
        0x1f64f
    .end array-data

    :array_2
    .array-data 4
        0x1f680
        0x1f6ff
    .end array-data

    :array_3
    .array-data 4
        0x2600
        0x26ff
    .end array-data

    :array_4
    .array-data 4
        0x2764
        0x270a
        0x270c
        0x270b
        0x231a
        0x2709
        0x2712
        0x270f
        0x2702
        0x1f0cf
        0x1f004
        0x303d
        0x2744
        0x24c2
        0x2708
        0x1f17f
        0x23f3
        0x231b
        0x23f0
        0x1f170
        0x1f171
        0x1f18e
        0x1f17e
        0x27bf
        0x1f201
        0x1f192
        0x1f197
        0x1f195
        0x1f198
        0x1f199
        0x1f193
        0x1f196
        0x1f19a
        0x1f232
        0x1f233
        0x1f234
        0x1f235
        0x1f236
        0x1f237
        0x1f238
        0x1f239
        0x1f202
        0x1f23a
        0x1f250
        0x1f251
        0x3299
        0xae
        0xa9
        0x2122
        0x1f21a
        0x1f22f
        0x3297
        0x2b55
        0x274c
        0x274e
        0x2139
        0x2705
        0x2714
        0x2734
        0x2733
        0x2795
        0x2796
        0x2716
        0x2797
        0x2195
        0x2b06
        0x2197
        0x27a1
        0x2198
        0x2b07
        0x2199
        0x2b05
        0x2196
        0x2194
        0x2934
        0x2935
        0x23ea
        0x23eb
        0x23ec
        0x23e9
        0x25c0
        0x25b6
        0x2747
        0x2728
        0x2b50
        0x25ab
        0x25aa
        0x25fd
        0x25fe
        0x25fb
        0x25fc
        0x2b1c
        0x2b1b
        0x2754
        0x2753
        0x2755
        0x2757
        0x203c
        0x2049
        0x3030
        0x27b0
        0x1f194
        0x21a9
        0x1f191
        0x21aa
    .end array-data
.end method

.method static synthetic access$000(Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDLMLocker:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->loadOrUnloadAutoTextModelByThread(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;Lcom/touchtype_fluency/TagSelector;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->enableAllModelByThread(Lcom/touchtype_fluency/TagSelector;)V

    return-void
.end method

.method private declared-synchronized addDefaultSymbolLayoutKey()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mLayoutKeys:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIsAddDefaultSymbol:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mLayoutKeys:Ljava/util/Set;

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->DEFAULT_SYMBOL_LAYOUT_KEY:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mLayoutKeys:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->isEmojiLMLoaded()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setLayoutFilter(Ljava/util/HashSet;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIsAddDefaultSymbol:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private addEmojiToLayoutFilter()V
    .locals 8

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mEmojiCprList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mEmojiCprList:Ljava/util/ArrayList;

    new-instance v5, Lcom/touchtype_fluency/CodepointRange;

    const v6, 0x1f300

    const v7, 0x1f5ff

    invoke-direct {v5, v6, v7}, Lcom/touchtype_fluency/CodepointRange;-><init>(II)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mEmojiCprList:Ljava/util/ArrayList;

    new-instance v5, Lcom/touchtype_fluency/CodepointRange;

    const v6, 0x1f600

    const v7, 0x1f64f

    invoke-direct {v5, v6, v7}, Lcom/touchtype_fluency/CodepointRange;-><init>(II)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mEmojiCprList:Ljava/util/ArrayList;

    new-instance v5, Lcom/touchtype_fluency/CodepointRange;

    const v6, 0x1f680

    const v7, 0x1f6ff

    invoke-direct {v5, v6, v7}, Lcom/touchtype_fluency/CodepointRange;-><init>(II)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mEmojiCprList:Ljava/util/ArrayList;

    new-instance v5, Lcom/touchtype_fluency/CodepointRange;

    const/16 v6, 0x2600

    const/16 v7, 0x26ff

    invoke-direct {v5, v6, v7}, Lcom/touchtype_fluency/CodepointRange;-><init>(II)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->LOOSE_WINGDINGS_WHITELIST:[I

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    iget-object v4, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mEmojiCprList:Ljava/util/ArrayList;

    new-instance v5, Lcom/touchtype_fluency/CodepointRange;

    invoke-direct {v5, v1, v1}, Lcom/touchtype_fluency/CodepointRange;-><init>(II)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private buildCorrectiosInternal(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Sequence;I)Lcom/touchtype_fluency/Predictions;
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setContactSpecificSequence(Lcom/touchtype_fluency/Sequence;Z)Z

    invoke-virtual {p0, p1}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setFieldSpecificSequence(Lcom/touchtype_fluency/Sequence;)V

    invoke-virtual {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->isEmojiPredictionEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 p4, 0x19

    :goto_0
    const-string v1, "input-model"

    const-string v2, "allow-wildcards-at-start"

    invoke-virtual {p0, v1, v2, v3}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setParameter(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    invoke-direct {p0, p4}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getResultsFilterForCorrection(I)Lcom/touchtype_fluency/ResultsFilter;

    move-result-object v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/touchtype_fluency/Predictor;->getCorrections(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/ResultsFilter;)Lcom/touchtype_fluency/Predictions;

    move-result-object v0

    const-string v1, "input-model"

    const-string v2, "allow-wildcards-at-start"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setParameter(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/touchtype_fluency/Sequence;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/touchtype_fluency/Predictions;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->DEFAULT_SYMBOL_LAYOUT_KEY:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getFilterPredictions(Lcom/touchtype_fluency/Predictions;[Ljava/lang/String;)Lcom/touchtype_fluency/Predictions;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->isEmojiPredictionEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->isEmojiLMLoaded()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getModifiedPrediction(Lcom/touchtype_fluency/Predictions;I)Lcom/touchtype_fluency/Predictions;

    move-result-object v0

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    const/16 p4, 0xf

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getEmojiRemovedPrediction(Lcom/touchtype_fluency/Predictions;)Lcom/touchtype_fluency/Predictions;

    move-result-object v0

    goto :goto_1
.end method

.method private buildPredictionListener(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;I)V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {p0, p3}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getResultsFilter(I)Lcom/touchtype_fluency/ResultsFilter;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->getPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/ResultsFilter;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private convertPredictions(Ljava/util/ArrayList;)Lcom/touchtype_fluency/Predictions;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/touchtype_fluency/Prediction;",
            ">;)",
            "Lcom/touchtype_fluency/Predictions;"
        }
    .end annotation

    const/4 v5, 0x1

    :try_start_0
    new-array v4, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/util/List;

    aput-object v6, v4, v5

    const-class v5, Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v0, v5

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/touchtype_fluency/Predictions;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v3

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private displayLogForInitialOnly(JLcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;)V
    .locals 9

    sget-boolean v3, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPredictions time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, p1

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preSequence: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Lcom/touchtype_fluency/Sequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "touchHistory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p4}, Lcom/touchtype_fluency/TouchHistory;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SwiftKeySDK version : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/touchtype_fluency/SwiftKeySDK;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "korInitialInputLibrary version : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/touchtype/samsung/supportlibrary/SupportLibrary;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Filtered prediction list : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v5}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v3}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v3, v0}, Lcom/touchtype_fluency/Predictions;->get(I)Lcom/touchtype_fluency/Prediction;

    move-result-object v2

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/touchtype_fluency/Prediction;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/touchtype_fluency/Prediction;->getTags()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private enableAllModelByThread(Lcom/touchtype_fluency/TagSelector;)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/touchtype_fluency/Session;->enableModels(Lcom/touchtype_fluency/TagSelector;)V

    :cond_0
    return-void
.end method

.method private filteringEmojiPrediction(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/touchtype_fluency/Prediction;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/touchtype_fluency/Prediction;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mEmojiPredictions:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mEmojiPredictions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/touchtype_fluency/Prediction;

    invoke-virtual {v2}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->isContainEmoji(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mEmojiPredictions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x9

    if-le v2, v3, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mEmojiPredictions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_3

    iget-object v2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mEmojiPredictions:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mEmojiPredictions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    return-object v1
.end method

.method private getEmojiRemovedPrediction(Lcom/touchtype_fluency/Predictions;)Lcom/touchtype_fluency/Predictions;
    .locals 5

    const/16 v4, 0x9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/touchtype_fluency/Predictions;->get(I)Lcom/touchtype_fluency/Prediction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/touchtype_fluency/Prediction;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->isContainEmoji(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v4, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->convertPredictions(Ljava/util/ArrayList;)Lcom/touchtype_fluency/Predictions;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/touchtype_fluency/Prediction;

    invoke-virtual {v2}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->isContainEmoji(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v4, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    invoke-direct {p0, v1}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->convertPredictions(Ljava/util/ArrayList;)Lcom/touchtype_fluency/Predictions;

    move-result-object v2

    goto :goto_1
.end method

.method private getFieldSpecificID(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "RECIPIENT"

    goto :goto_0

    :pswitch_1
    const-string v0, "EMAIL"

    goto :goto_0

    :pswitch_2
    const-string v0, "URL"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getFilterPredictions(Lcom/touchtype_fluency/Predictions;[Ljava/lang/String;)Lcom/touchtype_fluency/Predictions;
    .locals 10

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/touchtype_fluency/Prediction;

    invoke-virtual {v3}, Lcom/touchtype_fluency/Prediction;->getTags()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v9, "encoding:"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "encoding:"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0, v8}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->convertPredictions(Ljava/util/ArrayList;)Lcom/touchtype_fluency/Predictions;

    move-result-object v9

    return-object v9
.end method

.method private getFilteredFieldSpecificPredictions(Lcom/touchtype_fluency/Predictions;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/Predictions;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/touchtype_fluency/Prediction;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/touchtype_fluency/Prediction;

    invoke-virtual {v6}, Lcom/touchtype_fluency/Prediction;->getTags()Ljava/util/Set;

    move-result-object v8

    const/4 v0, 0x0

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v9, "source"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "dynamic.lm"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v0, 0x1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-nez v0, :cond_0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v9, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$6;

    invoke-direct {v9, p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$6;-><init>(Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;)V

    invoke-static {v1, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_1
    return-object v1

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getModifiedPrediction(Lcom/touchtype_fluency/Predictions;I)Lcom/touchtype_fluency/Predictions;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0, p2}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->filteringEmojiPrediction(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->reorderingEmojiPrediction(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->convertPredictions(Ljava/util/ArrayList;)Lcom/touchtype_fluency/Predictions;

    move-result-object p1

    return-object p1
.end method

.method private getResultsFilterForCorrection(I)Lcom/touchtype_fluency/ResultsFilter;
    .locals 7

    new-instance v0, Lcom/touchtype_fluency/ResultsFilter;

    iget-object v2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCapitalization:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    sget-object v3, Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;->ENABLED:Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;

    sget-object v4, Lcom/touchtype_fluency/ResultsFilter$PredictionMode;->RETROSPECTIVE_CORRECT:Lcom/touchtype_fluency/ResultsFilter$PredictionMode;

    sget-object v5, Lcom/touchtype_fluency/ResultsFilter$CorrectionMode;->AGGRESSIVE:Lcom/touchtype_fluency/ResultsFilter$CorrectionMode;

    sget-object v6, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;->NORMAL:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/touchtype_fluency/ResultsFilter;-><init>(ILcom/touchtype_fluency/ResultsFilter$CapitalizationHint;Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;Lcom/touchtype_fluency/ResultsFilter$PredictionMode;Lcom/touchtype_fluency/ResultsFilter$CorrectionMode;Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;)V

    return-object v0
.end method

.method private initEmojiSet()V
    .locals 8

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mEmojiSet:Ljava/util/Set;

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mEmojiCP:[[I

    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    const/4 v5, 0x0

    aget v2, v0, v5

    :goto_1
    const/4 v5, 0x1

    aget v5, v0, v5

    if-ge v2, v5, :cond_0

    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mEmojiSet:Ljava/util/Set;

    new-instance v6, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->LOOSE_WINGDINGS_WHITELIST:[I

    array-length v4, v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_2

    aget v2, v1, v3

    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mEmojiSet:Ljava/util/Set;

    new-instance v6, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private isContainEmoji(Ljava/lang/String;)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    add-int/lit8 v0, v4, -0x1

    :goto_0
    if-ltz v0, :cond_0

    aget-object v4, v1, v0

    invoke-direct {p0, v4}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->isContainEmoji(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    :cond_0
    :goto_1
    return v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mEmojiSet:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {p1}, Lcom/ime/framework/util/Utils;->isEmojiCharacter(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method private isEnableContactSpecificContext(Lcom/touchtype_fluency/Sequence;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mEnableContactSpecificContext:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mContactSpecificID:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/touchtype_fluency/Sequence;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSupportRestrictedIndianLanguage()Z
    .locals 3

    new-instance v1, Lcom/sec/android/inputmethod/ConfigFeature;

    invoke-direct {v1}, Lcom/sec/android/inputmethod/ConfigFeature;-><init>()V

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/ConfigFeature;->getRegion()Ljava/lang/String;

    move-result-object v0

    const-string v2, "USA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private learnStringWithExclusionPattern(Ljava/lang/String;)Z
    .locals 4

    sget-object v1, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mExclusionPattern:Ljava/util/regex/Pattern;

    const-string v2, "[^0-9]"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method private loadOrUnloadAutoTextModelByThread(Ljava/lang/String;Z)V
    .locals 3

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v1

    invoke-static {p1}, Lcom/touchtype_fluency/ModelSetDescription;->fromFile(Ljava/lang/String;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/touchtype_fluency/Session;->unload(Lcom/touchtype_fluency/ModelSetDescription;)V

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v1

    invoke-static {p1}, Lcom/touchtype_fluency/ModelSetDescription;->fromFile(Ljava/lang/String;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/touchtype_fluency/Session;->load(Lcom/touchtype_fluency/ModelSetDescription;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v1

    invoke-static {p1}, Lcom/touchtype_fluency/ModelSetDescription;->fromFile(Ljava/lang/String;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/touchtype_fluency/Session;->unload(Lcom/touchtype_fluency/ModelSetDescription;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private mergeRemoveDB()V
    .locals 7

    invoke-virtual {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mergedAddWordList()V

    const-string v4, "SamsungIME_SYNC"

    const-string v5, "mergeRemoveDB()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIsMergeRemoveList:Z

    new-instance v1, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;

    iget-object v4, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->MergeRemoveList()V

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->getAllWords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/inputmethod/databases/BnSRemoveWord;

    const-string v4, "SamsungIME_SYNC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeTerm DB list word: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/databases/BnSRemoveWord;->getWord()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/databases/BnSRemoveWord;->getWord()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->dynamicModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/touchtype_fluency/Predictor;->queryTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/databases/BnSRemoveWord;->getWord()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->dynamicModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/touchtype_fluency/Trainer;->removeTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/databases/BnSRemoveWord;->getWord()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->toInitialCaps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->dynamicModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/touchtype_fluency/Predictor;->queryTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/databases/BnSRemoveWord;->getWord()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->toInitialCaps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->dynamicModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/touchtype_fluency/Trainer;->removeTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/databases/BnSRemoveWord;->getWord()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->dynamicModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/touchtype_fluency/Predictor;->queryTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/databases/BnSRemoveWord;->getWord()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->dynamicModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/touchtype_fluency/Trainer;->removeTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->close()V

    return-void
.end method

.method private parseSwiftKeyVersion()V
    .locals 7

    const/4 v6, 0x1

    invoke-static {}, Lcom/touchtype_fluency/SwiftKeySDK;->getVersion()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\."

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->SWIFTKEY_VERSION_1_3:Lcom/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    iput-object v4, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyVersion:Lcom/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    array-length v4, v2

    const/4 v5, 0x2

    if-le v4, v5, :cond_0

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    aget-object v4, v2, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v6, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    sget-object v4, Lcom/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->SWIFTKEY_VERSION_1_4:Lcom/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    iput-object v4, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyVersion:Lcom/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v6, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    sget-object v4, Lcom/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->SWIFTKEY_VERSION_1_3:Lcom/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    iput-object v4, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyVersion:Lcom/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v6, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    sget-object v4, Lcom/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->SWIFTKEY_VERSION_1_5:Lcom/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    iput-object v4, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyVersion:Lcom/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v6, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_0

    sget-object v4, Lcom/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->SWIFTKEY_VERSION_1_6:Lcom/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    iput-object v4, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyVersion:Lcom/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    goto :goto_0
.end method

.method private processPreviewFlow(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;I)V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPreviewSequence:Lcom/touchtype_fluency/Sequence;

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {p0, v0, v1, p3}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->buildPredictionListener(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;I)V

    return-void
.end method

.method private declared-synchronized removeDefaultSymbolLayoutKey()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mLayoutKeys:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIsAddDefaultSymbol:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mLayoutKeys:Ljava/util/Set;

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->DEFAULT_SYMBOL_LAYOUT_KEY:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mLayoutKeys:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->isEmojiLMLoaded()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setLayoutFilter(Ljava/util/HashSet;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIsAddDefaultSymbol:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private reorderingEmojiPrediction(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/touchtype_fluency/Prediction;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/touchtype_fluency/Prediction;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mEmojiPredictions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mEmojiPredictions:Ljava/util/ArrayList;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mEmojiPredictions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    move-object v0, p1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mEmojiPredictions:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mEmojiPredictions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_4

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mEmojiPredictions:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x9

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mEmojiPredictions:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mEmojiPredictions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_4

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mEmojiPredictions:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private replacementMergedDLM()V
    .locals 13

    const/4 v11, 0x0

    const-string v9, "SamsungIME_SYNC"

    const-string v10, "replacementMergedDLM"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "SyncMerged"

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v9, v1

    if-lez v9, :cond_1

    const/4 v2, 0x0

    invoke-static {}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v7

    :try_start_0
    invoke-virtual {v7}, Lcom/touchtype_fluency/util/LanguagePackManager;->getDynamicModel()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/String;

    sget-object v12, Lcom/touchtype_fluency/ModelSetDescription$Type;->PRIMARY_DYNAMIC_MODEL:Lcom/touchtype_fluency/ModelSetDescription$Type;

    invoke-static {v9, v10, v11, v12}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicWithFile(Ljava/lang/String;I[Ljava/lang/String;Lcom/touchtype_fluency/ModelSetDescription$Type;)Lcom/touchtype_fluency/ModelSetDescription;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :goto_0
    iget-object v9, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    invoke-interface {v9, v2}, Lcom/touchtype_fluency/Session;->unload(Lcom/touchtype_fluency/ModelSetDescription;)V

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v6, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_0

    aget-object v4, v0, v5

    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/touchtype_fluency/util/LanguagePackManager;->getDynamicModel()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    const-string v9, "SamsungIME_SYNC"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Replacement Merged LM data:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v7}, Lcom/touchtype_fluency/util/LanguagePackManager;->getDynamicModel()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/String;

    sget-object v12, Lcom/touchtype_fluency/ModelSetDescription$Type;->PRIMARY_DYNAMIC_MODEL:Lcom/touchtype_fluency/ModelSetDescription$Type;

    invoke-static {v9, v10, v11, v12}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicWithFile(Ljava/lang/String;I[Ljava/lang/String;Lcom/touchtype_fluency/ModelSetDescription$Type;)Lcom/touchtype_fluency/ModelSetDescription;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    :goto_2
    :try_start_2
    iget-object v9, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    invoke-interface {v9, v2}, Lcom/touchtype_fluency/Session;->load(Lcom/touchtype_fluency/ModelSetDescription;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIsMergeRemoveList:Z

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :goto_4
    return-void

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_4
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :cond_1
    invoke-virtual {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mergedAddWordList()V

    goto :goto_4
.end method

.method private verifyFieldSpecificFormat(Ljava/lang/String;I)Z
    .locals 1

    packed-switch p2, :pswitch_data_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_0
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0

    :pswitch_1
    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected SafeGetInSequence(Lcom/touchtype_fluency/Sequence;I)Ljava/lang/String;
    .locals 4

    const-string v1, ""

    :try_start_0
    invoke-virtual {p1, p2}, Lcom/touchtype_fluency/Sequence;->get(I)Lcom/touchtype_fluency/Term;

    move-result-object v2

    invoke-virtual {v2}, Lcom/touchtype_fluency/Term;->getTerm()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    instance-of v2, v0, Ljava/lang/IndexOutOfBoundsException;

    if-eqz v2, :cond_0

    const-string v2, "SamsungIME"

    const-string v3, "Sequence.get(index).getTerm(); IndexOutOfBoundsException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v2, "SamsungIME"

    const-string v3, "Unknown exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected SafeSequenceRemove(Lcom/touchtype_fluency/Sequence;I)Ljava/lang/String;
    .locals 4

    new-instance v1, Lcom/touchtype_fluency/Term;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/touchtype_fluency/Term;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1, p2}, Lcom/touchtype_fluency/Sequence;->remove(I)Lcom/touchtype_fluency/Term;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Lcom/touchtype_fluency/Term;->getTerm()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    instance-of v2, v0, Ljava/lang/IndexOutOfBoundsException;

    if-eqz v2, :cond_0

    const-string v2, "SamsungIME"

    const-string v3, "Sequence.remove() IndexOutOfBoundsException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v2, "SamsungIME"

    const-string v3, "Unknown exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addCPPhrase(ILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public addCPSpell(I)V
    .locals 0

    return-void
.end method

.method public addString(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v3}, Lcom/touchtype_fluency/TouchHistory;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\'"

    invoke-direct {v2, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/ime/framework/util/Utils;->isKoreanLetter(C)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/touchtype_fluency/TouchHistory;->addCharacter(Ljava/lang/Character;)V

    iget-object v3, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    return-void

    :cond_2
    new-instance v3, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v3, p1}, Lcom/touchtype_fluency/TouchHistory;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    iget-object v3, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v3, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v3, p1}, Lcom/touchtype_fluency/TouchHistory;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    iget-object v3, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v3, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public addTouchHistory(Ljava/lang/Character;)V
    .locals 2

    iget-boolean v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIsAlreadyAddTouchHistory:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    if-nez v0, :cond_0

    new-instance v0, Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {p1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/touchtype_fluency/TouchHistory;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    :goto_0
    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v0, p1}, Lcom/touchtype_fluency/TouchHistory;->addCharacter(Ljava/lang/Character;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIsAlreadyAddTouchHistory:Z

    goto :goto_1
.end method

.method public addTouchPoint(ILandroid/graphics/PointF;)V
    .locals 3

    if-eqz p2, :cond_0

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/touchtype_fluency/Point;

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, v2}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    iget-object v2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mShiftState:Lcom/touchtype_fluency/TouchHistory$ShiftState;

    invoke-virtual {v1, v0, v2}, Lcom/touchtype_fluency/TouchHistory;->addPress(Lcom/touchtype_fluency/Point;Lcom/touchtype_fluency/TouchHistory$ShiftState;)V

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    int-to-char v2, p1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/touchtype_fluency/TouchHistory;->addCharacter(Ljava/lang/Character;)V

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public buildMultiWordPredictions(Ljava/util/ArrayList;Lcom/touchtype_fluency/Sequence;I)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/touchtype_fluency/Prediction;",
            ">;",
            "Lcom/touchtype_fluency/Sequence;",
            "I)V"
        }
    .end annotation

    new-instance v19, Lcom/touchtype_fluency/TouchHistory;

    const-string v20, ""

    invoke-direct/range {v19 .. v20}, Lcom/touchtype_fluency/TouchHistory;-><init>(Ljava/lang/String;)V

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/touchtype_fluency/Prediction;

    invoke-virtual {v5}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/Sequence;->append(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getResultsFilter(I)Lcom/touchtype_fluency/ResultsFilter;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    move-object/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Lcom/touchtype_fluency/Predictor;->getPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/ResultsFilter;)Lcom/touchtype_fluency/Predictions;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v20

    if-lez v20, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/Sequence;->remove(I)Lcom/touchtype_fluency/Term;

    :cond_0
    invoke-virtual {v15}, Lcom/touchtype_fluency/Predictions;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_3

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/touchtype_fluency/Predictions;->get(I)Lcom/touchtype_fluency/Prediction;

    move-result-object v14

    const/4 v9, 0x0

    invoke-virtual {v14}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v4

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v18, Landroid/util/ArraySet;

    invoke-direct/range {v18 .. v18}, Landroid/util/ArraySet;-><init>()V

    new-instance v16, Lcom/touchtype_fluency/Prediction;

    const-wide/16 v20, 0x0

    move-object/from16 v0, v16

    move-wide/from16 v1, v20

    move-object/from16 v3, v18

    invoke-direct {v0, v10, v1, v2, v3}, Lcom/touchtype_fluency/Prediction;-><init>(Ljava/lang/String;DLjava/util/Set;)V

    invoke-virtual {v5}, Lcom/touchtype_fluency/Prediction;->getProbability()D

    move-result-wide v20

    invoke-virtual {v14}, Lcom/touchtype_fluency/Prediction;->getProbability()D

    move-result-wide v22

    mul-double v12, v20, v22

    const/4 v8, 0x0

    invoke-virtual {v5}, Lcom/touchtype_fluency/Prediction;->getTags()Ljava/util/Set;

    move-result-object v20

    const-string v21, "keypress-corrected"

    invoke-interface/range {v20 .. v21}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v14}, Lcom/touchtype_fluency/Prediction;->getProbability()D

    move-result-wide v20

    const-wide v22, 0x3fc70a3d70a3d70aL    # 0.18

    cmpl-double v20, v20, v22

    if-lez v20, :cond_3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_3

    if-nez v8, :cond_3

    const/4 v6, 0x1

    :goto_0
    const/16 v20, 0x3

    move/from16 v0, v20

    if-ge v6, v0, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/touchtype_fluency/Prediction;

    invoke-virtual/range {v20 .. v20}, Lcom/touchtype_fluency/Prediction;->getProbability()D

    move-result-wide v20

    cmpl-double v20, v12, v20

    if-lez v20, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/touchtype_fluency/Prediction;

    invoke-virtual/range {v17 .. v17}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    const/4 v9, 0x1

    :cond_2
    if-nez v9, :cond_3

    const/16 v20, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-interface/range {v20 .. v21}, Lcom/ime/framework/common/InputManager;->setMultiWordAdded(Z)V

    :cond_3
    return-void

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public buildPredictionListener(Lcom/touchtype_fluency/Sequence;)V
    .locals 3

    invoke-virtual {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->clearReservePredictions()V

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    iget v2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCandidateWordNumber:I

    invoke-virtual {p0, v2}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getResultsFilter(I)Lcom/touchtype_fluency/ResultsFilter;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/touchtype_fluency/util/SwiftKeySession;->getPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/ResultsFilter;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public buildPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/Sequence;I)Lcom/touchtype_fluency/Predictions;
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    iget-object v4, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mReservePredictions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    if-ge p3, v8, :cond_0

    iget p3, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCandidateWordNumber:I

    :cond_0
    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5, v6}, Lcom/ime/framework/common/InputManager;->setMultiWordAdded(Z)V

    invoke-virtual {p1}, Lcom/touchtype_fluency/Sequence;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    if-nez p2, :cond_7

    :cond_1
    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCachedSequence:Lcom/touchtype_fluency/Sequence;

    invoke-virtual {p1, v5}, Lcom/touchtype_fluency/Sequence;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCachedTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v4, v5}, Lcom/touchtype_fluency/TouchHistory;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    :goto_0
    return-object v5

    :cond_2
    new-instance v0, Lcom/touchtype_fluency/Sequence;

    invoke-direct {v0}, Lcom/touchtype_fluency/Sequence;-><init>()V

    invoke-virtual {p1}, Lcom/touchtype_fluency/Sequence;->getType()Lcom/touchtype_fluency/Sequence$Type;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/touchtype_fluency/Sequence;->setType(Lcom/touchtype_fluency/Sequence$Type;)V

    invoke-virtual {p1}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {p1}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v5

    invoke-virtual {p1, v6, v5}, Lcom/touchtype_fluency/Sequence;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/touchtype_fluency/Sequence;->addAll(Ljava/util/Collection;)Z

    :cond_3
    new-instance v1, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v1}, Lcom/touchtype_fluency/TouchHistory;-><init>()V

    invoke-virtual {v1, v4}, Lcom/touchtype_fluency/TouchHistory;->appendHistory(Lcom/touchtype_fluency/TouchHistory;)V

    invoke-virtual {p0, v0, v1}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setCacheSequenceAndTouchHistory(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->korInitialInputLibrary:Lcom/touchtype/samsung/supportlibrary/SupportLibrary;

    invoke-virtual {v5, v2, v7}, Lcom/touchtype/samsung/supportlibrary/SupportLibrary;->isKoreanInitialOnly(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCharacterMapHelper:Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;

    invoke-virtual {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v6

    invoke-interface {v6}, Lcom/touchtype_fluency/Predictor;->getInputMapper()Lcom/touchtype_fluency/InputMapper;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->enableKorInitialInput(Lcom/touchtype_fluency/InputMapper;)V

    :goto_1
    invoke-virtual {p0, p1, v4, p3}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->buildPredictionsInternal(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;I)Lcom/touchtype_fluency/Predictions;

    move-result-object v5

    iput-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    if-eqz v3, :cond_4

    sget-object v5, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->korInitialInputLibrary:Lcom/touchtype/samsung/supportlibrary/SupportLibrary;

    iget-object v6, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v5, v6, v2, v3, v8}, Lcom/touchtype/samsung/supportlibrary/SupportLibrary;->reorderPredictions(Lcom/touchtype_fluency/Predictions;Ljava/lang/String;ZZ)Lcom/touchtype_fluency/Predictions;

    move-result-object v5

    iput-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v5}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v5

    if-lez v5, :cond_4

    invoke-virtual {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->isEmojiPredictionEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->isEmojiLMLoaded()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-direct {p0, v5, v7}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getModifiedPrediction(Lcom/touchtype_fluency/Predictions;I)Lcom/touchtype_fluency/Predictions;

    move-result-object v5

    iput-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    :cond_4
    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCharacterMapHelper:Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;

    invoke-virtual {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v6

    invoke-interface {v6}, Lcom/touchtype_fluency/Predictor;->getInputMapper()Lcom/touchtype_fluency/InputMapper;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->endChonjiinFlow(Lcom/touchtype_fluency/InputMapper;)V

    :goto_2
    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v6, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/ime/framework/common/InputManager;->isEFGISLanguageID(I)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v5}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v5

    if-le v5, v7, :cond_5

    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mMultiWordPredictionBufLists:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mMultiWordPredictionBufLists:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mMultiWordPredictionBufLists:Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v6

    invoke-virtual {p0, v5, p1, v6}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->buildMultiWordPredictions(Ljava/util/ArrayList;Lcom/touchtype_fluency/Sequence;I)V

    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mMultiWordPredictionBufLists:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->convertPredictions(Ljava/util/ArrayList;)Lcom/touchtype_fluency/Predictions;

    move-result-object v5

    iput-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    :cond_5
    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    iput-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mBackupPredictions:Lcom/touchtype_fluency/Predictions;

    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    goto/16 :goto_0

    :cond_6
    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCharacterMapHelper:Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;

    invoke-virtual {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v6

    invoke-interface {v6}, Lcom/touchtype_fluency/Predictor;->getInputMapper()Lcom/touchtype_fluency/InputMapper;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->disableKorInitialInput(Lcom/touchtype_fluency/InputMapper;)V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p0, v9, v9}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setCacheSequenceAndTouchHistory(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;)V

    invoke-direct {p0, p1, v4, p2, p3}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->buildCorrectiosInternal(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Sequence;I)Lcom/touchtype_fluency/Predictions;

    move-result-object v5

    iput-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    goto :goto_2
.end method

.method protected buildPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;I)Lcom/touchtype_fluency/Predictions;
    .locals 1

    const/4 v0, 0x1

    if-ge p3, v0, :cond_0

    iget p3, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCandidateWordNumber:I

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->buildPredictionsInternal(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;I)Lcom/touchtype_fluency/Predictions;

    move-result-object v0

    return-object v0
.end method

.method public buildPredictions(ZLcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/Sequence;I)Lcom/touchtype_fluency/Predictions;
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    iget-object v4, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mReservePredictions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    if-ge p4, v8, :cond_0

    iget p4, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCandidateWordNumber:I

    :cond_0
    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5, v6}, Lcom/ime/framework/common/InputManager;->setMultiWordAdded(Z)V

    invoke-virtual {p2}, Lcom/touchtype_fluency/Sequence;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    if-nez p3, :cond_7

    :cond_1
    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCachedSequence:Lcom/touchtype_fluency/Sequence;

    invoke-virtual {p2, v5}, Lcom/touchtype_fluency/Sequence;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCachedTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v4, v5}, Lcom/touchtype_fluency/TouchHistory;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    :goto_0
    return-object v5

    :cond_2
    new-instance v0, Lcom/touchtype_fluency/Sequence;

    invoke-direct {v0}, Lcom/touchtype_fluency/Sequence;-><init>()V

    invoke-virtual {p2}, Lcom/touchtype_fluency/Sequence;->getType()Lcom/touchtype_fluency/Sequence$Type;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/touchtype_fluency/Sequence;->setType(Lcom/touchtype_fluency/Sequence$Type;)V

    invoke-virtual {p2}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {p2}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v5

    invoke-virtual {p2, v6, v5}, Lcom/touchtype_fluency/Sequence;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/touchtype_fluency/Sequence;->addAll(Ljava/util/Collection;)Z

    :cond_3
    new-instance v1, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v1}, Lcom/touchtype_fluency/TouchHistory;-><init>()V

    invoke-virtual {v1, v4}, Lcom/touchtype_fluency/TouchHistory;->appendHistory(Lcom/touchtype_fluency/TouchHistory;)V

    invoke-virtual {p0, v0, v1}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setCacheSequenceAndTouchHistory(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->korInitialInputLibrary:Lcom/touchtype/samsung/supportlibrary/SupportLibrary;

    invoke-virtual {v5, v2, v7}, Lcom/touchtype/samsung/supportlibrary/SupportLibrary;->isKoreanInitialOnly(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCharacterMapHelper:Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;

    invoke-virtual {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v6

    invoke-interface {v6}, Lcom/touchtype_fluency/Predictor;->getInputMapper()Lcom/touchtype_fluency/InputMapper;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->enableKorInitialInput(Lcom/touchtype_fluency/InputMapper;)V

    :goto_1
    invoke-virtual {p0, p2, v4, p4}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->buildPredictionsInternal(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;I)Lcom/touchtype_fluency/Predictions;

    move-result-object v5

    iput-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    if-eqz v3, :cond_4

    sget-object v5, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->korInitialInputLibrary:Lcom/touchtype/samsung/supportlibrary/SupportLibrary;

    iget-object v6, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v5, v6, v2, v3, v8}, Lcom/touchtype/samsung/supportlibrary/SupportLibrary;->reorderPredictions(Lcom/touchtype_fluency/Predictions;Ljava/lang/String;ZZ)Lcom/touchtype_fluency/Predictions;

    move-result-object v5

    iput-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v5}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v5

    if-lez v5, :cond_4

    invoke-virtual {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->isEmojiPredictionEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->isEmojiLMLoaded()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-direct {p0, v5, v7}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getModifiedPrediction(Lcom/touchtype_fluency/Predictions;I)Lcom/touchtype_fluency/Predictions;

    move-result-object v5

    iput-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    :cond_4
    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCharacterMapHelper:Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;

    invoke-virtual {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v6

    invoke-interface {v6}, Lcom/touchtype_fluency/Predictor;->getInputMapper()Lcom/touchtype_fluency/InputMapper;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->endChonjiinFlow(Lcom/touchtype_fluency/InputMapper;)V

    :goto_2
    if-nez p1, :cond_5

    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v6, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/ime/framework/common/InputManager;->isEFGISLanguageID(I)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v5}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v5

    if-le v5, v7, :cond_5

    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mMultiWordPredictionBufLists:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mMultiWordPredictionBufLists:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mMultiWordPredictionBufLists:Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v6

    invoke-virtual {p0, v5, p2, v6}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->buildMultiWordPredictions(Ljava/util/ArrayList;Lcom/touchtype_fluency/Sequence;I)V

    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mMultiWordPredictionBufLists:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->convertPredictions(Ljava/util/ArrayList;)Lcom/touchtype_fluency/Predictions;

    move-result-object v5

    iput-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    :cond_5
    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    iput-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mBackupPredictions:Lcom/touchtype_fluency/Predictions;

    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    goto/16 :goto_0

    :cond_6
    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCharacterMapHelper:Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;

    invoke-virtual {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v6

    invoke-interface {v6}, Lcom/touchtype_fluency/Predictor;->getInputMapper()Lcom/touchtype_fluency/InputMapper;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->disableKorInitialInput(Lcom/touchtype_fluency/InputMapper;)V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p0, v9, v9}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setCacheSequenceAndTouchHistory(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;)V

    invoke-direct {p0, p2, v4, p3, p4}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->buildCorrectiosInternal(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Sequence;I)Lcom/touchtype_fluency/Predictions;

    move-result-object v5

    iput-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    goto :goto_2
.end method

.method protected buildPredictionsInternal(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;I)Lcom/touchtype_fluency/Predictions;
    .locals 3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mBackupPredictions:Lcom/touchtype_fluency/Predictions;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setContactSpecificSequence(Lcom/touchtype_fluency/Sequence;Z)Z

    invoke-virtual {p0, p1}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setFieldSpecificSequence(Lcom/touchtype_fluency/Sequence;)V

    invoke-virtual {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->isEmojiPredictionEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 p3, 0x19

    :goto_0
    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    invoke-virtual {p0, p3}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getResultsFilter(I)Lcom/touchtype_fluency/ResultsFilter;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/touchtype_fluency/Predictor;->getPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/ResultsFilter;)Lcom/touchtype_fluency/Predictions;

    move-result-object v0

    invoke-virtual {p1}, Lcom/touchtype_fluency/Sequence;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/touchtype_fluency/Predictions;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->DEFAULT_SYMBOL_LAYOUT_KEY:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getFilterPredictions(Lcom/touchtype_fluency/Predictions;[Ljava/lang/String;)Lcom/touchtype_fluency/Predictions;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->isEmojiPredictionEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->isEmojiLMLoaded()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getModifiedPrediction(Lcom/touchtype_fluency/Predictions;I)Lcom/touchtype_fluency/Predictions;

    move-result-object v0

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    const/16 p3, 0xf

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getEmojiRemovedPrediction(Lcom/touchtype_fluency/Predictions;)Lcom/touchtype_fluency/Predictions;

    move-result-object v0

    goto :goto_1
.end method

.method public cancelPreviewFlow()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIsPreviewFlow:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mAppendVerbatimInSequence:Z

    iput v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPreviewFlowTouchPointIndex:I

    iput-boolean v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIsPreviewFlow:Z

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public changeChineseInputType(Ljava/util/List;ZLjava/lang/String;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/touchtype_fluency/util/LanguagePackManager;",
            "Lcom/touchtype_fluency/util/CompletionListener;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public changeJapaneseInputType(Ljava/util/List;ZLjava/lang/String;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/touchtype_fluency/util/LanguagePackManager;",
            "Lcom/touchtype_fluency/util/CompletionListener;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public checkPostPosition(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public choosePrediction(Lcom/touchtype_fluency/Sequence;I)V
    .locals 7

    const/4 v1, 0x0

    if-ltz p2, :cond_1

    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v5}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v5

    if-le v5, p2, :cond_2

    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v5, p2}, Lcom/touchtype_fluency/Predictions;->get(I)Lcom/touchtype_fluency/Prediction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    invoke-interface {v5, v4}, Lcom/touchtype_fluency/Tokenizer;->split(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;

    move-result-object v2

    invoke-virtual {v2}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v2, v0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->SafeGetInSequence(Lcom/touchtype_fluency/Sequence;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/touchtype_fluency/Sequence;->append(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDiableTempDynamicModel:Z

    if-nez v5, :cond_1

    invoke-virtual {v3}, Lcom/touchtype_fluency/Prediction;->getTags()Ljava/util/Set;

    move-result-object v5

    const-string v6, "verbatim"

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v4}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->learnTempDynamicModel(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v5}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v5

    iget-object v6, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mReservePredictions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v5, v6

    if-le v5, p2, :cond_3

    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mReservePredictions:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v6}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v6

    sub-int v6, p2, v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/touchtype_fluency/Sequence;->append(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    if-nez v5, :cond_1

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    invoke-interface {v5, v4}, Lcom/touchtype_fluency/Tokenizer;->split(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;

    move-result-object v2

    invoke-virtual {v2}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v2, v0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->SafeGetInSequence(Lcom/touchtype_fluency/Sequence;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/touchtype_fluency/Sequence;->append(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public choosePrediction(Lcom/touchtype_fluency/Sequence;Ljava/lang/String;)V
    .locals 4

    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    invoke-interface {v3, p2}, Lcom/touchtype_fluency/Tokenizer;->split(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;

    move-result-object v2

    invoke-virtual {v2}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v2, v0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->SafeGetInSequence(Lcom/touchtype_fluency/Sequence;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/touchtype_fluency/Sequence;->append(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearContext()V
    .locals 2

    new-instance v0, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v0}, Lcom/touchtype_fluency/TouchHistory;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    return-void
.end method

.method public clearContextExceptTouchHistory()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    return-void
.end method

.method public clearIntentionalEvents()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIntentionalEvents:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIntentionalEvents:Ljava/util/Set;

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Predictor;->setIntentionalEvents(Ljava/util/Set;)V

    return-void
.end method

.method protected clearReservePredictions()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mReservePredictions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public clearTouchHistoryRepository()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistoryRepository:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public createSession()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/touchtype_fluency/LicenseException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    if-nez v3, :cond_0

    :try_start_0
    const-string v3, "Samsung_nolimit_flow_parameter_193196a"

    invoke-static {v3}, Lcom/touchtype_fluency/util/SwiftKeySession;->create(Ljava/lang/String;)Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;
    :try_end_0
    .catch Ljunit/framework/AssertionFailedError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v3, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    if-nez v3, :cond_1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljunit/framework/AssertionFailedError;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v3}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;
    :try_end_1
    .catch Ljunit/framework/AssertionFailedError; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    invoke-interface {v1}, Lcom/touchtype_fluency/Session;->getTokenizer()Lcom/touchtype_fluency/Tokenizer;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    invoke-interface {v1}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    invoke-interface {v1}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    :cond_2
    invoke-direct {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->parseSwiftKeyVersion()V

    iput-boolean v2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mReady:Z

    invoke-static {}, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->newInstance()Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCharacterMapHelper:Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-direct {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->addEmojiToLayoutFilter()V

    invoke-direct {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->initEmojiSet()V

    move v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljunit/framework/AssertionFailedError;->printStackTrace()V

    goto :goto_0
.end method

.method public deleteKey()Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v2}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v1, v0}, Lcom/touchtype_fluency/TouchHistory;->dropLast(I)Lcom/touchtype_fluency/TouchHistory;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v0, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v0}, Lcom/touchtype_fluency/TouchHistory;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public deleteLastInputKey()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v1}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v1, v0}, Lcom/touchtype_fluency/TouchHistory;->dropLast(I)Lcom/touchtype_fluency/TouchHistory;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disableContactSpecificContext()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mEnableContactSpecificContext:Z

    return-void
.end method

.method public enableAllModel()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->isEmojiPredictionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v0

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->allModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Session;->enableModels(Lcom/touchtype_fluency/TagSelector;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v0

    const-string v1, "emoji"

    invoke-static {v1}, Lcom/touchtype_fluency/TagSelectors;->notTaggedWith(Ljava/lang/String;)Lcom/touchtype_fluency/TagSelector;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Session;->enableModels(Lcom/touchtype_fluency/TagSelector;)V

    goto :goto_0
.end method

.method public enableAllModelAfterBuildPrediction()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$5;

    invoke-direct {v1, p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$5;-><init>(Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public enableContactSpecificContext()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mEnableContactSpecificContext:Z

    return-void
.end method

.method public enableLanguageModel(Ljava/lang/String;)Z
    .locals 4

    iget-object v2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v2}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "dynamic"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "ll"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    invoke-static {v1}, Lcom/touchtype_fluency/TagSelectors;->taggedWith(Ljava/util/Collection;)Lcom/touchtype_fluency/TagSelector;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/touchtype_fluency/Session;->enableModels(Lcom/touchtype_fluency/TagSelector;)V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public fullToHalfWidth(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getClosestKey(II)I
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    invoke-interface {v1}, Lcom/touchtype_fluency/Predictor;->getKeyPressModel()Lcom/touchtype_fluency/KeyPressModel;

    move-result-object v1

    new-instance v2, Lcom/touchtype_fluency/Point;

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-direct {v2, v3, v4}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    invoke-interface {v1, v2}, Lcom/touchtype_fluency/KeyPressModel;->closestKey(Lcom/touchtype_fluency/Point;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    aget-object v1, v0, v5

    if-eqz v1, :cond_0

    aget-object v1, v0, v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    aget-object v1, v0, v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getContactSpecificID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mContactSpecificID:Ljava/lang/String;

    return-object v0
.end method

.method public getContextCorrentWord(Ljava/lang/String;I)Lcom/touchtype_fluency/ContextCurrentWord;
    .locals 5

    iget-object v2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    if-eqz v2, :cond_2

    const/high16 v2, 0x76690000

    if-ne p2, v2, :cond_1

    iget-object v2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    invoke-interface {v2, p1}, Lcom/touchtype_fluency/Tokenizer;->split(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;

    move-result-object v1

    const-string v0, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->SafeSequenceRemove(Lcom/touchtype_fluency/Sequence;I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v2, Lcom/touchtype_fluency/ContextCurrentWord;

    invoke-direct {v2, v1, v0}, Lcom/touchtype_fluency/ContextCurrentWord;-><init>(Lcom/touchtype_fluency/Sequence;Ljava/lang/String;)V

    :goto_0
    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    const/4 v3, 0x6

    invoke-interface {v2, p1, v3}, Lcom/touchtype_fluency/Tokenizer;->splitContextCurrentWord(Ljava/lang/String;I)Lcom/touchtype_fluency/ContextCurrentWord;

    move-result-object v2

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/touchtype_fluency/ContextCurrentWord;

    new-instance v3, Lcom/touchtype_fluency/Sequence;

    invoke-direct {v3}, Lcom/touchtype_fluency/Sequence;-><init>()V

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/touchtype_fluency/ContextCurrentWord;-><init>(Lcom/touchtype_fluency/Sequence;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getContextCorrentWord(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/ContextCurrentWord;
    .locals 4

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    invoke-interface {v1, p1}, Lcom/touchtype_fluency/Tokenizer;->split(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;

    move-result-object v0

    new-instance v1, Lcom/touchtype_fluency/ContextCurrentWord;

    invoke-direct {v1, v0, p2}, Lcom/touchtype_fluency/ContextCurrentWord;-><init>(Lcom/touchtype_fluency/Sequence;Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/touchtype_fluency/ContextCurrentWord;

    new-instance v2, Lcom/touchtype_fluency/Sequence;

    invoke-direct {v2}, Lcom/touchtype_fluency/Sequence;-><init>()V

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/touchtype_fluency/ContextCurrentWord;-><init>(Lcom/touchtype_fluency/Sequence;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getFieldSpecificType()I
    .locals 1

    iget v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mFieldSpecificType:I

    return v0
.end method

.method public getFirtstTokenFromSequence(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    const-string v1, ""

    iget-object v2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    invoke-interface {v2, p1}, Lcom/touchtype_fluency/Tokenizer;->split(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0, v0, v3}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->SafeGetInSequence(Lcom/touchtype_fluency/Sequence;I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getFullCPSpell()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputBuffer()Ljava/lang/StringBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public getKey(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;IIZ)I
    .locals 2

    const-string v0, "ko"

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getCurrentInputLanguage()Lcom/ime/framework/common/Language;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0, p3, p4}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getMostLikelyKey(II)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getMostLikelyCharacter(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;II)I

    move-result v0

    goto :goto_0
.end method

.method protected getKeyModelHashCode(Ljava/util/HashMap;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/touchtype_fluency/KeyShape;",
            "[",
            "Ljava/lang/Character;",
            ">;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/touchtype_fluency/KeyShape;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Character;

    array-length v6, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_0

    aget-object v1, v2, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    const-string v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    return v8
.end method

.method protected getKeyModelHashCodeEx(Ljava/util/HashMap;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/touchtype_fluency/KeyShape;",
            "[",
            "Ljava/lang/Character;",
            ">;)I"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    mul-int/lit16 v4, v1, 0x10f

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/touchtype_fluency/KeyShape;

    invoke-virtual {v3}, Lcom/touchtype_fluency/KeyShape;->hashCode()I

    move-result v3

    add-int v1, v4, v3

    mul-int/lit16 v4, v1, 0x10f

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int v1, v4, v3

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getLastTokenFromSequence(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v1, ""

    iget-object v2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    invoke-interface {v2, p1}, Lcom/touchtype_fluency/Tokenizer;->split(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->SafeGetInSequence(Lcom/touchtype_fluency/Sequence;I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getMostLikelyCharacter(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;II)I
    .locals 6

    const-string v1, "SamsungIME"

    const-string v2, "[AbstractSwiftkeyManager-getMostLikelyCharacter]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mAdjacentErrorCorrection:Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/AdjacentErrorCorrection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mAdjacentErrorCorrection:Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/AdjacentErrorCorrection;

    iget-object v2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    new-instance v3, Lcom/touchtype_fluency/Point;

    int-to-float v4, p3

    int-to-float v5, p4

    invoke-direct {v3, v4, v5}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    invoke-virtual {v1, v2, p1, p2, v3}, Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/AdjacentErrorCorrection;->chooseMostLikelyCharacter(Lcom/touchtype_fluency/Predictor;Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Point;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getMostLikelyCharacter(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;III)I
    .locals 5

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    new-instance v2, Lcom/touchtype_fluency/Point;

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-direct {v2, v3, v4}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    invoke-interface {v1, p1, p2, v2, p5}, Lcom/touchtype_fluency/Predictor;->getMostLikelyCharacter(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Point;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getMostLikelyKey(II)I
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    invoke-interface {v1}, Lcom/touchtype_fluency/Predictor;->getKeyPressModel()Lcom/touchtype_fluency/KeyPressModel;

    move-result-object v1

    new-instance v2, Lcom/touchtype_fluency/Point;

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-direct {v2, v3, v4}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    invoke-interface {v1, v2}, Lcom/touchtype_fluency/KeyPressModel;->mostLikelyKey(Lcom/touchtype_fluency/Point;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    aget-object v1, v0, v5

    if-eqz v1, :cond_0

    aget-object v1, v0, v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    aget-object v1, v0, v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getPhoneticSpellGroup(Ljava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I)V"
        }
    .end annotation

    return-void
.end method

.method public getPredictions()Lcom/touchtype_fluency/Predictions;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    return-object v0
.end method

.method public getPredictionsAsArrayList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/touchtype_fluency/Prediction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mFieldSpecificType:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-direct {p0, v0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getFilteredFieldSpecificPredictions(Lcom/touchtype_fluency/Predictions;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getPredictor()Lcom/touchtype_fluency/Predictor;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v0

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    return-object v0
.end method

.method public getPreviewFlowPredicions()Lcom/touchtype_fluency/Predictions;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPreviewFlowPredictions:Lcom/touchtype_fluency/Predictions;

    return-object v0
.end method

.method public getReservePredictions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mReservePredictions:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected abstract getResultsFilter(I)Lcom/touchtype_fluency/ResultsFilter;
.end method

.method public getSuggestion(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    invoke-interface {v6, p3}, Lcom/touchtype_fluency/Tokenizer;->split(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;

    move-result-object v4

    :goto_0
    iget-object v6, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSequnceType:Lcom/touchtype_fluency/Sequence$Type;

    invoke-virtual {v4, v6}, Lcom/touchtype_fluency/Sequence;->setType(Lcom/touchtype_fluency/Sequence$Type;)V

    const/4 v5, 0x0

    const/high16 v6, 0x6b6f0000

    if-ne p2, v6, :cond_4

    new-instance v5, Lcom/touchtype_fluency/TouchHistory;

    invoke-static {p4}, Lcom/touchtype_fluency/Hangul;->split(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/touchtype_fluency/TouchHistory;-><init>(Ljava/lang/String;)V

    :goto_1
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p2}, Lcom/ime/framework/common/LanguageID;->getCode(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->enableLanguageModel(Ljava/lang/String;)Z

    :cond_0
    invoke-virtual {p0, v4, v5, p5}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->buildPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;I)Lcom/touchtype_fluency/Predictions;

    move-result-object v3

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->enableAllModel()V

    :cond_1
    invoke-virtual {v3}, Lcom/touchtype_fluency/Predictions;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/touchtype_fluency/Prediction;

    invoke-virtual {v1}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const v7, 0xfffc

    if-eq v6, v7, :cond_2

    const/high16 v6, 0x74680000

    if-ne p2, v6, :cond_5

    const-string v6, "\\p{Space}"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "\\u200b"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    new-instance v4, Lcom/touchtype_fluency/Sequence;

    invoke-direct {v4}, Lcom/touchtype_fluency/Sequence;-><init>()V

    goto :goto_0

    :cond_4
    new-instance v5, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v5, p4}, Lcom/touchtype_fluency/TouchHistory;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    return-void
.end method

.method public getSwiftKeyConfigurationURL(Z)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyVersion:Lcom/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    sget-object v2, Lcom/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->SWIFTKEY_VERSION_NONE:Lcom/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->parseSwiftKeyVersion()V

    :cond_0
    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyVersion:Lcom/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    sget-object v2, Lcom/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->SWIFTKEY_VERSION_1_4:Lcom/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyVersion:Lcom/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    sget-object v2, Lcom/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->SWIFTKEY_VERSION_1_5:Lcom/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyVersion:Lcom/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    sget-object v2, Lcom/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->SWIFTKEY_VERSION_1_6:Lcom/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    if-ne v1, v2, :cond_4

    :cond_1
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "m0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "m3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "heatnfc3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    if-eqz p1, :cond_3

    const-string v1, "https://skslm.swiftkey.net/samsung/downloads/languagePacksSSL-Samsung-CA-v1.1.json"

    :goto_0
    return-object v1

    :cond_3
    const-string v1, "https://skslm.swiftkey.net/samsung/downloads/languagePacksSSL-Samsung-v1.1.json"

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyVersion:Lcom/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    sget-object v2, Lcom/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->SWIFTKEY_VERSION_1_3:Lcom/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    if-ne v1, v2, :cond_6

    if-eqz p1, :cond_5

    const-string v1, "https://skslm.swiftkey.net/samsung/downloads/languagePacksSSL-Samsung-CA-v1.1.json"

    goto :goto_0

    :cond_5
    const-string v1, "https://skslm.swiftkey.net/samsung/downloads/languagePacksSSL-Samsung-v1.1.json"

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyVersion:Lcom/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    sget-object v2, Lcom/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->SWIFTKEY_VERSION_1_4:Lcom/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    if-ne v1, v2, :cond_8

    if-eqz p1, :cond_7

    const-string v1, "https://skslm.swiftkey.net/samsung/downloads/v1.2-CA/languagePacksSSL.json"

    goto :goto_0

    :cond_7
    const-string v1, "https://skslm.swiftkey.net/samsung/downloads/v1.2/languagePacksSSL.json"

    goto :goto_0

    :cond_8
    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyVersion:Lcom/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    sget-object v2, Lcom/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->SWIFTKEY_VERSION_1_5:Lcom/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    if-ne v1, v2, :cond_c

    invoke-direct {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->isSupportRestrictedIndianLanguage()Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz p1, :cond_9

    const-string v1, "https://skslm.swiftkey.net/samsung/downloads/v1.3-CA/languagePacksSSL.json"

    goto :goto_0

    :cond_9
    const-string v1, "https://skslm.swiftkey.net/samsung/downloads/v1.3-USA/languagePacksSSL.json"

    goto :goto_0

    :cond_a
    if-eqz p1, :cond_b

    const-string v1, "https://skslm.swiftkey.net/samsung/downloads/v1.3-CA/languagePacksSSL.json"

    goto :goto_0

    :cond_b
    const-string v1, "https://skslm.swiftkey.net/samsung/downloads/v1.3/languagePacksSSL.json"

    goto :goto_0

    :cond_c
    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyVersion:Lcom/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    sget-object v2, Lcom/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->SWIFTKEY_VERSION_1_6:Lcom/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    if-ne v1, v2, :cond_13

    new-instance v0, Lcom/sec/android/inputmethod/ConfigFeature;

    invoke-direct {v0}, Lcom/sec/android/inputmethod/ConfigFeature;-><init>()V

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isRequiredChinaServerURL()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "SamsungIME"

    const-string v2, "Applied for a server URL for China"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "https://skslm.swiftkey.net/samsung/downloads/v1.5-CN/languagePacksSSL.json"

    goto :goto_0

    :cond_d
    invoke-direct {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->isSupportRestrictedIndianLanguage()Z

    move-result v1

    if-eqz v1, :cond_10

    if-eqz p1, :cond_f

    const-string v1, "USA"

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/ConfigFeature;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "https://skslm.swiftkey.net/samsung/downloads/v1.5-USA-TC/languagePacksSSL.json"

    goto :goto_0

    :cond_e
    const-string v1, "https://skslm.swiftkey.net/samsung/downloads/v1.5-CA/languagePacksSSL.json"

    goto :goto_0

    :cond_f
    const-string v1, "https://skslm.swiftkey.net/samsung/downloads/v1.5-USA-TC/languagePacksSSL.json"

    goto :goto_0

    :cond_10
    if-eqz p1, :cond_12

    const-string v1, "USA"

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/ConfigFeature;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "https://skslm.swiftkey.net/samsung/downloads/v1.5-USA-TC/languagePacksSSL.json"

    goto/16 :goto_0

    :cond_11
    const-string v1, "https://skslm.swiftkey.net/samsung/downloads/v1.5-CA/languagePacksSSL.json"

    goto/16 :goto_0

    :cond_12
    const-string v1, "https://skslm.swiftkey.net/samsung/downloads/v1.5/languagePacksSSL.json"

    goto/16 :goto_0

    :cond_13
    const-string v1, "https://skslm.swiftkey.net/samsung/downloads/languagePacksSSL-Samsung-v1.1.json"

    goto/16 :goto_0
.end method

.method public getSwiftKeySession()Lcom/touchtype_fluency/Session;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    return-object v0
.end method

.method public getSwiftKeyUtilSession()Lcom/touchtype_fluency/util/SwiftKeySession;
    .locals 4

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "Samsung_nolimit_flow_parameter_193196a"

    invoke-static {v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->create(Ljava/lang/String;)Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;
    :try_end_0
    .catch Lcom/touchtype_fluency/LicenseException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invaild swiftkey license : Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/touchtype_fluency/LicenseException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSwiftKeyVersion()Lcom/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyVersion:Lcom/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    return-object v0
.end method

.method public getTokenizer()Lcom/touchtype_fluency/Tokenizer;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v0

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getTokenizer()Lcom/touchtype_fluency/Tokenizer;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    return-object v0
.end method

.method public getTouchHistory()Lcom/touchtype_fluency/TouchHistory;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    return-object v0
.end method

.method public getTrainer()Lcom/touchtype_fluency/Trainer;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v0

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    return-object v0
.end method

.method public halfToFullWidth(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hiraganaToKatakana(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isAutoAceeptBeforeFlow(Lcom/touchtype_fluency/Sequence;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mAppendVerbatimInSequence:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->SafeSequenceRemove(Lcom/touchtype_fluency/Sequence;I)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v0}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContactSpecificContext()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mEnableContactSpecificContext:Z

    return v0
.end method

.method public isEmojiLMLoaded()Z
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getTags()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "emoji"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmojiPredictionEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIsEmojiEnabled:Z

    return v0
.end method

.method public isPreviewFlow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIsPreviewFlow:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mReady:Z

    return v0
.end method

.method public isValidCharacter(C)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isValidWord(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->staticModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/touchtype_fluency/Predictor;->queryTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public katakanaToHiragana(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public learnDynamicModel(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/ime/framework/repository/RepositoryImpl;->getInstance()Lcom/ime/framework/repository/Repository;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    const-string v4, "RELOAD_LANGUAGEPACK"

    invoke-interface {v1, v4, v6}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "REPLACEMENT_PREDICTION_USER_DATA"

    invoke-interface {v1, v4, v6}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->replacementMergedDLM()V

    const-string v4, "REPLACEMENT_PREDICTION_USER_DATA"

    invoke-interface {v1, v4, v6}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    const-string v4, "SamsungIME_SYNC"

    const-string v5, "Set the flag: KEY_REPLACEMENT_PREDICTION_USER_DATA: false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v4, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDirtyTempDynamicModel:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v4}, Lcom/touchtype_fluency/util/SwiftKeySession;->resetTemporaryModel()V

    iput-boolean v6, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDirtyTempDynamicModel:Z

    :cond_4
    const-string v4, "RELOAD_LANGUAGEPACK"

    invoke-interface {v1, v4, v6}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "REPLACEMENT_PREDICTION_USER_DATA"

    invoke-interface {v1, v4, v6}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    invoke-direct {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->replacementMergedDLM()V

    const-string v4, "REPLACEMENT_PREDICTION_USER_DATA"

    invoke-interface {v1, v4, v6}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    const-string v4, "SamsungIME_SYNC"

    const-string v5, "KEY_REPLACEMENT_PREDICTION_USER_DATA: false - RE-LOAD MERGED DLM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v4, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainedSequence:Lcom/touchtype_fluency/Sequence;

    invoke-virtual {v4}, Lcom/touchtype_fluency/Sequence;->clear()V

    iget-object v4, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainedSequence:Lcom/touchtype_fluency/Sequence;

    sget-object v5, Lcom/touchtype_fluency/Sequence$Type;->MESSAGE_START:Lcom/touchtype_fluency/Sequence$Type;

    invoke-virtual {v4, v5}, Lcom/touchtype_fluency/Sequence;->setType(Lcom/touchtype_fluency/Sequence$Type;)V

    iget-object v4, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    invoke-interface {v4, p1}, Lcom/touchtype_fluency/Tokenizer;->split(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;

    move-result-object v4

    invoke-virtual {v4}, Lcom/touchtype_fluency/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/touchtype_fluency/Term;

    invoke-virtual {v2}, Lcom/touchtype_fluency/Term;->getTerm()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->learnStringWithExclusionPattern(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSkipLearningTerm:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/touchtype_fluency/Term;->getTerm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v2}, Lcom/touchtype_fluency/Term;->getTerm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v7, :cond_8

    const-string v4, "i"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainedSequence:Lcom/touchtype_fluency/Sequence;

    const-string v5, "I"

    invoke-virtual {v4, v5}, Lcom/touchtype_fluency/Sequence;->append(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    iget-object v4, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainedSequence:Lcom/touchtype_fluency/Sequence;

    invoke-virtual {v4, v2}, Lcom/touchtype_fluency/Sequence;->append(Lcom/touchtype_fluency/Term;)V

    goto :goto_1

    :cond_9
    iget-object v4, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSkipLearningTerm:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainedSequence:Lcom/touchtype_fluency/Sequence;

    invoke-virtual {p0, v4, v6}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setContactSpecificSequence(Lcom/touchtype_fluency/Sequence;Z)Z

    iget v4, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mFieldSpecificType:I

    invoke-direct {p0, p1, v4}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->verifyFieldSpecificFormat(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainedSequence:Lcom/touchtype_fluency/Sequence;

    invoke-virtual {p0, v4}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setFieldSpecificSequence(Lcom/touchtype_fluency/Sequence;)V

    :cond_a
    iget-object v3, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainedSequence:Lcom/touchtype_fluency/Sequence;

    iput-boolean v7, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDirtyDynamicModel:Z

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$7;

    invoke-direct {v5, p0, v3}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$7;-><init>(Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;Lcom/touchtype_fluency/Sequence;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method public learnFieldSpecificContext(Ljava/lang/String;I)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/touchtype_fluency/Sequence;

    invoke-direct {v0}, Lcom/touchtype_fluency/Sequence;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->verifyFieldSpecificFormat(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p2}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getFieldSpecificID(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/Sequence;->setFieldHint(Ljava/lang/String;)V

    :cond_2
    sget-object v1, Lcom/touchtype_fluency/Sequence$Type;->MESSAGE_START:Lcom/touchtype_fluency/Sequence$Type;

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/Sequence;->setType(Lcom/touchtype_fluency/Sequence$Type;)V

    invoke-direct {p0, p1}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->learnStringWithExclusionPattern(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/touchtype_fluency/Term;

    invoke-direct {v1, p1}, Lcom/touchtype_fluency/Term;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/Sequence;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    invoke-interface {v1, v0}, Lcom/touchtype_fluency/Trainer;->addSequence(Lcom/touchtype_fluency/Sequence;)V

    goto :goto_0
.end method

.method public learnKeyPressModel(Lcom/touchtype_fluency/Sequence;I)V
    .locals 3

    if-ltz p2, :cond_1

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v1}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v1}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v1

    if-le v1, p2, :cond_1

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v1, p2}, Lcom/touchtype_fluency/Predictions;->get(I)Lcom/touchtype_fluency/Prediction;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v1}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mContactSpecificID:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mContactSpecificID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    iget-object v2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-interface {v1, v2, v0}, Lcom/touchtype_fluency/Trainer;->learnFrom(Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Prediction;)V

    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDirtyKeyPressModel:Z

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mContactSpecificID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/touchtype_fluency/Sequence;->setContact(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    iget-object v2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-interface {v1, p1, v2, v0}, Lcom/touchtype_fluency/Trainer;->learnFrom(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Prediction;)V

    goto :goto_0
.end method

.method public learnTempDynamicModel(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    invoke-interface {v1, p1}, Lcom/touchtype_fluency/Predictor;->queryTerm(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSkipLearningTerm:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    invoke-interface {v1, p1}, Lcom/touchtype_fluency/Tokenizer;->split(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSkipLearningTerm:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSkipLearningTerm:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    invoke-direct {p0, p1}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->learnStringWithExclusionPattern(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->temporaryDynamicModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/touchtype_fluency/Trainer;->addSequence(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TagSelector;)V

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDirtyTempDynamicModel:Z

    :cond_3
    return-void
.end method

.method protected loadCurrentKeyPressModelFileName(II)Ljava/lang/String;
    .locals 4

    const-string v0, "model_%d_%d.im"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadKorCharacterMap(I)V
    .locals 5

    const/high16 v4, 0x6b6f0000

    if-eq p1, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getPreferenceInputMethodOnKor()I

    move-result v0

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v2

    if-eq v2, v0, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v3

    invoke-interface {v3}, Lcom/touchtype_fluency/Predictor;->getInputMapper()Lcom/touchtype_fluency/InputMapper;

    move-result-object v1

    iget-object v4, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCharacterMapHelper:Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;

    invoke-virtual {v4, v1}, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->loadKorCharacterMapWithInitialInput(Lcom/touchtype_fluency/InputMapper;)V

    goto :goto_0
.end method

.method public loadKorCharacterMap(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;)V"
        }
    .end annotation

    const/high16 v4, 0x6b6f0000

    if-eq p1, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getPreferenceInputMethodOnKor()I

    move-result v0

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v2

    if-eq v2, v0, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v3

    invoke-interface {v3}, Lcom/touchtype_fluency/Predictor;->getInputMapper()Lcom/touchtype_fluency/InputMapper;

    move-result-object v1

    iget-object v4, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCharacterMapHelper:Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;

    invoke-virtual {v4, v1}, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->loadKorCharacterMapWithInitialInput(Lcom/touchtype_fluency/InputMapper;)V

    goto :goto_0
.end method

.method public loadLanguageModel(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LoadProgressListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Lcom/touchtype_fluency/util/LanguagePackManager;",
            "Lcom/touchtype_fluency/util/LoadProgressListener;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0, v1, p2, p3}, Lcom/touchtype_fluency/util/SwiftKeySession;->loadLanguagesProgressive(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LoadProgressListener;)V

    :goto_0
    invoke-virtual {p0, v1, v1}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setCacheSequenceAndTouchHistory(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0, p1, p2, p3}, Lcom/touchtype_fluency/util/SwiftKeySession;->loadLanguagesProgressive(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LoadProgressListener;)V

    goto :goto_0
.end method

.method public loadLanguageModel(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LoadProgressListener;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Lcom/touchtype_fluency/util/LanguagePackManager;",
            "Lcom/touchtype_fluency/util/LoadProgressListener;",
            "Z)V"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0, v1, p2, p3}, Lcom/touchtype_fluency/util/SwiftKeySession;->loadLanguagesProgressive(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LoadProgressListener;)V

    :goto_0
    invoke-virtual {p0, v1, v1}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setCacheSequenceAndTouchHistory(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0, p1, p2, p3}, Lcom/touchtype_fluency/util/SwiftKeySession;->loadLanguagesProgressive(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LoadProgressListener;)V

    goto :goto_0
.end method

.method public loadOrUnloadAutoTextModel(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$4;-><init>(Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;Ljava/lang/String;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public loadOrUnloadDynamicUserModel(Lcom/touchtype_fluency/util/LanguagePackManager;Z)V
    .locals 6

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v1, p1}, Lcom/touchtype_fluency/util/SwiftKeySession;->createOrLoadDynamicUserModel(Lcom/touchtype_fluency/util/LanguagePackManager;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lcom/touchtype_fluency/InvalidDataException;->printStackTrace()V

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v1

    invoke-virtual {p1}, Lcom/touchtype_fluency/util/LanguagePackManager;->getDynamicModel()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    sget-object v5, Lcom/touchtype_fluency/ModelSetDescription$Type;->PRIMARY_DYNAMIC_MODEL:Lcom/touchtype_fluency/ModelSetDescription$Type;

    invoke-static {v2, v3, v4, v5}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicWithFile(Ljava/lang/String;I[Ljava/lang/String;Lcom/touchtype_fluency/ModelSetDescription$Type;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/touchtype_fluency/Session;->unload(Lcom/touchtype_fluency/ModelSetDescription;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Lcom/touchtype_fluency/InvalidDataException;->printStackTrace()V

    goto :goto_0
.end method

.method public load_enabled_charactermaps(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;)Z"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    invoke-interface {v5}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v5

    invoke-interface {v5}, Lcom/touchtype_fluency/Predictor;->getInputMapper()Lcom/touchtype_fluency/InputMapper;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/touchtype_fluency/util/LanguagePack;

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/charactermap.json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/touchtype_fluency/InputMapper;->setLayout(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/touchtype_fluency/InvalidDataException;->printStackTrace()V

    :goto_1
    return v4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    :cond_0
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public mergedAddWordList()V
    .locals 17

    const-string v14, "SamsungIME_SYNC"

    const-string v15, "mergedAddWordList()"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/io/File;

    const-string v14, "/data/data/com.sec.android.inputmethod/databases"

    invoke-direct {v5, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, v2

    array-length v12, v1

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v12, :cond_a

    aget-object v7, v1, v9

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const-string v14, "AddWordList_Default"

    invoke-virtual {v8, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "AddWordList_Korean"

    invoke-virtual {v8, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_7

    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    if-eqz v14, :cond_5

    new-instance v11, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/FileReader;

    invoke-direct {v14, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v11, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v13, Lcom/touchtype_fluency/Sequence;

    invoke-direct {v13}, Lcom/touchtype_fluency/Sequence;-><init>()V

    sget-object v14, Lcom/touchtype_fluency/Sequence$Type;->MESSAGE_START:Lcom/touchtype_fluency/Sequence$Type;

    invoke-virtual {v13, v14}, Lcom/touchtype_fluency/Sequence;->setType(Lcom/touchtype_fluency/Sequence$Type;)V

    const/4 v4, 0x0

    :cond_3
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->learnStringWithExclusionPattern(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_3

    add-int/lit8 v4, v4, 0x1

    new-instance v14, Lcom/touchtype_fluency/Term;

    invoke-direct {v14, v3}, Lcom/touchtype_fluency/Term;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Lcom/touchtype_fluency/Sequence;->add(Ljava/lang/Object;)Z

    const/16 v14, 0x1388

    if-le v4, v14, :cond_3

    const-string v14, "SamsungIME_SYNC"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Too much words, so no more supported:count"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    invoke-interface {v14, v13}, Lcom/touchtype_fluency/Trainer;->addSequence(Lcom/touchtype_fluency/Sequence;)V

    const-string v14, "SamsungIME_SYNC"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Add word List: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " words is added"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v10, v11

    :cond_5
    if-eqz v10, :cond_6

    :try_start_2
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_6
    :goto_2
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v14

    if-eqz v14, :cond_9

    :cond_7
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v6

    :goto_4
    :try_start_3
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v10, :cond_6

    :try_start_4
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v14

    goto :goto_2

    :catchall_0
    move-exception v14

    :goto_5
    if-eqz v10, :cond_8

    :try_start_5
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_8
    :goto_6
    throw v14

    :cond_9
    const-string v14, "SamsungIME_SYNC"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mergedAddWordList(): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " fail to delete"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_a
    new-instance v14, Ljava/lang/Thread;

    new-instance v15, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$9;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$9;-><init>(Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;)V

    invoke-direct {v14, v15}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v14}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :catch_2
    move-exception v14

    goto :goto_2

    :catch_3
    move-exception v15

    goto :goto_6

    :catchall_1
    move-exception v14

    move-object v10, v11

    goto :goto_5

    :catch_4
    move-exception v6

    move-object v10, v11

    goto :goto_4
.end method

.method public previewFlow(Lcom/touchtype_fluency/Sequence;[Landroid/graphics/PointF;I[JLjava/lang/String;IZ)I
    .locals 14

    const/4 v8, 0x6

    new-array v7, v8, [J

    fill-array-data v7, :array_0

    iget-boolean v8, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIsPreviewFlow:Z

    if-nez v8, :cond_4

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x6

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {p1}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v9

    invoke-virtual {p1, v8, v9}, Lcom/touchtype_fluency/Sequence;->subList(II)Ljava/util/List;

    move-result-object v2

    iget-object v8, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPreviewSequence:Lcom/touchtype_fluency/Sequence;

    if-nez v8, :cond_2

    new-instance v8, Lcom/touchtype_fluency/Sequence;

    invoke-direct {v8}, Lcom/touchtype_fluency/Sequence;-><init>()V

    iput-object v8, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPreviewSequence:Lcom/touchtype_fluency/Sequence;

    :goto_0
    iget-object v8, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPreviewSequence:Lcom/touchtype_fluency/Sequence;

    invoke-virtual {v8, v2}, Lcom/touchtype_fluency/Sequence;->addAll(Ljava/util/Collection;)Z

    iget-object v8, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v8}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v8

    if-lez v8, :cond_0

    if-eqz p5, :cond_0

    iget-object v8, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPreviewSequence:Lcom/touchtype_fluency/Sequence;

    move-object/from16 v0, p5

    invoke-virtual {v8, v0}, Lcom/touchtype_fluency/Sequence;->append(Ljava/lang/String;)V

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mAppendVerbatimInSequence:Z

    :cond_0
    iget-object v8, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPreviewSequence:Lcom/touchtype_fluency/Sequence;

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setContactSpecificSequence(Lcom/touchtype_fluency/Sequence;Z)Z

    new-instance v8, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v8}, Lcom/touchtype_fluency/TouchHistory;-><init>()V

    iput-object v8, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    const/4 v3, 0x0

    :goto_1
    move/from16 v0, p3

    if-ge v3, v0, :cond_3

    aget-object v8, p2, v3

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    new-instance v9, Lcom/touchtype_fluency/Point;

    aget-object v10, p2, v3

    iget v10, v10, Landroid/graphics/PointF;->x:F

    aget-object v11, p2, v3

    iget v11, v11, Landroid/graphics/PointF;->y:F

    invoke-direct {v9, v10, v11}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    aget-wide v10, p4, v3

    invoke-virtual {v8, v9, v10, v11}, Lcom/touchtype_fluency/TouchHistory;->appendSample(Lcom/touchtype_fluency/Point;J)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v8, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPreviewSequence:Lcom/touchtype_fluency/Sequence;

    invoke-virtual {v8}, Lcom/touchtype_fluency/Sequence;->clear()V

    goto :goto_0

    :cond_3
    move/from16 v0, p3

    iput v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPreviewFlowTouchPointIndex:I

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIsPreviewFlow:Z

    :goto_2
    if-eqz p7, :cond_9

    const/4 v3, 0x0

    :goto_3
    const/4 v8, 0x3

    if-ge v3, v8, :cond_9

    iget-object v8, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    new-instance v9, Lcom/touchtype_fluency/Point;

    add-int/lit8 v10, p3, -0x1

    aget-object v10, p2, v10

    iget v10, v10, Landroid/graphics/PointF;->x:F

    add-int/lit8 v11, p3, -0x1

    aget-object v11, p2, v11

    iget v11, v11, Landroid/graphics/PointF;->y:F

    invoke-direct {v9, v10, v11}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    add-int/lit8 v10, p3, -0x1

    aget-wide v10, p4, v10

    aget-wide v12, v7, v3

    add-long/2addr v10, v12

    invoke-virtual {v8, v9, v10, v11}, Lcom/touchtype_fluency/TouchHistory;->appendSample(Lcom/touchtype_fluency/Point;J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    iget v3, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPreviewFlowTouchPointIndex:I

    :goto_4
    move/from16 v0, p3

    if-ge v3, v0, :cond_8

    aget-object v8, p2, v3

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    if-lt v3, v8, :cond_7

    aget-wide v8, p4, v3

    iget-wide v10, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    cmp-long v8, v8, v10

    if-gtz v8, :cond_7

    aget-wide v8, p4, v3

    iget-wide v10, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x64

    cmp-long v8, v8, v10

    if-lez v8, :cond_7

    const/4 v6, 0x0

    :goto_5
    const/4 v8, 0x6

    if-ge v6, v8, :cond_5

    add-int/lit8 v8, v3, -0x1

    aget-wide v8, p4, v8

    aget-wide v10, v7, v6

    add-long v4, v8, v10

    aget-wide v8, p4, v3

    cmp-long v8, v4, v8

    if-lez v8, :cond_6

    :cond_5
    :goto_6
    aget-wide v8, p4, v3

    iput-wide v8, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTime:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    iget-object v8, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    new-instance v9, Lcom/touchtype_fluency/Point;

    add-int/lit8 v10, v3, -0x1

    aget-object v10, p2, v10

    iget v10, v10, Landroid/graphics/PointF;->x:F

    add-int/lit8 v11, v3, -0x1

    aget-object v11, p2, v11

    iget v11, v11, Landroid/graphics/PointF;->y:F

    invoke-direct {v9, v10, v11}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    invoke-virtual {v8, v9, v4, v5}, Lcom/touchtype_fluency/TouchHistory;->appendSample(Lcom/touchtype_fluency/Point;J)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_7
    iget-object v8, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    new-instance v9, Lcom/touchtype_fluency/Point;

    aget-object v10, p2, v3

    iget v10, v10, Landroid/graphics/PointF;->x:F

    aget-object v11, p2, v3

    iget v11, v11, Landroid/graphics/PointF;->y:F

    invoke-direct {v9, v10, v11}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    aget-wide v10, p4, v3

    invoke-virtual {v8, v9, v10, v11}, Lcom/touchtype_fluency/TouchHistory;->appendSample(Lcom/touchtype_fluency/Point;J)V

    goto :goto_6

    :cond_8
    move/from16 v0, p3

    iput v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPreviewFlowTouchPointIndex:I

    goto/16 :goto_2

    :cond_9
    iget-object v8, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPreviewSequence:Lcom/touchtype_fluency/Sequence;

    iget-object v9, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    move/from16 v0, p6

    invoke-direct {p0, v8, v9, v0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->processPreviewFlow(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;I)V

    const/4 v8, 0x1

    return v8

    :array_0
    .array-data 8
        0x8b
        0xe2
        0x16e
        0x251
        0x3bf
        0x610
    .end array-data
.end method

.method printCustomParametersSettings()V
    .locals 18
    .annotation build Lcom/sec/android/inputmethod/annotation/UsedForTest;
    .end annotation

    const-string v15, "SamsungIME"

    const-string v16, "printCustomSettings"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v15}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v15

    invoke-interface {v15}, Lcom/touchtype_fluency/Session;->getParameterSet()Lcom/touchtype_fluency/ParameterSet;

    move-result-object v12

    invoke-interface {v12}, Lcom/touchtype_fluency/ParameterSet;->getTargets()[Ljava/lang/String;

    move-result-object v14

    move-object v1, v14

    array-length v7, v1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_3

    aget-object v13, v1, v6

    invoke-interface {v12, v13}, Lcom/touchtype_fluency/ParameterSet;->getProperties(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    move-object v2, v10

    array-length v8, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v8, :cond_2

    aget-object v11, v2, v5

    invoke-interface {v12, v13, v11}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v9

    invoke-interface {v9}, Lcom/touchtype_fluency/Parameter;->defaultValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v9}, Lcom/touchtype_fluency/Parameter;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->isArray()Z

    move-result v15

    if-eqz v15, :cond_1

    move-object v15, v4

    check-cast v15, [Ljava/lang/Object;

    check-cast v15, [Ljava/lang/Object;

    move-object/from16 v16, v3

    check-cast v16, [Ljava/lang/Object;

    check-cast v16, [Ljava/lang/Object;

    invoke-static/range {v15 .. v16}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string v15, "SamsungIME"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "-"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": current="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", default="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string v15, "SamsungIME"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "-"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": current="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", default="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method printPredictionsDebugDetails(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;ILcom/touchtype_fluency/Predictions;)V
    .locals 5
    .annotation build Lcom/sec/android/inputmethod/annotation/UsedForTest;
    .end annotation

    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DETAIL INFO - buildPredictionsInternal] touchHistory :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/touchtype_fluency/TouchHistory;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DETAIL INFO - buildPredictionsInternal] predictions :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p4}, Lcom/touchtype_fluency/Predictions;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p4}, Lcom/touchtype_fluency/Predictions;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/touchtype_fluency/Prediction;

    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DETAIL INFO]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/touchtype_fluency/Prediction;->getTags()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DETAIL INFO - buildPredictionsInternal] sequence : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DETAIL INFO - buildPredictionsInternal] getResultsFilter : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p3}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getResultsFilter(I)Lcom/touchtype_fluency/ResultsFilter;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public printSwiftkeyVersion(Ljava/io/PrintWriter;)V
    .locals 6

    new-instance v3, Landroid/util/PrintWriterPrinter;

    invoke-direct {v3, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    invoke-static {}, Lcom/touchtype_fluency/SwiftKeySDK;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/touchtype_fluency/util/LanguagePackManager;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/touchtype/samsung/supportlibrary/SupportLibrary;->getVersion()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-interface {v3, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    const-string v4, "===== SwiftkeyVersion ====="

    invoke-interface {v3, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SDKVersion : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LPMVersion : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SupportLibraryVersion : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method public processFlow([Landroid/graphics/PointF;I[J)V
    .locals 7

    const/4 v6, 0x0

    iget-boolean v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIsPreviewFlow:Z

    if-nez v1, :cond_1

    new-instance v1, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v1}, Lcom/touchtype_fluency/TouchHistory;-><init>()V

    iput-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_4

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    new-instance v2, Lcom/touchtype_fluency/Point;

    aget-object v3, p1, v0

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aget-object v4, p1, v0

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v3, v4}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    aget-wide v4, p3, v0

    invoke-virtual {v1, v2, v4, v5}, Lcom/touchtype_fluency/TouchHistory;->appendSample(Lcom/touchtype_fluency/Point;J)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPreviewFlowTouchPointIndex:I

    :goto_1
    if-ge v0, p2, :cond_3

    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    new-instance v2, Lcom/touchtype_fluency/Point;

    aget-object v3, p1, v0

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aget-object v4, p1, v0

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v3, v4}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    aget-wide v4, p3, v0

    invoke-virtual {v1, v2, v4, v5}, Lcom/touchtype_fluency/TouchHistory;->appendSample(Lcom/touchtype_fluency/Point;J)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iput-boolean v6, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIsPreviewFlow:Z

    iput-boolean v6, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mAppendVerbatimInSequence:Z

    iput v6, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPreviewFlowTouchPointIndex:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    :cond_4
    return-void
.end method

.method public reBuildAutoTextPredictions(Lcom/touchtype_fluency/Predictions;)Lcom/touchtype_fluency/Predictions;
    .locals 14

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v0, v11, :cond_3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/touchtype_fluency/Prediction;

    invoke-virtual {v4}, Lcom/touchtype_fluency/Prediction;->getTags()Ljava/util/Set;

    move-result-object v8

    const/4 v1, 0x0

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v11, "source"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "autotext.lm"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "encoding:"

    const-string v12, ""

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v11, 0x0

    const-string v12, ","

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/touchtype_fluency/Hangul;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "SamsungIME"

    const-string v12, "<<reBuildAutoTextPredictions>> Find shortCutText"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v3, v11, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0, v3}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->convertPredictions(Ljava/util/ArrayList;)Lcom/touchtype_fluency/Predictions;

    move-result-object v11

    return-object v11
.end method

.method public registerPreviewFlowPredictionListener(Lcom/touchtype_fluency/util/PredictionsListener;)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0, p1}, Lcom/touchtype_fluency/util/SwiftKeySession;->setPredictionsListener(Lcom/touchtype_fluency/util/PredictionsListener;)V

    return-void
.end method

.method public removeCurrentTermFromTemporaryModel()V
    .locals 3

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    invoke-interface {v1}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v1

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->temporaryDynamicModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/touchtype_fluency/Predictor;->queryTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    invoke-interface {v1}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v1

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->temporaryDynamicModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/touchtype_fluency/Trainer;->removeTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)V

    :cond_0
    return-void
.end method

.method public removeTerm(I)Z
    .locals 13

    const/4 v10, 0x0

    const/4 v12, 0x0

    iget-object v9, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v9}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v9

    if-le v9, p1, :cond_0

    if-gez p1, :cond_1

    :cond_0
    iget-object v9, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mBackupPredictions:Lcom/touchtype_fluency/Predictions;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mBackupPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v9}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v9

    if-le v9, p1, :cond_8

    if-ltz p1, :cond_8

    :cond_1
    iget-object v9, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mBackupPredictions:Lcom/touchtype_fluency/Predictions;

    iput-object v9, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    iput-object v12, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mBackupPredictions:Lcom/touchtype_fluency/Predictions;

    :cond_2
    iget v9, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mFieldSpecificType:I

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-direct {p0, v9}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getFilteredFieldSpecificPredictions(Lcom/touchtype_fluency/Predictions;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/touchtype_fluency/Prediction;

    invoke-virtual {v9}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/touchtype_fluency/Prediction;

    :goto_0
    iget-object v9, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    invoke-virtual {p0, v8}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->toInitialCaps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v11}, Lcom/touchtype_fluency/Trainer;->removeTerm(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSkipLearningTerm:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSkipLearningTerm:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p0, v12, v12}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setCacheSequenceAndTouchHistory(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;)V

    invoke-virtual {v4}, Lcom/touchtype_fluency/Prediction;->getTags()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v9, "source"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "autotext.lm"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    :try_start_0
    iget-object v9, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    invoke-interface {v9}, Lcom/touchtype_fluency/Trainer;->write()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    new-instance v1, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;

    iget-object v9, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/ime/framework/util/Utils;->isKoreanLetter(C)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v9, "KOREAN"

    invoke-virtual {v1, v8, v9}, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->addRemovedWord(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/4 v9, 0x1

    :goto_3
    return v9

    :cond_6
    iget-object v9, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v9, p1}, Lcom/touchtype_fluency/Predictions;->get(I)Lcom/touchtype_fluency/Prediction;

    move-result-object v9

    invoke-virtual {v9}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v9, p1}, Lcom/touchtype_fluency/Predictions;->get(I)Lcom/touchtype_fluency/Prediction;

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_7
    const-string v9, "ALPHA"

    invoke-virtual {v1, v8, v9}, Lcom/sec/android/inputmethod/databases/BnSRemovedDBHelper;->addRemovedWord(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move v9, v10

    goto :goto_3
.end method

.method public removeTerm(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    invoke-virtual {p0, p1}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->toInitialCaps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Trainer;->removeTerm(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    invoke-virtual {p0, p1}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->toInitialCaps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->temporaryDynamicModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/touchtype_fluency/Trainer;->removeTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)V

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSkipLearningTerm:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSkipLearningTerm:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0, v3, v3}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setCacheSequenceAndTouchHistory(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;)V

    const/4 v0, 0x1

    return v0
.end method

.method public replaceLanguageModel(Ljava/util/List;Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Lcom/touchtype_fluency/util/LanguagePackManager;",
            "Lcom/touchtype_fluency/util/CompletionListener;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 p2, 0x0

    :cond_3
    if-nez p1, :cond_4

    if-eqz p2, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/touchtype_fluency/util/SwiftKeySession;->replaceLanguages(Ljava/util/List;Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V

    :cond_5
    invoke-virtual {p0, v1, v1}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setCacheSequenceAndTouchHistory(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;)V

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    iput-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    iput-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    iput-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->dispose()V

    iput-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mReady:Z

    return-void
.end method

.method public resetParameter()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getParameterSet()Lcom/touchtype_fluency/ParameterSet;

    move-result-object v0

    invoke-interface {v0}, Lcom/touchtype_fluency/ParameterSet;->reset()V

    :cond_0
    return-void
.end method

.method public resetParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getParameterSet()Lcom/touchtype_fluency/ParameterSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v0

    invoke-interface {v0}, Lcom/touchtype_fluency/Parameter;->reset()V

    :cond_0
    return-void
.end method

.method public resetTemporaryModel()V
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDiableTempDynamicModel:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->resetTemporaryModel()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDiableTempDynamicModel:Z

    :cond_0
    return-void
.end method

.method public restoredTouchHistory(Ljava/lang/String;)Lcom/touchtype_fluency/TouchHistory;
    .locals 6

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistoryRepository:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, Lcom/touchtype_fluency/TouchHistory;

    move-object v4, v0
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    goto :goto_0
.end method

.method public romajiToHiragana(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/touchtype_fluency/Japanese;->romajiToHiragana(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public saveAndClear()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v0}, Lcom/touchtype_fluency/TouchHistory;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-boolean v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDirtyTempDynamicModel:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->resetTemporaryModel()V

    iput-boolean v3, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDirtyTempDynamicModel:Z

    :cond_0
    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mKPMLocker:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDirtyKeyPressModel:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    invoke-interface {v0}, Lcom/touchtype_fluency/Predictor;->getKeyPressModel()Lcom/touchtype_fluency/KeyPressModel;

    move-result-object v0

    iget-object v2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/touchtype_fluency/KeyPressModel;->saveFile(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDirtyKeyPressModel:Z

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDirtyDynamicModel:Z

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDirtyDynamicModel:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$2;

    invoke-direct {v1, p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$2;-><init>(Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    iget-boolean v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIsMergeRemoveList:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mergeRemoveDB()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$3;

    invoke-direct {v1, p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$3;-><init>(Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected saveAndLoadKeyPressModel(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashSet;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/touchtype_fluency/KeyShape;",
            "[",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v5

    invoke-interface {v5}, Lcom/touchtype_fluency/Predictor;->getKeyPressModel()Lcom/touchtype_fluency/KeyPressModel;

    move-result-object v4

    iget-object v7, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mKPMLocker:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    invoke-interface {v4, v6}, Lcom/touchtype_fluency/KeyPressModel;->saveFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    iput-object p1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    :try_start_2
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v6

    if-eqz v6, :cond_1

    :try_start_3
    iget-object v6, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    invoke-interface {v4, v6}, Lcom/touchtype_fluency/KeyPressModel;->loadFile(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    :try_start_4
    iget-object v6, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    invoke-static {v6}, Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/AdjacentErrorCorrection;->getInstance(Ljava/lang/String;)Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/AdjacentErrorCorrection;

    move-result-object v6

    iput-object v6, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mAdjacentErrorCorrection:Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/AdjacentErrorCorrection;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    :try_start_5
    iget-object v6, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    if-eqz v6, :cond_3

    if-eqz p2, :cond_3

    new-instance v6, Ljava/io/File;

    iget-object v8, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v8, 0x0

    cmp-long v6, v2, v8

    if-eqz v6, :cond_3

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v6

    mul-int/lit8 v6, v6, 0x64

    int-to-long v8, v6

    cmp-long v6, v2, v8

    if-gez v6, :cond_3

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v6

    :catch_0
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v6

    :try_start_8
    iget-object v8, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    if-eqz v8, :cond_2

    if-eqz p2, :cond_2

    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-eqz v8, :cond_2

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v8

    mul-int/lit8 v8, v8, 0x64

    int-to-long v8, v8

    cmp-long v8, v2, v8

    if-gez v8, :cond_2

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catch_2
    move-exception v0

    :try_start_9
    invoke-virtual {v0}, Lcom/touchtype_fluency/InvalidDataException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    :cond_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDirtyKeyPressModel:Z

    invoke-interface {v4, p2}, Lcom/touchtype_fluency/KeyPressModel;->set(Ljava/util/Map;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    :cond_2
    :try_start_a
    throw v6

    :cond_3
    invoke-virtual {p0, p5}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->loadKorCharacterMap(I)V

    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const/high16 v6, 0x6b6f0000

    if-eq p5, v6, :cond_4

    invoke-interface {v5}, Lcom/touchtype_fluency/Predictor;->getInputMapper()Lcom/touchtype_fluency/InputMapper;

    move-result-object v1

    if-eqz p3, :cond_6

    invoke-interface {v1, p3}, Lcom/touchtype_fluency/InputMapper;->setLayout(Ljava/util/Map;)V

    :cond_4
    :goto_3
    if-eqz p4, :cond_5

    iput-object p4, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mLayoutKeys:Ljava/util/Set;

    iget-object v6, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mLayoutKeys:Ljava/util/Set;

    iget-object v7, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->DEFAULT_SYMBOL_LAYOUT_KEY:[Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v6, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mLayoutKeys:Ljava/util/Set;

    check-cast v6, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->isEmojiLMLoaded()Z

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setLayoutFilter(Ljava/util/HashSet;Z)V

    :cond_5
    return-void

    :cond_6
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v6}, Lcom/touchtype_fluency/InputMapper;->setLayout(Ljava/util/Map;)V

    goto :goto_3

    :catch_4
    move-exception v6

    goto/16 :goto_0

    :catch_5
    move-exception v6

    goto/16 :goto_0
.end method

.method protected saveAndLoadKeyPressModel(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashSet;ILjava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/touchtype_fluency/KeyShape;",
            "[",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v7

    invoke-interface {v7}, Lcom/touchtype_fluency/Predictor;->getKeyPressModel()Lcom/touchtype_fluency/KeyPressModel;

    move-result-object v6

    iget-object v9, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mKPMLocker:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget-object v8, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    invoke-interface {v6, v8}, Lcom/touchtype_fluency/KeyPressModel;->saveFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    iput-object p1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    :try_start_2
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v8

    if-eqz v8, :cond_1

    :try_start_3
    iget-object v8, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    invoke-interface {v6, v8}, Lcom/touchtype_fluency/KeyPressModel;->loadFile(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    :try_start_4
    iget-object v8, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    invoke-static {v8}, Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/AdjacentErrorCorrection;->getInstance(Ljava/lang/String;)Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/AdjacentErrorCorrection;

    move-result-object v8

    iput-object v8, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mAdjacentErrorCorrection:Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/AdjacentErrorCorrection;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    :try_start_5
    iget-object v8, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    if-eqz v8, :cond_3

    if-eqz p2, :cond_3

    new-instance v8, Ljava/io/File;

    iget-object v10, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmp-long v8, v4, v10

    if-eqz v8, :cond_3

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v8

    mul-int/lit8 v8, v8, 0x64

    int-to-long v10, v8

    cmp-long v8, v4, v10

    if-gez v8, :cond_3

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    new-instance v8, Ljava/io/IOException;

    invoke-direct {v8}, Ljava/io/IOException;-><init>()V

    throw v8

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v8

    :catch_0
    move-exception v2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v8

    :try_start_8
    iget-object v10, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    if-eqz v10, :cond_2

    if-eqz p2, :cond_2

    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-eqz v10, :cond_2

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v10

    mul-int/lit8 v10, v10, 0x64

    int-to-long v10, v10

    cmp-long v10, v4, v10

    if-gez v10, :cond_2

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    new-instance v8, Ljava/io/IOException;

    invoke-direct {v8}, Ljava/io/IOException;-><init>()V

    throw v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catch_2
    move-exception v2

    :try_start_9
    invoke-virtual {v2}, Lcom/touchtype_fluency/InvalidDataException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    new-instance v8, Ljava/io/IOException;

    invoke-direct {v8}, Ljava/io/IOException;-><init>()V

    throw v8

    :cond_1
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDirtyKeyPressModel:Z

    invoke-interface {v6, p2}, Lcom/touchtype_fluency/KeyPressModel;->set(Ljava/util/Map;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    :cond_2
    :try_start_a
    throw v8

    :cond_3
    move/from16 v0, p5

    move-object/from16 v1, p6

    invoke-virtual {p0, v0, v1}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->loadKorCharacterMap(ILjava/util/List;)V

    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const/high16 v8, 0x6b6f0000

    move/from16 v0, p5

    if-eq v0, v8, :cond_4

    invoke-interface {v7}, Lcom/touchtype_fluency/Predictor;->getInputMapper()Lcom/touchtype_fluency/InputMapper;

    move-result-object v3

    if-eqz p3, :cond_6

    invoke-interface {v3, p3}, Lcom/touchtype_fluency/InputMapper;->setLayout(Ljava/util/Map;)V

    :cond_4
    :goto_3
    if-eqz p4, :cond_5

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mLayoutKeys:Ljava/util/Set;

    iget-object v8, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mLayoutKeys:Ljava/util/Set;

    iget-object v9, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->DEFAULT_SYMBOL_LAYOUT_KEY:[Ljava/lang/String;

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v8, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mLayoutKeys:Ljava/util/Set;

    check-cast v8, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->isEmojiLMLoaded()Z

    move-result v9

    invoke-virtual {p0, v8, v9}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setLayoutFilter(Ljava/util/HashSet;Z)V

    :cond_5
    return-void

    :cond_6
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v3, v8}, Lcom/touchtype_fluency/InputMapper;->setLayout(Ljava/util/Map;)V

    goto :goto_3

    :catch_4
    move-exception v8

    goto/16 :goto_0

    :catch_5
    move-exception v8

    goto/16 :goto_0
.end method

.method protected saveAndLoadKeyPressModel(Ljava/util/HashMap;Ljava/util/HashSet;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/touchtype_fluency/KeyShape;",
            "[",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v1

    invoke-interface {v1}, Lcom/touchtype_fluency/Predictor;->getKeyPressModel()Lcom/touchtype_fluency/KeyPressModel;

    move-result-object v0

    iget-object v3, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mKPMLocker:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/touchtype_fluency/KeyPressModel;->saveFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDirtyKeyPressModel:Z

    invoke-interface {v0, p1}, Lcom/touchtype_fluency/KeyPressModel;->set(Ljava/util/Map;)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mLayoutKeys:Ljava/util/Set;

    iget-object v2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mLayoutKeys:Ljava/util/Set;

    iget-object v3, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->DEFAULT_SYMBOL_LAYOUT_KEY:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mLayoutKeys:Ljava/util/Set;

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->isEmojiLMLoaded()Z

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setLayoutFilter(Ljava/util/HashSet;Z)V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public setBlacklist(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    invoke-interface {v0, p1}, Lcom/touchtype_fluency/Trainer;->setBlacklist(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected declared-synchronized setCacheSequenceAndTouchHistory(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCachedSequence:Lcom/touchtype_fluency/Sequence;

    iput-object p2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCachedTouchHistory:Lcom/touchtype_fluency/TouchHistory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setChinesePhoneticIndex(Lcom/touchtype_fluency/Sequence;I)V
    .locals 0

    return-void
.end method

.method public setChineseSearchType(IZ)V
    .locals 0

    return-void
.end method

.method public setContactSpecificID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mContactSpecificID:Ljava/lang/String;

    return-void
.end method

.method protected setContactSpecificSequence(Lcom/touchtype_fluency/Sequence;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->isEnableContactSpecificContext(Lcom/touchtype_fluency/Sequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mContactSpecificID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/touchtype_fluency/Sequence;->setContact(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/touchtype_fluency/Sequence;->setContact(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCurrentInputType(Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Lcom/touchtype_fluency/util/LanguagePackManager;->setCurrentInputType(Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/String;)V

    return-void
.end method

.method public setDynamicModelsEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0, p1}, Lcom/touchtype_fluency/util/SwiftKeySession;->setDynamicModelsEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setEmojiPredictionEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIsEmojiEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIsEmojiEnabled:Z

    invoke-virtual {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->enableAllModel()V

    :cond_0
    return-void
.end method

.method public setExclusionPattern()V
    .locals 4

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    new-instance v1, Lcom/touchtype_fluency/util/ExclusionPattern;

    iget-object v2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDefaultExclusionPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/touchtype_fluency/util/ExclusionPattern;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->setExclusionPattern(Lcom/touchtype_fluency/util/ExclusionPattern;)V

    :cond_0
    return-void
.end method

.method protected setFieldSpecificSequence(Lcom/touchtype_fluency/Sequence;)V
    .locals 1

    iget v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mFieldSpecificType:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mFieldSpecificType:I

    invoke-direct {p0, v0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getFieldSpecificID(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/touchtype_fluency/Sequence;->setFieldHint(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/touchtype_fluency/Sequence;->setFieldHint(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFieldSpecificType(I)V
    .locals 5

    iget v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mFieldSpecificType:I

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_1

    const-string v0, "dynamic-term-model"

    const-string v1, "dynamic-scale-powers"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Float;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const v4, 0x3e4ccccd    # 0.2f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/high16 v4, 0x3e000000    # 0.125f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const v4, 0x3dcccccd    # 0.1f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setParameter(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Float;)V

    :cond_0
    :goto_0
    iput p1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mFieldSpecificType:I

    return-void

    :cond_1
    const-string v0, "dynamic-term-model"

    const-string v1, "dynamic-scale-powers"

    invoke-virtual {p0, v0, v1}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->resetParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setIntentionalEvent(Ljava/lang/String;)V
    .locals 2

    const-string v0, "_-\'&"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIntentionalEvents:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIntentionalEvents:Ljava/util/Set;

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Predictor;->setIntentionalEvents(Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method protected setKeyShpae(Lcom/touchtype_fluency/KeyShape;[Ljava/lang/Character;)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v1

    invoke-interface {v1}, Lcom/touchtype_fluency/Predictor;->getKeyPressModel()Lcom/touchtype_fluency/KeyPressModel;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/touchtype_fluency/KeyPressModel;->setKeyShape(Lcom/touchtype_fluency/KeyShape;[Ljava/lang/Character;)V

    goto :goto_0
.end method

.method protected setLayoutFilter(Ljava/util/HashSet;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, Lcom/touchtype_fluency/CodepointRange;->fromString(Ljava/lang/String;)Lcom/touchtype_fluency/CodepointRange;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v4, "SamsungIME"

    const-string v5, "IllegalArgumentException, CodepointRange must be exactly one code point long"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget-object v4, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mEmojiCprList:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v4

    invoke-interface {v4}, Lcom/touchtype_fluency/Predictor;->getLayoutFilter()Lcom/touchtype_fluency/LayoutFilter;

    move-result-object v4

    invoke-interface {v4}, Lcom/touchtype_fluency/LayoutFilter;->clear()V

    invoke-virtual {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v4

    invoke-interface {v4}, Lcom/touchtype_fluency/Predictor;->getLayoutFilter()Lcom/touchtype_fluency/LayoutFilter;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/touchtype_fluency/LayoutFilter;->set(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public setLiveLanguageModelsEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0, p1}, Lcom/touchtype_fluency/util/SwiftKeySession;->setLiveLanguageModelsEnabled(Z)V

    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    iget-object v2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    invoke-interface {v2}, Lcom/touchtype_fluency/Session;->getParameterSet()Lcom/touchtype_fluency/ParameterSet;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1, p3}, Lcom/touchtype_fluency/Parameter;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/touchtype_fluency/ParameterOutOfRangeException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/touchtype_fluency/ParameterOutOfRangeException;->printStackTrace()V

    goto :goto_0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    iget-object v2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    invoke-interface {v2}, Lcom/touchtype_fluency/Session;->getParameterSet()Lcom/touchtype_fluency/ParameterSet;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/touchtype_fluency/Parameter;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/touchtype_fluency/ParameterOutOfRangeException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/touchtype_fluency/ParameterOutOfRangeException;->printStackTrace()V

    goto :goto_0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Float;)V
    .locals 3

    iget-object v2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    invoke-interface {v2}, Lcom/touchtype_fluency/Session;->getParameterSet()Lcom/touchtype_fluency/ParameterSet;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1, p3}, Lcom/touchtype_fluency/Parameter;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/touchtype_fluency/ParameterOutOfRangeException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/touchtype_fluency/ParameterOutOfRangeException;->printStackTrace()V

    goto :goto_0
.end method

.method public setPredictions(Lcom/touchtype_fluency/Predictions;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    return-void
.end method

.method public setPredictionsListener(Lcom/touchtype_fluency/util/PredictionsListener;)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0, p1}, Lcom/touchtype_fluency/util/SwiftKeySession;->setPredictionsListener(Lcom/touchtype_fluency/util/PredictionsListener;)V

    return-void
.end method

.method public setPreviewFlowPredicions(Lcom/touchtype_fluency/Predictions;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPreviewFlowPredictions:Lcom/touchtype_fluency/Predictions;

    return-void
.end method

.method public setReservePredictions(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->clearReservePredictions()V

    if-eqz p1, :cond_0

    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    if-nez v5, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v5}, Lcom/touchtype_fluency/Predictions;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/touchtype_fluency/Prediction;

    invoke-virtual {v3}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v2, 0x1

    :cond_3
    if-nez v2, :cond_4

    iget-object v5, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mReservePredictions:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setSequenceType(Lcom/touchtype_fluency/Sequence$Type;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSequnceType:Lcom/touchtype_fluency/Sequence$Type;

    return-void
.end method

.method public setTouchHistory(Lcom/touchtype_fluency/TouchHistory;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public setTouchHistory(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v0, p1}, Lcom/touchtype_fluency/TouchHistory;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected shouldLoadKeyPressModel(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startChonjiinFlow()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCharacterMapHelper:Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;

    invoke-virtual {p0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v1

    invoke-interface {v1}, Lcom/touchtype_fluency/Predictor;->getInputMapper()Lcom/touchtype_fluency/InputMapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ime/framework/engine/swiftkey/CharacterMapHelper;->startChonjiinFlow(Lcom/touchtype_fluency/InputMapper;)V

    return-void
.end method

.method public storeTouchHistory(Ljava/lang/String;I)V
    .locals 4

    const/4 v0, 0x0

    const/high16 v1, 0x6b6f0000

    if-ne p2, v1, :cond_1

    invoke-static {p1}, Lcom/touchtype_fluency/Hangul;->split(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v2}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistoryRepository:Ljava/util/LinkedList;

    new-instance v2, Landroid/util/Pair;

    iget-object v3, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v2, p1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistoryRepository:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistoryRepository:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method toInitialCaps(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    if-nez p1, :cond_0

    const/4 v7, 0x0

    :goto_0
    return-object v7

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    const-string v7, ""

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    :goto_1
    if-ge v4, v6, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method public tokenizerSplit(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;
    .locals 2

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    invoke-interface {v1, p1}, Lcom/touchtype_fluency/Tokenizer;->split(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public trimSwiftkeyMemory(Ljava/util/List;Lcom/touchtype_fluency/util/SwiftKeySession;Lcom/touchtype_fluency/util/LanguagePackManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Lcom/touchtype_fluency/util/SwiftKeySession;",
            "Lcom/touchtype_fluency/util/LanguagePackManager;",
            ")V"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p2}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v2

    new-instance v0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$8;

    invoke-direct {v0, p0, v2}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$8;-><init>(Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;Lcom/touchtype_fluency/Session;)V

    invoke-virtual {p2, v1, p3, v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->preserveLanguages(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/PreservationListener;)V

    return-void
.end method

.method public updateCPSpell(I)V
    .locals 0

    return-void
.end method

.method public updateKeyPressModeling(Lcom/touchtype_fluency/TouchHistory;Ljava/lang/StringBuilder;)V
    .locals 4

    iget-object v3, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    invoke-interface {v3, p1, v1}, Lcom/touchtype_fluency/Trainer;->learnFrom(Lcom/touchtype_fluency/TouchHistory;[Ljava/lang/String;)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDirtyKeyPressModel:Z

    :cond_1
    return-void
.end method

.method public updateShiftState(ZZ)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/touchtype_fluency/TouchHistory$ShiftState;->SHIFTED:Lcom/touchtype_fluency/TouchHistory$ShiftState;

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mShiftState:Lcom/touchtype_fluency/TouchHistory$ShiftState;

    sget-object v0, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;->UPPER_CASE:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCapitalization:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    :goto_0
    invoke-virtual {p0, v1, v1}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setCacheSequenceAndTouchHistory(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/touchtype_fluency/TouchHistory$ShiftState;->SHIFTED:Lcom/touchtype_fluency/TouchHistory$ShiftState;

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mShiftState:Lcom/touchtype_fluency/TouchHistory$ShiftState;

    sget-object v0, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;->INITIAL_UPPER_CASE:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCapitalization:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/touchtype_fluency/TouchHistory$ShiftState;->UNSHIFTED:Lcom/touchtype_fluency/TouchHistory$ShiftState;

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mShiftState:Lcom/touchtype_fluency/TouchHistory$ShiftState;

    sget-object v0, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;->LOWER_CASE:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    iput-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCapitalization:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    goto :goto_0
.end method
