.class public Lcom/ime/framework/view/SymbolScrollView;
.super Landroid/widget/ScrollView;
.source "SymbolScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ime/framework/view/SymbolScrollView$Callback;,
        Lcom/ime/framework/view/SymbolScrollView$SymbolScrollViewHandler;
    }
.end annotation


# static fields
.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static DEBUG:Z = false

.field public static final EMOTION_SYMBOL:I = 0x3

.field private static EMOTION_TEXT_WIDTH_UNIT:I = 0x0

.field public static final FLOATING_SYMBOL_SCROLL_VIEW_MARGIN_LEFT:I = 0x4

.field public static final FULL_ANGLE_SYMBOL:I = 0x1

.field public static final HALF_ANGLE_SYMBOL:I = 0x2

.field public static MAX_LATEST_SYM_COUNT:I = 0x0

.field private static final MAX_PAGE_SYMBOLS_SIZE:I = 0x12

.field private static NORMAL_TEXT_WIDTH_UNIT:I = 0x0

.field public static final PAGE_COLUMN_CNT:I = 0x6

.field public static final PAGE_ITEM_CNT:I = 0x12

.field public static final PAGE_ROW_CNT:I = 0x3

.field private static final PREPARE_SYMBOLS_DELAYED:I = 0xc8

.field public static final RECENT_SYMBOL:I = 0x0

.field public static final SYMBOL_SCROLL_VIEW_MARGIN_LEFT:I = 0xc

.field private static TAG:Ljava/lang/String; = null

.field public static final VIEW_PAGE_CNT:I = 0x3

.field private static mLastScrollY:I

.field private static mRecentSymList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mScrollRangeLand:I

.field private static mScrollRangePortrait:I


# instance fields
.field private mBalloonEnabled:Z

.field private mBalloonHeightF:F

.field private mBalloonWidthF:F

.field private mCallback:Lcom/ime/framework/view/SymbolScrollView$Callback;

.field private mContentHeight:I

.field private mContentWidth:I

.field private mContext:Landroid/content/Context;

.field private mCurPageIdx:I

.field private mDefItemMargin:I

.field private mDefItemWidth:I

.field private mDefRowHeight:I

.field private mDefRowMargin:I

.field private mDesiredScrollY:I

.field private mGLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHoverListener:Landroid/view/View$OnHoverListener;

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

.field private mIsConfigureChange:Z

.field private mIsMoveScroll:Z

.field private mIsScrollDown:Z

.field private mIsScrollUp:Z

.field private mKeyLabelTextSize:I

.field public mPageCntEmotion:I

.field private mPostPageIdx:I

.field private mRowHeight:I

.field private mRowMargin:I

.field private mScrollRange:I

.field private mScrollable:Z

.field private mSymKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ime/framework/view/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mSymLables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ime/framework/view/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mSymMode:I

.field private mSymbListLayout:Landroid/widget/LinearLayout;

.field private mSymbolScrollViewHandler:Lcom/ime/framework/view/SymbolScrollView$SymbolScrollViewHandler;

.field private mTextMargin:I

.field private mTextWidth:I

.field private mTextWidthMax:I

.field private mTimeLastTap:J

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private mViewHeight:I

.field private mViewLeftPadding:I

.field private mViewTopPadding:I

.field private mViewWidth:I

.field public maxRowCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    sput-boolean v1, Lcom/ime/framework/view/SymbolScrollView;->DEBUG:Z

    const-string v0, "SymbolScrollView"

    sput-object v0, Lcom/ime/framework/view/SymbolScrollView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ime/framework/view/SymbolScrollView;->mRecentSymList:Ljava/util/ArrayList;

    sput v1, Lcom/ime/framework/view/SymbolScrollView;->NORMAL_TEXT_WIDTH_UNIT:I

    const/4 v0, 0x2

    sput v0, Lcom/ime/framework/view/SymbolScrollView;->EMOTION_TEXT_WIDTH_UNIT:I

    const/16 v0, 0x36

    sput v0, Lcom/ime/framework/view/SymbolScrollView;->MAX_LATEST_SYM_COUNT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mViewLeftPadding:I

    iput v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mViewTopPadding:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mViewWidth:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mViewHeight:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContentWidth:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContentHeight:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mRowHeight:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mRowMargin:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mTextWidth:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mDefItemWidth:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mDefItemMargin:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mDefRowMargin:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mDefRowHeight:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mTextWidthMax:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mTextMargin:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mPageCntEmotion:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/ime/framework/view/SymbolScrollView;->maxRowCnt:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mCurPageIdx:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mPostPageIdx:I

    iput-boolean v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mBalloonEnabled:Z

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mDesiredScrollY:I

    iput-boolean v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mScrollable:Z

    iput-boolean v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mIsScrollDown:Z

    iput-boolean v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mIsScrollUp:Z

    iput-object v3, p0, Lcom/ime/framework/view/SymbolScrollView;->mSymbListLayout:Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/ime/framework/view/SymbolScrollView;->mTouchListener:Landroid/view/View$OnTouchListener;

    iput-object v3, p0, Lcom/ime/framework/view/SymbolScrollView;->mHoverListener:Landroid/view/View$OnHoverListener;

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mSymMode:I

    iput-boolean v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mIsConfigureChange:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mIsMoveScroll:Z

    iput-object v3, p0, Lcom/ime/framework/view/SymbolScrollView;->mInputManager:Lcom/ime/framework/common/InputManager;

    iput-object v3, p0, Lcom/ime/framework/view/SymbolScrollView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    iput-object p1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/ime/framework/view/SymbolScrollView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mViewLeftPadding:I

    iput v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mViewTopPadding:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mViewWidth:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mViewHeight:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContentWidth:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContentHeight:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mRowHeight:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mRowMargin:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mTextWidth:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mDefItemWidth:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mDefItemMargin:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mDefRowMargin:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mDefRowHeight:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mTextWidthMax:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mTextMargin:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mPageCntEmotion:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/ime/framework/view/SymbolScrollView;->maxRowCnt:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mCurPageIdx:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mPostPageIdx:I

    iput-boolean v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mBalloonEnabled:Z

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mDesiredScrollY:I

    iput-boolean v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mScrollable:Z

    iput-boolean v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mIsScrollDown:Z

    iput-boolean v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mIsScrollUp:Z

    iput-object v3, p0, Lcom/ime/framework/view/SymbolScrollView;->mSymbListLayout:Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/ime/framework/view/SymbolScrollView;->mTouchListener:Landroid/view/View$OnTouchListener;

    iput-object v3, p0, Lcom/ime/framework/view/SymbolScrollView;->mHoverListener:Landroid/view/View$OnHoverListener;

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mSymMode:I

    iput-boolean v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mIsConfigureChange:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mIsMoveScroll:Z

    iput-object v3, p0, Lcom/ime/framework/view/SymbolScrollView;->mInputManager:Lcom/ime/framework/common/InputManager;

    iput-object v3, p0, Lcom/ime/framework/view/SymbolScrollView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    iput-object p1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/ime/framework/view/SymbolScrollView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mViewLeftPadding:I

    iput v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mViewTopPadding:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mViewWidth:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mViewHeight:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContentWidth:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContentHeight:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mRowHeight:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mRowMargin:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mTextWidth:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mDefItemWidth:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mDefItemMargin:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mDefRowMargin:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mDefRowHeight:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mTextWidthMax:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mTextMargin:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mPageCntEmotion:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/ime/framework/view/SymbolScrollView;->maxRowCnt:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mCurPageIdx:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mPostPageIdx:I

    iput-boolean v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mBalloonEnabled:Z

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mDesiredScrollY:I

    iput-boolean v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mScrollable:Z

    iput-boolean v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mIsScrollDown:Z

    iput-boolean v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mIsScrollUp:Z

    iput-object v3, p0, Lcom/ime/framework/view/SymbolScrollView;->mSymbListLayout:Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/ime/framework/view/SymbolScrollView;->mTouchListener:Landroid/view/View$OnTouchListener;

    iput-object v3, p0, Lcom/ime/framework/view/SymbolScrollView;->mHoverListener:Landroid/view/View$OnHoverListener;

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mSymMode:I

    iput-boolean v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mIsConfigureChange:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mIsMoveScroll:Z

    iput-object v3, p0, Lcom/ime/framework/view/SymbolScrollView;->mInputManager:Lcom/ime/framework/common/InputManager;

    iput-object v3, p0, Lcom/ime/framework/view/SymbolScrollView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    iput-object p1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/ime/framework/view/SymbolScrollView;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/ime/framework/view/SymbolScrollView;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mSymKeys:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ime/framework/view/SymbolScrollView;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mSymLables:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ime/framework/view/SymbolScrollView;ILjava/util/List;Ljava/util/List;III)I
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/ime/framework/view/SymbolScrollView;->updateView(ILjava/util/List;Ljava/util/List;III)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/ime/framework/view/SymbolScrollView;)I
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mPostPageIdx:I

    return v0
.end method

.method static synthetic access$402(Lcom/ime/framework/view/SymbolScrollView;I)I
    .locals 0

    iput p1, p0, Lcom/ime/framework/view/SymbolScrollView;->mPostPageIdx:I

    return p1
.end method

.method static synthetic access$500(Lcom/ime/framework/view/SymbolScrollView;)I
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mDesiredScrollY:I

    return v0
.end method

.method static synthetic access$502(Lcom/ime/framework/view/SymbolScrollView;I)I
    .locals 0

    iput p1, p0, Lcom/ime/framework/view/SymbolScrollView;->mDesiredScrollY:I

    return p1
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ime/framework/view/SymbolScrollView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/ime/framework/view/SymbolScrollView;I)I
    .locals 0

    iput p1, p0, Lcom/ime/framework/view/SymbolScrollView;->mCurPageIdx:I

    return p1
.end method

.method private adjustScrolledPosition()V
    .locals 11

    const/4 v10, 0x0

    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lcom/ime/framework/view/SymbolScrollView;->mTimeLastTap:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/ime/framework/view/SymbolScrollView;->mTimeLastTap:J

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/ime/framework/view/SymbolScrollView;->mTimeLastTap:J

    sub-long v2, v4, v6

    const-wide/16 v6, 0xfa

    cmp-long v1, v2, v6

    if-gez v1, :cond_1

    invoke-virtual {p0}, Lcom/ime/framework/view/SymbolScrollView;->getScrollY()I

    move-result v1

    iget v6, p0, Lcom/ime/framework/view/SymbolScrollView;->mContentHeight:I

    rem-int v0, v1, v6

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mIsScrollUp:Z

    if-eqz v1, :cond_2

    neg-int v1, v0

    invoke-virtual {p0, v10, v1}, Lcom/ime/framework/view/SymbolScrollView;->scrollBy(II)V

    :cond_1
    :goto_0
    iput-wide v4, p0, Lcom/ime/framework/view/SymbolScrollView;->mTimeLastTap:J

    return-void

    :cond_2
    iget v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContentHeight:I

    sub-int/2addr v1, v0

    invoke-virtual {p0, v10, v1}, Lcom/ime/framework/view/SymbolScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private adjustTvTextPos(Lcom/ime/framework/view/SymbolKeyTextView;I)V
    .locals 13

    const/high16 v12, 0x41a00000    # 20.0f

    const/high16 v11, 0x40000000    # 2.0f

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ime/framework/view/SymbolKeyTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v9, :cond_0

    const-string v9, "\u3002"

    invoke-virtual {p1}, Lcom/ime/framework/view/SymbolKeyTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    if-lez p2, :cond_0

    invoke-virtual {p1}, Lcom/ime/framework/view/SymbolKeyTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v9, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v10, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v9, v10

    int-to-float v0, v9

    int-to-float v9, p2

    invoke-virtual {p1}, Lcom/ime/framework/view/SymbolKeyTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    sub-float/2addr v9, v10

    div-float v7, v9, v11

    iget v9, p0, Lcom/ime/framework/view/SymbolScrollView;->mRowHeight:I

    int-to-float v9, v9

    sub-float/2addr v9, v0

    div-float v8, v9, v11

    invoke-virtual {p0}, Lcom/ime/framework/view/SymbolScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v9, v9

    div-float/2addr v9, v12

    add-float v3, v7, v9

    invoke-virtual {p0}, Lcom/ime/framework/view/SymbolScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v9, v9

    div-float/2addr v9, v12

    sub-float v4, v7, v9

    sub-float v5, v8, v11

    add-float v2, v8, v11

    float-to-int v9, v3

    float-to-int v10, v5

    float-to-int v11, v4

    float-to-int v12, v2

    invoke-virtual {p1, v9, v10, v11, v12}, Lcom/ime/framework/view/SymbolKeyTextView;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method private createRowLayout(I)Landroid/widget/LinearLayout;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    iget-object v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mSymbListLayout:Landroid/widget/LinearLayout;

    if-nez v2, :cond_0

    const v2, 0x7f1000e9

    invoke-virtual {p0, v2}, Lcom/ime/framework/view/SymbolScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mSymbListLayout:Landroid/widget/LinearLayout;

    :cond_0
    iget-object v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mSymbListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method private createTextView(Ljava/lang/String;)Lcom/ime/framework/view/SymbolKeyTextView;
    .locals 6

    new-instance v1, Lcom/ime/framework/view/SymbolKeyTextView;

    iget-object v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/ime/framework/view/SymbolKeyTextView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    iget v3, p0, Lcom/ime/framework/view/SymbolScrollView;->mKeyLabelTextSize:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/ime/framework/view/SymbolKeyTextView;->setTextSize(IF)V

    iget v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mTextWidth:I

    invoke-virtual {v1, v2}, Lcom/ime/framework/view/SymbolKeyTextView;->setMinWidth(I)V

    iget v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mTextWidthMax:I

    invoke-virtual {v1, v2}, Lcom/ime/framework/view/SymbolKeyTextView;->setMaxWidth(I)V

    iget-object v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Lcom/ime/framework/view/SymbolKeyTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v1, v2}, Lcom/ime/framework/view/SymbolKeyTextView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ime/framework/view/SymbolKeyTextView;->setClickable(Z)V

    invoke-virtual {v1, p1}, Lcom/ime/framework/view/SymbolKeyTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Lcom/ime/framework/view/SymbolScrollView;->getFixedWidthUnit(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ime/framework/view/SymbolKeyTextView;->setFixedWidth(I)V

    invoke-direct {p0, p1}, Lcom/ime/framework/view/SymbolScrollView;->isNeedAdjustLabelYOffset(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/ime/framework/view/SymbolScrollView;->getAdjustLabelYOffset()I

    move-result v0

    invoke-virtual {v1}, Lcom/ime/framework/view/SymbolKeyTextView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v1}, Lcom/ime/framework/view/SymbolKeyTextView;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Lcom/ime/framework/view/SymbolKeyTextView;->getPaddingRight()I

    move-result v4

    invoke-virtual {v1}, Lcom/ime/framework/view/SymbolKeyTextView;->getPaddingBottom()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ime/framework/view/SymbolKeyTextView;->setPadding(IIII)V

    :cond_0
    invoke-virtual {v1}, Lcom/ime/framework/view/SymbolKeyTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ime/framework/view/SymbolScrollView;->getSymbolDescription(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ime/framework/view/SymbolKeyTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/ime/framework/view/SymbolKeyTextView;->setGravity(I)V

    return-object v1
.end method

.method private getAdjustLabelYOffset()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/view/SymbolScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09080c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/ime/framework/view/SymbolScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09080b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    goto :goto_0
.end method

.method private getCellParam(IILjava/util/List;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/ime/framework/view/Keyboard$Key;",
            ">;)",
            "Landroid/widget/LinearLayout$LayoutParams;"
        }
    .end annotation

    const/4 v2, 0x3

    if-lt p1, v2, :cond_0

    rem-int/lit8 p1, p1, 0x3

    :cond_0
    mul-int/lit8 v1, p1, 0x6

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    iget v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mDefRowHeight:I

    iput v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mRowHeight:I

    :goto_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    iget v3, p0, Lcom/ime/framework/view/SymbolScrollView;->mRowHeight:I

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    return-object v0

    :cond_1
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/view/Keyboard$Key;

    iget v2, v2, Lcom/ime/framework/view/Keyboard$Key;->height:I

    iput v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mRowHeight:I

    goto :goto_0
.end method

.method private getFixedWidthUnit(Ljava/lang/String;)I
    .locals 6

    sget v4, Lcom/ime/framework/view/SymbolScrollView;->NORMAL_TEXT_WIDTH_UNIT:I

    sget-object v0, Lcom/ime/implement/setting/Constants;->mLongEmotionsStr:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget v4, Lcom/ime/framework/view/SymbolScrollView;->EMOTION_TEXT_WIDTH_UNIT:I

    :cond_0
    return v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getItemMarginLeft(IILjava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/ime/framework/view/Keyboard$Key;",
            ">;)I"
        }
    .end annotation

    :goto_0
    const/4 v2, 0x3

    if-lt p1, v2, :cond_0

    add-int/lit8 p1, p1, -0x3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    mul-int/lit8 v2, p1, 0x6

    add-int v0, v2, p2

    rem-int/lit8 v2, p2, 0x6

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :goto_1
    move v2, v1

    :goto_2
    return v2

    :cond_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    iget v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mDefItemMargin:I

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    const/4 v1, 0x4

    goto :goto_1

    :cond_3
    const/16 v1, 0xc

    goto :goto_1
.end method

.method private getItemWidth(IIILjava/util/List;Ljava/lang/String;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List",
            "<",
            "Lcom/ime/framework/view/Keyboard$Key;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/16 v6, 0x12

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x3

    if-lt p2, v2, :cond_0

    rem-int/lit8 p2, p2, 0x3

    :cond_0
    mul-int/lit8 v2, p2, 0x6

    add-int v0, v2, p3

    const/4 v1, 0x0

    if-lt v0, v6, :cond_1

    add-int/lit8 v0, v0, -0x12

    :cond_1
    invoke-direct {p0, p5}, Lcom/ime/framework/view/SymbolScrollView;->getFixedWidthUnit(Ljava/lang/String;)I

    move-result v2

    sget v3, Lcom/ime/framework/view/SymbolScrollView;->NORMAL_TEXT_WIDTH_UNIT:I

    if-ne v2, v3, :cond_4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    iget v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mDefItemWidth:I

    :goto_0
    return v2

    :cond_2
    rem-int/lit8 v2, v0, 0x6

    if-nez v2, :cond_3

    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/view/Keyboard$Key;

    iget v1, v2, Lcom/ime/framework/view/Keyboard$Key;->width:I

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/view/Keyboard$Key;

    iget v1, v2, Lcom/ime/framework/view/Keyboard$Key;->width:I

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v0, 0x1

    if-lt v2, v6, :cond_5

    invoke-interface {p4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/view/Keyboard$Key;

    iget v3, v2, Lcom/ime/framework/view/Keyboard$Key;->mRight:I

    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/view/Keyboard$Key;

    iget v2, v2, Lcom/ime/framework/view/Keyboard$Key;->mLeft:I

    sub-int v1, v3, v2

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v0, 0x1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_6

    iget v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mDefItemWidth:I

    goto :goto_0

    :cond_6
    add-int/lit8 v2, v0, 0x1

    rem-int/lit8 v2, v2, 0x6

    if-nez v2, :cond_7

    invoke-interface {p4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/view/Keyboard$Key;

    iget v3, v2, Lcom/ime/framework/view/Keyboard$Key;->mRight:I

    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/view/Keyboard$Key;

    iget v2, v2, Lcom/ime/framework/view/Keyboard$Key;->mLeft:I

    sub-int v1, v3, v2

    goto :goto_1

    :cond_7
    add-int/lit8 v2, v0, 0x1

    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/view/Keyboard$Key;

    iget v3, v2, Lcom/ime/framework/view/Keyboard$Key;->mRight:I

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/view/Keyboard$Key;

    iget v2, v2, Lcom/ime/framework/view/Keyboard$Key;->mLeft:I

    sub-int v1, v3, v2

    goto :goto_1
.end method

.method private init()V
    .locals 1

    new-instance v0, Lcom/ime/framework/view/SymbolScrollView$SymbolScrollViewHandler;

    invoke-direct {v0, p0}, Lcom/ime/framework/view/SymbolScrollView$SymbolScrollViewHandler;-><init>(Lcom/ime/framework/view/SymbolScrollView;)V

    iput-object v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mSymbolScrollViewHandler:Lcom/ime/framework/view/SymbolScrollView$SymbolScrollViewHandler;

    return-void
.end method

.method private isLandScape()Z
    .locals 2

    invoke-virtual {p0}, Lcom/ime/framework/view/SymbolScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLastRow(I)Z
    .locals 5

    const/4 v4, 0x7

    const/4 v3, 0x3

    const/4 v0, 0x0

    iget v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mSymMode:I

    if-eq v1, v3, :cond_1

    if-ne p1, v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mSymMode:I

    if-ne v1, v3, :cond_0

    iget v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mPageCntEmotion:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    const/16 v1, 0xd

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mPageCntEmotion:I

    if-ne v1, v3, :cond_0

    if-ne p1, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isNeedAdjustLabelYOffset(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "\uff08"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\uff09"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\uff08\uff09"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\uff5b"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\uff5d"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\uff5b\uff5d"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\uff1c"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\uff1e"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\uff1c\uff1e"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "("

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ")"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "<"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ">"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "{"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "}"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "["

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetValue()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mCurPageIdx:I

    iput v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mPostPageIdx:I

    iput v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mPageCntEmotion:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mViewLeftPadding:I

    iput v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mViewTopPadding:I

    iput v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mViewWidth:I

    iput v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mDefItemWidth:I

    iput v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mDefItemMargin:I

    iput v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mDefRowMargin:I

    iput v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mDefRowHeight:I

    iput v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mViewHeight:I

    iput v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mContentWidth:I

    iput v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mContentHeight:I

    iput v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mTextWidth:I

    iput v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mTextMargin:I

    iput v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mTextWidthMax:I

    iput v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mRowHeight:I

    iput v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mRowMargin:I

    sput v1, Lcom/ime/framework/view/SymbolScrollView;->mLastScrollY:I

    sget-boolean v0, Lcom/ime/framework/view/SymbolScrollView;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ime/framework/view/SymbolScrollView;->TAG:Ljava/lang/String;

    const-string v1, "----------resetValue---------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private scrollDown()V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mContentHeight:I

    invoke-virtual {p0, v1, v0}, Lcom/ime/framework/view/SymbolScrollView;->smoothScrollBy(II)V

    iput-boolean v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mIsScrollDown:Z

    iput-boolean v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mIsScrollUp:Z

    return-void
.end method

.method private scrollToPage(I)V
    .locals 3

    sget-boolean v0, Lcom/ime/framework/view/SymbolScrollView;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ime/framework/view/SymbolScrollView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---------scrollToPage, pageIdx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; curPage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mCurPageIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Lcom/ime/framework/view/SymbolScrollView;->mPostPageIdx:I

    iget v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mContentHeight:I

    mul-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/ime/framework/view/SymbolScrollView;->scrollToPos(I)V

    return-void
.end method

.method private scrollToPos(I)V
    .locals 4

    const/4 v3, -0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/ime/framework/view/SymbolScrollView;->scrollTo(II)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mCallback:Lcom/ime/framework/view/SymbolScrollView$Callback;

    invoke-interface {v0}, Lcom/ime/framework/view/SymbolScrollView$Callback;->onScrollToTop()V

    :cond_0
    iput v3, p0, Lcom/ime/framework/view/SymbolScrollView;->mDesiredScrollY:I

    invoke-virtual {p0}, Lcom/ime/framework/view/SymbolScrollView;->getScrollY()I

    move-result v0

    if-eq v0, p1, :cond_2

    iput p1, p0, Lcom/ime/framework/view/SymbolScrollView;->mDesiredScrollY:I

    sget-object v0, Lcom/ime/framework/view/SymbolScrollView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------scrollToPos--listen----postIdx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mPostPageIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; mDesiredScrollY ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mDesiredScrollY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mGLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-nez v0, :cond_1

    new-instance v0, Lcom/ime/framework/view/SymbolScrollView$1;

    invoke-direct {v0, p0}, Lcom/ime/framework/view/SymbolScrollView$1;-><init>(Lcom/ime/framework/view/SymbolScrollView;)V

    iput-object v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mGLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p0}, Lcom/ime/framework/view/SymbolScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mGLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/ime/framework/view/SymbolScrollView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------scrollToPos--done----postIdx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mPostPageIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mPostPageIdx:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mPostPageIdx:I

    iput v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mCurPageIdx:I

    iput v3, p0, Lcom/ime/framework/view/SymbolScrollView;->mPostPageIdx:I

    goto :goto_0
.end method

.method private scrollUp()V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mContentHeight:I

    neg-int v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/ime/framework/view/SymbolScrollView;->smoothScrollBy(II)V

    iput-boolean v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mIsScrollDown:Z

    iput-boolean v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mIsScrollUp:Z

    return-void
.end method

.method private setIsConfigureChange(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ime/framework/view/SymbolScrollView;->mIsConfigureChange:Z

    return-void
.end method

.method private setValue()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mViewWidth:I

    invoke-virtual {p0}, Lcom/ime/framework/view/SymbolScrollView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mContentWidth:I

    iget v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mViewHeight:I

    invoke-virtual {p0}, Lcom/ime/framework/view/SymbolScrollView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mRowMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mContentHeight:I

    iget v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mTextWidthMax:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mContentWidth:I

    iput v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mTextWidthMax:I

    :cond_0
    iget v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mTextMargin:I

    if-gez v0, :cond_1

    iput v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mTextMargin:I

    :cond_1
    iget v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mTextWidth:I

    if-gez v0, :cond_2

    iget v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mTextWidthMax:I

    iget v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mTextMargin:I

    mul-int/lit8 v1, v1, 0x5

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mTextWidth:I

    :cond_2
    iget v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mDefItemWidth:I

    if-gez v0, :cond_3

    invoke-virtual {p0}, Lcom/ime/framework/view/SymbolScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09080a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mDefItemWidth:I

    :cond_3
    iget v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mDefItemMargin:I

    if-gez v0, :cond_4

    invoke-virtual {p0}, Lcom/ime/framework/view/SymbolScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090806

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mDefItemMargin:I

    :cond_4
    iget v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mDefRowMargin:I

    if-gez v0, :cond_5

    invoke-virtual {p0}, Lcom/ime/framework/view/SymbolScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090805

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mDefRowMargin:I

    :cond_5
    iget v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mDefRowHeight:I

    if-gez v0, :cond_6

    invoke-virtual {p0}, Lcom/ime/framework/view/SymbolScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090804

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mDefRowHeight:I

    :cond_6
    iget v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mRowMargin:I

    if-gez v0, :cond_7

    iput v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mRowMargin:I

    :cond_7
    iget v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mRowHeight:I

    if-gez v0, :cond_8

    iget v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mContentHeight:I

    iget v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mRowMargin:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mRowHeight:I

    :cond_8
    sget-boolean v0, Lcom/ime/framework/view/SymbolScrollView;->DEBUG:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/ime/framework/view/SymbolScrollView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------getPaddingTop = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ime/framework/view/SymbolScrollView;->getPaddingTop()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/ime/framework/view/SymbolScrollView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------getPaddingLeft = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ime/framework/view/SymbolScrollView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/ime/framework/view/SymbolScrollView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------mContentWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mContentWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/ime/framework/view/SymbolScrollView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------mContentHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mContentHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/ime/framework/view/SymbolScrollView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------mTextWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mTextWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/ime/framework/view/SymbolScrollView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------mTextWidthMax = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mTextWidthMax:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/ime/framework/view/SymbolScrollView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------mTextMargin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mTextMargin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/ime/framework/view/SymbolScrollView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------mRowMargin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mRowMargin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/ime/framework/view/SymbolScrollView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------mRowHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mRowHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method private updateView(ILjava/util/List;Ljava/util/List;III)I
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/ime/framework/view/Keyboard$Key;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/ime/framework/view/Keyboard$Key;",
            ">;III)I"
        }
    .end annotation

    move/from16 v4, p6

    move/from16 v16, p4

    const/4 v15, 0x0

    const/16 v22, 0x0

    const/4 v8, 0x0

    const/16 v19, 0x0

    sget-object v2, Lcom/ime/framework/view/SymbolScrollView;->mRecentSymList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/4 v13, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/view/SymbolScrollView;->mViewWidth:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/ime/framework/view/SymbolScrollView;->mTextWidthMax:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/ime/framework/view/SymbolScrollView;->mDefRowMargin:I

    const/4 v2, 0x6

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    const/4 v2, 0x7

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/view/Keyboard$Key;

    iget v6, v2, Lcom/ime/framework/view/Keyboard$Key;->mTop:I

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/view/Keyboard$Key;

    iget v2, v2, Lcom/ime/framework/view/Keyboard$Key;->mBottom:I

    sub-int v14, v6, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/view/SymbolScrollView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    const/16 v6, 0x8

    if-ne v2, v6, :cond_3

    const/4 v2, 0x5

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/view/Keyboard$Key;

    iget v6, v2, Lcom/ime/framework/view/Keyboard$Key;->mRight:I

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/view/Keyboard$Key;

    iget v2, v2, Lcom/ime/framework/view/Keyboard$Key;->mLeft:I

    sub-int v2, v6, v2

    add-int/lit8 v2, v2, 0xc

    move-object/from16 v0, p0

    iput v2, v0, Lcom/ime/framework/view/SymbolScrollView;->mTextWidthMax:I

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/ime/framework/view/SymbolScrollView;->createRowLayout(I)Landroid/widget/LinearLayout;

    move-result-object v17

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/view/SymbolScrollView;->mSymMode:I

    if-eqz v2, :cond_1

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v20

    :cond_1
    const/4 v2, -0x1

    move/from16 v0, p5

    if-eq v0, v2, :cond_2

    move/from16 v0, p5

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    move/from16 v20, p5

    :cond_2
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/view/SymbolScrollView;->maxRowCnt:I

    if-ge v4, v2, :cond_11

    add-int v2, v16, v15

    move/from16 v0, v20

    if-ge v2, v0, :cond_11

    add-int v3, v16, v15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/view/SymbolScrollView;->mSymMode:I

    if-eqz v2, :cond_4

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/view/Keyboard$Key;

    iget-object v2, v2, Lcom/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/ime/framework/view/SymbolScrollView;->createTextView(Ljava/lang/String;)Lcom/ime/framework/view/SymbolKeyTextView;

    move-result-object v21

    :goto_2
    invoke-virtual/range {v21 .. v21}, Lcom/ime/framework/view/SymbolKeyTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    invoke-virtual/range {v21 .. v21}, Lcom/ime/framework/view/SymbolKeyTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v19

    invoke-virtual/range {v21 .. v21}, Lcom/ime/framework/view/SymbolKeyTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/ime/framework/view/SymbolScrollView;->getItemWidth(IIILjava/util/List;Ljava/lang/String;)I

    move-result v18

    move/from16 v8, v18

    if-nez v5, :cond_5

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/ime/framework/view/SymbolScrollView;->mTextMargin:I

    :goto_3
    int-to-float v2, v8

    sub-float v9, v2, v19

    :goto_4
    int-to-float v2, v8

    const v6, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v6

    cmpg-float v2, v9, v2

    if-gtz v2, :cond_6

    invoke-virtual {v11}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    const/high16 v6, 0x40400000    # 3.0f

    sub-float/2addr v2, v6

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    int-to-float v2, v8

    invoke-virtual/range {v21 .. v21}, Lcom/ime/framework/view/SymbolKeyTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    sub-float v9, v2, v6

    goto :goto_4

    :cond_3
    const/4 v2, 0x5

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/view/Keyboard$Key;

    iget v6, v2, Lcom/ime/framework/view/Keyboard$Key;->mRight:I

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/view/Keyboard$Key;

    iget v2, v2, Lcom/ime/framework/view/Keyboard$Key;->mLeft:I

    sub-int v2, v6, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/ime/framework/view/SymbolScrollView;->mTextWidthMax:I

    goto/16 :goto_0

    :cond_4
    sget-object v2, Lcom/ime/framework/view/SymbolScrollView;->mRecentSymList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/ime/framework/view/SymbolScrollView;->createTextView(Ljava/lang/String;)Lcom/ime/framework/view/SymbolKeyTextView;

    move-result-object v21

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v5, v1}, Lcom/ime/framework/view/SymbolScrollView;->getItemMarginLeft(IILjava/util/List;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/ime/framework/view/SymbolScrollView;->mTextMargin:I

    goto :goto_3

    :cond_6
    if-nez v15, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/view/SymbolScrollView;->mTextWidthMax:I

    if-le v8, v2, :cond_7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/ime/framework/view/SymbolScrollView;->mTextWidthMax:I

    :cond_7
    add-int v22, v22, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v8}, Lcom/ime/framework/view/SymbolScrollView;->adjustTvTextPos(Lcom/ime/framework/view/SymbolKeyTextView;I)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/ime/framework/view/SymbolKeyTextView;->setWidth(I)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/view/SymbolScrollView;->mTextMargin:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v2, v1}, Lcom/ime/framework/view/SymbolScrollView;->getCellParam(IILjava/util/List;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual/range {v21 .. v21}, Lcom/ime/framework/view/SymbolKeyTextView;->getFixedWidth()I

    move-result v2

    sget v6, Lcom/ime/framework/view/SymbolScrollView;->EMOTION_TEXT_WIDTH_UNIT:I

    if-ne v2, v6, :cond_8

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/view/SymbolScrollView;->mSymMode:I

    if-nez v2, :cond_8

    add-int/lit8 v20, v20, -0x1

    :cond_8
    move-object/from16 v13, v21

    move v12, v8

    goto/16 :goto_1

    :cond_9
    const/4 v2, 0x6

    if-eq v5, v2, :cond_b

    add-int v2, v22, v8

    move-object/from16 v0, p0

    iget v6, v0, Lcom/ime/framework/view/SymbolScrollView;->mTextMargin:I

    add-int/2addr v2, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/ime/framework/view/SymbolScrollView;->mTextWidthMax:I

    if-gt v2, v6, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/view/SymbolScrollView;->mTextMargin:I

    add-int/2addr v2, v8

    add-int v22, v22, v2

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v8}, Lcom/ime/framework/view/SymbolScrollView;->adjustTvTextPos(Lcom/ime/framework/view/SymbolKeyTextView;I)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/ime/framework/view/SymbolKeyTextView;->setWidth(I)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/view/SymbolScrollView;->mTextMargin:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v2, v1}, Lcom/ime/framework/view/SymbolScrollView;->getCellParam(IILjava/util/List;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual/range {v21 .. v21}, Lcom/ime/framework/view/SymbolKeyTextView;->getFixedWidth()I

    move-result v2

    sget v6, Lcom/ime/framework/view/SymbolScrollView;->EMOTION_TEXT_WIDTH_UNIT:I

    if-ne v2, v6, :cond_a

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/view/SymbolScrollView;->mSymMode:I

    if-nez v2, :cond_a

    add-int/lit8 v20, v20, -0x1

    :cond_a
    move-object/from16 v13, v21

    move v12, v8

    goto/16 :goto_1

    :cond_b
    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/view/SymbolScrollView;->mTextWidthMax:I

    move/from16 v0, v22

    if-ge v0, v2, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/view/SymbolScrollView;->mTextWidthMax:I

    sub-int v2, v2, v22

    add-int v10, v12, v2

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v10}, Lcom/ime/framework/view/SymbolScrollView;->adjustTvTextPos(Lcom/ime/framework/view/SymbolKeyTextView;I)V

    invoke-virtual {v13, v10}, Lcom/ime/framework/view/SymbolKeyTextView;->setWidth(I)V

    :cond_c
    const/16 v2, 0xc

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    if-lt v2, v6, :cond_f

    move-object/from16 v0, p0

    iget v14, v0, Lcom/ime/framework/view/SymbolScrollView;->mDefRowMargin:I

    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/ime/framework/view/SymbolScrollView;->isLastRow(I)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v14, 0x0

    :cond_d
    add-int/lit8 v2, v3, 0x6

    move/from16 v0, v20

    if-le v2, v0, :cond_e

    const/4 v14, 0x0

    :cond_e
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/ime/framework/view/SymbolScrollView;->createRowLayout(I)Landroid/widget/LinearLayout;

    move-result-object v17

    move/from16 v16, v3

    const/4 v15, 0x0

    const/4 v5, 0x0

    const/16 v22, 0x0

    goto/16 :goto_1

    :cond_f
    add-int/lit8 v2, v4, 0x1

    rem-int/lit8 v2, v2, 0x3

    if-nez v2, :cond_10

    const/4 v2, 0x6

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/view/Keyboard$Key;

    iget v6, v2, Lcom/ime/framework/view/Keyboard$Key;->mTop:I

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/view/Keyboard$Key;

    iget v2, v2, Lcom/ime/framework/view/Keyboard$Key;->mBottom:I

    sub-int v14, v6, v2

    goto :goto_5

    :cond_10
    const/16 v2, 0xc

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/view/Keyboard$Key;

    iget v6, v2, Lcom/ime/framework/view/Keyboard$Key;->mTop:I

    const/4 v2, 0x6

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/view/Keyboard$Key;

    iget v2, v2, Lcom/ime/framework/view/Keyboard$Key;->mBottom:I

    sub-int v14, v6, v2

    goto :goto_5

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/view/SymbolScrollView;->mSymbListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->requestLayout()V

    invoke-direct/range {p0 .. p1}, Lcom/ime/framework/view/SymbolScrollView;->scrollToPage(I)V

    return v4
.end method


# virtual methods
.method public enableBalloon(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ime/framework/view/SymbolScrollView;->mBalloonEnabled:Z

    return-void
.end method

.method public getSymBalloonHeight()F
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mBalloonHeightF:F

    return v0
.end method

.method public getSymBalloonWidth()F
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mBalloonWidthF:F

    return v0
.end method

.method public getSymbolDescription(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3

    move-object v0, p1

    const-string v1, "\uff0c"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0215

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "\u3002"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0216

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, "\uff1f"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0217

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v1, "\uff01"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0218

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v1, "\u3001"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0219

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v1, "\u2026\u2026"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d021a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    const-string v1, "\uff1a"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d021b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    const-string v1, "\uff1b"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d021c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    const-string v1, "\uff06"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d021d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    const-string v1, "\uff5e"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d021e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    const-string v1, "\uff3e"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d021f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    const-string v1, "\u201c\u201d"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0220

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    const-string v1, "\u201c"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0221

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    const-string v1, "\u201d"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0222

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_e
    const-string v1, "\uff08\uff09"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0223

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_f
    const-string v1, "\uff08"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0224

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_10
    const-string v1, "\uff09"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0225

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_11
    const-string v1, "\uff0a"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0226

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_12
    const-string v1, "\uff3f"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0227

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_13
    const-string v1, "\u00b7"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0228

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_14
    const-string v1, "\u203b"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0147

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_15
    const-string v1, "\u300a\u300b"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0229

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_16
    const-string v1, "\u300a"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d022a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_17
    const-string v1, "\u300b"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d022b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_18
    const-string v1, "\uff5b\uff5d"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d022c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_19
    const-string v1, "\uff5b"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d022d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1a
    const-string v1, "\uff5d"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d022e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1b
    const-string v1, "\u3010\u3011"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d022f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1c
    const-string v1, "\u3010"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0230

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1d
    const-string v1, "\u3011"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0231

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1e
    const-string v1, "\uff1c\uff1e"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0232

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1f
    const-string v1, "\uff1c"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0233

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_20
    const-string v1, "\uff1e"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0234

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_21
    const-string v1, "\u300c\u300d"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0235

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_22
    const-string v1, "\u300c"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0236

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_23
    const-string v1, "\u300d"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0237

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_24
    const-string v1, "\u2018\u2019"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0238

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_25
    const-string v1, "\u2018"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0239

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_26
    const-string v1, "\u2019"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d023a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_27
    const-string v1, "~"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0201

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_28
    const-string v1, "="

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d023b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_29
    const-string v1, "\u00bf"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d01f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2a
    const-string v1, "\u00a1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d01f0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2b
    const-string v1, "\uffe0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d023c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2c
    const-string v1, "\u25cb"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d01e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2d
    const-string v1, "\u25cf"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d01e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2e
    const-string v1, "\u25a1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d01e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2f
    const-string v1, "\u25c7"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d01ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getSymbolLayout()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mSymbListLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getViewHeight()I
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mViewHeight:I

    return v0
.end method

.method public getViewWidth()I
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mViewWidth:I

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v0

    iput v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mViewWidth:I

    :cond_0
    iget v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mViewWidth:I

    return v0
.end method

.method public hide()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mSymbListLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mSymbListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mSymbListLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/ime/framework/view/SymbolScrollView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/ime/framework/view/SymbolScrollView;->resetValue()V

    return-void
.end method

.method public initialize(Ljava/util/ArrayList;Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/ime/framework/view/Keyboard$Key;",
            ">;I)V"
        }
    .end annotation

    const/16 v5, 0x9

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/framework/view/SymbolScrollView;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v3, p0, Lcom/ime/framework/view/SymbolScrollView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/framework/view/SymbolScrollView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    iget-object v3, p0, Lcom/ime/framework/view/SymbolScrollView;->mSymbListLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_1

    const v3, 0x7f1000e9

    invoke-virtual {p0, v3}, Lcom/ime/framework/view/SymbolScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/ime/framework/view/SymbolScrollView;->mSymbListLayout:Landroid/widget/LinearLayout;

    :goto_0
    invoke-virtual {p0}, Lcom/ime/framework/view/SymbolScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09080d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/ime/framework/view/SymbolScrollView;->mKeyLabelTextSize:I

    iget-object v3, p0, Lcom/ime/framework/view/SymbolScrollView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    const v1, 0x3f4ccccd    # 0.8f

    iget v3, p0, Lcom/ime/framework/view/SymbolScrollView;->mKeyLabelTextSize:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, p0, Lcom/ime/framework/view/SymbolScrollView;->mKeyLabelTextSize:I

    :cond_0
    if-eqz p1, :cond_2

    sget-object v3, Lcom/ime/framework/view/SymbolScrollView;->mRecentSymList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/ime/framework/view/SymbolScrollView;->mRecentSymList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/ime/framework/view/SymbolScrollView;->mSymbListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto :goto_0

    :cond_2
    if-nez p3, :cond_3

    iput v5, p0, Lcom/ime/framework/view/SymbolScrollView;->maxRowCnt:I

    :goto_2
    iput p3, p0, Lcom/ime/framework/view/SymbolScrollView;->mSymMode:I

    return-void

    :cond_3
    const/4 v3, 0x2

    if-ne p3, v3, :cond_4

    iput v5, p0, Lcom/ime/framework/view/SymbolScrollView;->maxRowCnt:I

    goto :goto_2

    :cond_4
    const/4 v3, 0x1

    if-ne p3, v3, :cond_5

    iput v5, p0, Lcom/ime/framework/view/SymbolScrollView;->maxRowCnt:I

    goto :goto_2

    :cond_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_6

    const/4 v3, 0x5

    iput v3, p0, Lcom/ime/framework/view/SymbolScrollView;->mPageCntEmotion:I

    :goto_3
    iget v3, p0, Lcom/ime/framework/view/SymbolScrollView;->mPageCntEmotion:I

    mul-int/lit8 v3, v3, 0x3

    iput v3, p0, Lcom/ime/framework/view/SymbolScrollView;->maxRowCnt:I

    goto :goto_2

    :cond_6
    const/4 v3, 0x3

    iput v3, p0, Lcom/ime/framework/view/SymbolScrollView;->mPageCntEmotion:I

    goto :goto_3
.end method

.method public isBalloonEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mBalloonEnabled:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    sget-boolean v0, Lcom/ime/framework/view/SymbolScrollView;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ime/framework/view/SymbolScrollView;->TAG:Ljava/lang/String;

    const-string v1, "---- onConfigurationChanged ----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ime/framework/view/SymbolScrollView;->setIsConfigureChange(Z)V

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onDraw(Landroid/graphics/Canvas;)V

    sget-boolean v0, Lcom/ime/framework/view/SymbolScrollView;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ime/framework/view/SymbolScrollView;->TAG:Ljava/lang/String;

    const-string v1, "onDraw..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mIsConfigureChange:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ime/framework/view/SymbolScrollView;->scrollToLastPos()V

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ime/framework/view/SymbolScrollView;->setIsConfigureChange(Z)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    sget-boolean v2, Lcom/ime/framework/view/SymbolScrollView;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/ime/framework/view/SymbolScrollView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-------------onLayout--mCurPageIdx = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/ime/framework/view/SymbolScrollView;->mCurPageIdx:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mPostPageIdx ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/ime/framework/view/SymbolScrollView;->mPostPageIdx:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/ime/framework/view/SymbolScrollView;->computeVerticalScrollRange()I

    move-result v1

    invoke-virtual {p0}, Lcom/ime/framework/view/SymbolScrollView;->computeVerticalScrollExtent()I

    move-result v0

    sub-int v2, v1, v0

    iput v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mScrollRange:I

    sget-boolean v2, Lcom/ime/framework/view/SymbolScrollView;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/ime/framework/view/SymbolScrollView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLayout, scroll range is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/ime/framework/view/SymbolScrollView;->mScrollRange:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/ime/framework/view/SymbolScrollView;->isLandScape()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mScrollRange:I

    sput v2, Lcom/ime/framework/view/SymbolScrollView;->mScrollRangeLand:I

    :goto_0
    return-void

    :cond_2
    iget v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mScrollRange:I

    sput v2, Lcom/ime/framework/view/SymbolScrollView;->mScrollRangePortrait:I

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/ime/framework/view/SymbolScrollView;->getViewWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/ime/framework/view/SymbolScrollView;->getViewHeight()I

    move-result v0

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 3

    sget-boolean v0, Lcom/ime/framework/view/SymbolScrollView;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ime/framework/view/SymbolScrollView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScrollChanged, scrollY == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sput p2, Lcom/ime/framework/view/SymbolScrollView;->mLastScrollY:I

    if-nez p2, :cond_2

    sget-boolean v0, Lcom/ime/framework/view/SymbolScrollView;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ime/framework/view/SymbolScrollView;->TAG:Ljava/lang/String;

    const-string v1, "scroll to top "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mCallback:Lcom/ime/framework/view/SymbolScrollView$Callback;

    invoke-interface {v0}, Lcom/ime/framework/view/SymbolScrollView$Callback;->onScrollToTop()V

    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    return-void

    :cond_2
    iget v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mScrollRange:I

    if-lt p2, v0, :cond_4

    sget-boolean v0, Lcom/ime/framework/view/SymbolScrollView;->DEBUG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/ime/framework/view/SymbolScrollView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scroll to bottom, t == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mCallback:Lcom/ime/framework/view/SymbolScrollView$Callback;

    invoke-interface {v0}, Lcom/ime/framework/view/SymbolScrollView$Callback;->onScrollToBottom()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mCallback:Lcom/ime/framework/view/SymbolScrollView$Callback;

    invoke-interface {v0}, Lcom/ime/framework/view/SymbolScrollView$Callback;->onScrollToMid()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mScrollable:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mIsMoveScroll:Z

    if-eqz v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mIsMoveScroll:Z

    goto :goto_0
.end method

.method public resetScroll()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mIsScrollUp:Z

    iput-boolean v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mIsScrollDown:Z

    return-void
.end method

.method public scrollSmooth()V
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mIsScrollDown:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mIsScrollUp:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/ime/framework/view/SymbolScrollView;->adjustScrolledPosition()V

    iget-boolean v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mIsScrollDown:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/ime/framework/view/SymbolScrollView;->scrollDown()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mIsScrollUp:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ime/framework/view/SymbolScrollView;->scrollUp()V

    goto :goto_0
.end method

.method public scrollToLastPos()V
    .locals 5

    sget v1, Lcom/ime/framework/view/SymbolScrollView;->mLastScrollY:I

    const/4 v0, 0x0

    sget v2, Lcom/ime/framework/view/SymbolScrollView;->mScrollRangeLand:I

    if-eqz v2, :cond_0

    sget v2, Lcom/ime/framework/view/SymbolScrollView;->mScrollRangePortrait:I

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/ime/framework/view/SymbolScrollView;->isLandScape()Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lcom/ime/framework/view/SymbolScrollView;->mScrollRangeLand:I

    int-to-float v2, v2

    sget v3, Lcom/ime/framework/view/SymbolScrollView;->mScrollRangePortrait:I

    int-to-float v3, v3

    div-float v0, v2, v3

    :cond_0
    :goto_0
    sget v2, Lcom/ime/framework/view/SymbolScrollView;->mLastScrollY:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/ime/framework/view/SymbolScrollView;->scrollTo(II)V

    sget-boolean v2, Lcom/ime/framework/view/SymbolScrollView;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/ime/framework/view/SymbolScrollView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scrollToLastPos, scrollPos == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    sget v2, Lcom/ime/framework/view/SymbolScrollView;->mScrollRangePortrait:I

    int-to-float v2, v2

    sget v3, Lcom/ime/framework/view/SymbolScrollView;->mScrollRangeLand:I

    int-to-float v3, v3

    div-float v0, v2, v3

    goto :goto_0
.end method

.method public setBalloonSize(FF)V
    .locals 0

    iput p1, p0, Lcom/ime/framework/view/SymbolScrollView;->mBalloonWidthF:F

    iput p2, p0, Lcom/ime/framework/view/SymbolScrollView;->mBalloonHeightF:F

    return-void
.end method

.method public setContentPosition(II)V
    .locals 0

    iput p1, p0, Lcom/ime/framework/view/SymbolScrollView;->mViewLeftPadding:I

    iput p2, p0, Lcom/ime/framework/view/SymbolScrollView;->mViewTopPadding:I

    return-void
.end method

.method public setHoverListener(Landroid/view/View$OnHoverListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/SymbolScrollView;->mHoverListener:Landroid/view/View$OnHoverListener;

    return-void
.end method

.method public setRowInfo(IIII)V
    .locals 0

    iput p1, p0, Lcom/ime/framework/view/SymbolScrollView;->mRowHeight:I

    iput p2, p0, Lcom/ime/framework/view/SymbolScrollView;->mRowMargin:I

    iput p3, p0, Lcom/ime/framework/view/SymbolScrollView;->mTextWidth:I

    iput p4, p0, Lcom/ime/framework/view/SymbolScrollView;->mTextMargin:I

    return-void
.end method

.method public setScrollDown()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mIsScrollDown:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mIsScrollUp:Z

    return-void
.end method

.method public setScrollUp()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mIsScrollUp:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mIsScrollDown:Z

    return-void
.end method

.method public setScrollable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ime/framework/view/SymbolScrollView;->mScrollable:Z

    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    iput p1, p0, Lcom/ime/framework/view/SymbolScrollView;->mKeyLabelTextSize:I

    return-void
.end method

.method public setTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/SymbolScrollView;->mTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setViewHeight(I)V
    .locals 0

    iput p1, p0, Lcom/ime/framework/view/SymbolScrollView;->mViewHeight:I

    return-void
.end method

.method public setViewWidth(I)V
    .locals 0

    iput p1, p0, Lcom/ime/framework/view/SymbolScrollView;->mViewWidth:I

    return-void
.end method

.method public showPage(ILjava/util/List;Ljava/util/List;Lcom/ime/framework/view/SymbolScrollView$Callback;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/ime/framework/view/Keyboard$Key;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/ime/framework/view/Keyboard$Key;",
            ">;",
            "Lcom/ime/framework/view/SymbolScrollView$Callback;",
            ")Z"
        }
    .end annotation

    const/4 v3, -0x2

    const/4 v4, 0x0

    const/4 v7, 0x0

    iput-object p4, p0, Lcom/ime/framework/view/SymbolScrollView;->mCallback:Lcom/ime/framework/view/SymbolScrollView$Callback;

    iput-object p3, p0, Lcom/ime/framework/view/SymbolScrollView;->mSymLables:Ljava/util/List;

    iput-object p2, p0, Lcom/ime/framework/view/SymbolScrollView;->mSymKeys:Ljava/util/List;

    sget-boolean v0, Lcom/ime/framework/view/SymbolScrollView;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ime/framework/view/SymbolScrollView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----showPage-----pageIdx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/ime/framework/view/SymbolScrollView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------before--mCurpageIdx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mCurPageIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x2

    if-lt v0, p1, :cond_1

    if-gez p1, :cond_4

    :cond_1
    sget-boolean v0, Lcom/ime/framework/view/SymbolScrollView;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/ime/framework/view/SymbolScrollView;->TAG:Ljava/lang/String;

    const-string v1, "----the page idx is not valid--------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    sget-boolean v0, Lcom/ime/framework/view/SymbolScrollView;->DEBUG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/ime/framework/view/SymbolScrollView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showPage--------after mCurPageIdx ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ime/framework/view/SymbolScrollView;->mCurPageIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v7

    :cond_4
    sget-boolean v0, Lcom/ime/framework/view/SymbolScrollView;->DEBUG:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/ime/framework/view/SymbolScrollView;->TAG:Ljava/lang/String;

    const-string v1, "------show for the first time---- "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v8}, Lcom/ime/framework/view/SymbolScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v3}, Lcom/ime/framework/view/SymbolScrollView;->measure(II)V

    iget v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mViewLeftPadding:I

    if-gez v0, :cond_6

    iput v4, p0, Lcom/ime/framework/view/SymbolScrollView;->mViewLeftPadding:I

    sget-boolean v0, Lcom/ime/framework/view/SymbolScrollView;->DEBUG:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/ime/framework/view/SymbolScrollView;->TAG:Ljava/lang/String;

    const-string v1, "-------default-----mViewLeftPadding----0---"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mViewTopPadding:I

    if-gez v0, :cond_7

    iput v4, p0, Lcom/ime/framework/view/SymbolScrollView;->mViewTopPadding:I

    sget-boolean v0, Lcom/ime/framework/view/SymbolScrollView;->DEBUG:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/ime/framework/view/SymbolScrollView;->TAG:Ljava/lang/String;

    const-string v1, "---1----default-------mViewTopPadding----0-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mViewLeftPadding:I

    iget v1, p0, Lcom/ime/framework/view/SymbolScrollView;->mViewTopPadding:I

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/ime/framework/view/SymbolScrollView;->setPadding(IIII)V

    const/16 v0, 0xc

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/view/Keyboard$Key;

    iget v1, v0, Lcom/ime/framework/view/Keyboard$Key;->mTop:I

    const/4 v0, 0x6

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/view/Keyboard$Key;

    iget v0, v0, Lcom/ime/framework/view/Keyboard$Key;->mBottom:I

    sub-int v0, v1, v0

    iput v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mRowMargin:I

    invoke-direct {p0}, Lcom/ime/framework/view/SymbolScrollView;->setValue()V

    const/16 v5, 0x12

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/ime/framework/view/SymbolScrollView;->updateView(ILjava/util/List;Ljava/util/List;III)I

    move-result v9

    iget-object v0, p0, Lcom/ime/framework/view/SymbolScrollView;->mSymbolScrollViewHandler:Lcom/ime/framework/view/SymbolScrollView$SymbolScrollViewHandler;

    const/16 v1, 0xc8

    # invokes: Lcom/ime/framework/view/SymbolScrollView$SymbolScrollViewHandler;->startSymbolScrollViewsTimer(II)V
    invoke-static {v0, v1, v9}, Lcom/ime/framework/view/SymbolScrollView$SymbolScrollViewHandler;->access$000(Lcom/ime/framework/view/SymbolScrollView$SymbolScrollViewHandler;II)V

    invoke-virtual {p0, v4}, Lcom/ime/framework/view/SymbolScrollView;->setVisibility(I)V

    const/4 v7, 0x1

    goto/16 :goto_0
.end method
