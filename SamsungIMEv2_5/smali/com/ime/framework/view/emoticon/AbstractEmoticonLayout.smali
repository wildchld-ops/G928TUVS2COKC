.class public abstract Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;
.super Landroid/widget/LinearLayout;
.source "AbstractEmoticonLayout.java"

# interfaces
.implements Lcom/ime/framework/view/emoticon/EmoticonAdapter$EmoticonAdapterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener;
    }
.end annotation


# static fields
.field private static mInitialBitmapCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mInputMethodFloating:Z

.field private static mLastestEmoticon:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private static mLastestEmoticonCount:I

.field private static mNeedInitialization:Z

.field private static mOrientationLandscape:Z


# instance fields
.field private final INPUT_METHOD_LASTEST_EMOTICONS_LIST:Ljava/lang/String;

.field private final PREF_KEY_LASTEST_EMOTICONS_LIST:Ljava/lang/String;

.field private final PREF_LASTEST_EMOTICONS:Ljava/lang/String;

.field protected inputMethod:I

.field mCategoryTabIds:[I

.field private mCurrentCategory:I

.field mCurrentPosition:I

.field private mEmoticonAdapter:Lcom/ime/framework/view/emoticon/EmoticonAdapter;

.field private mEmoticonPageAdapter:Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;

.field private mEmoticonPageIndicator:Lcom/ime/framework/view/emoticon/EmoticonPageIndicatorView;

.field protected mInputManager:Lcom/ime/framework/common/InputManager;

.field protected mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

.field protected mIsTabletMode:Z

.field protected mRepository:Lcom/ime/framework/repository/Repository;

.field private mTabABC:Landroid/widget/TextView;

.field private mTabAnimal:Landroid/widget/ImageView;

.field private mTabBackspace:Landroid/widget/ImageView;

.field private mTabClose:Landroid/widget/ImageView;

.field private mTabCrown:Landroid/widget/ImageView;

.field private mTabEmoticon:Landroid/widget/ImageView;

.field private mTabHouse:Landroid/widget/ImageView;

.field private mTabRecent:Landroid/widget/ImageView;

.field private mTabStar:Landroid/widget/ImageView;

.field private mViewPager:Lcom/ime/framework/view/emoticon/CustomViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticon:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "emoticons"

    iput-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->PREF_LASTEST_EMOTICONS:Ljava/lang/String;

    const-string v0, "LastestEmoticonList"

    iput-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->PREF_KEY_LASTEST_EMOTICONS_LIST:Ljava/lang/String;

    const-string v0, "input_methods_latest_emoticon"

    iput-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->INPUT_METHOD_LASTEST_EMOTICONS_LIST:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mCurrentCategory:I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mCategoryTabIds:[I

    invoke-direct {p0, p1}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->initialize(Landroid/content/Context;)V

    return-void

    :array_0
    .array-data 4
        0x7f100049
        0x7f10004a
        0x7f10004b
        0x7f10004c
        0x7f10004d
        0x7f10004e
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "emoticons"

    iput-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->PREF_LASTEST_EMOTICONS:Ljava/lang/String;

    const-string v0, "LastestEmoticonList"

    iput-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->PREF_KEY_LASTEST_EMOTICONS_LIST:Ljava/lang/String;

    const-string v0, "input_methods_latest_emoticon"

    iput-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->INPUT_METHOD_LASTEST_EMOTICONS_LIST:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mCurrentCategory:I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mCategoryTabIds:[I

    invoke-direct {p0, p1}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->initialize(Landroid/content/Context;)V

    return-void

    :array_0
    .array-data 4
        0x7f100049
        0x7f10004a
        0x7f10004b
        0x7f10004c
        0x7f10004d
        0x7f10004e
    .end array-data
.end method

.method static synthetic access$000(Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;)Lcom/ime/framework/view/emoticon/CustomViewPager;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mViewPager:Lcom/ime/framework/view/emoticon/CustomViewPager;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticon:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInitialBitmapCache:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    sput-boolean p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mNeedInitialization:Z

    return p0
.end method

.method private initLastestEmoticonList()V
    .locals 7

    invoke-virtual {p0}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "emoticons"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "LastestEmoticonList"

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, ","

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "\\["

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "\\]"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticon:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, " "

    invoke-direct {v3, v0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v4, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticon:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    iget-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iput v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->inputMethod:I

    iget-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mIsTabletMode:Z

    iget-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mRepository:Lcom/ime/framework/repository/Repository;

    invoke-virtual {p0}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->getLastestEmoticonCount()I

    move-result v0

    sput v0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticonCount:I

    invoke-direct {p0}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->initLastestEmoticonList()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->updateInitialBitmapByThread(Z)V

    return-void
.end method

.method private lastestEmoticonToString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticon:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateInitialBitmapByThread(Z)V
    .locals 5

    iget-object v4, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v1

    iget-object v4, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isPopupInputMethod()Z

    move-result v0

    sget-boolean v4, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputMethodFloating:Z

    if-ne v4, v0, :cond_0

    sget-boolean v4, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mOrientationLandscape:Z

    if-eq v4, v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    sget-object v4, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInitialBitmapCache:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    if-eqz p1, :cond_2

    if-nez v2, :cond_2

    :goto_1
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInitialBitmapCache:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInitialBitmapCache:Ljava/util/ArrayList;

    :cond_4
    sput-boolean v1, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mOrientationLandscape:Z

    sput-boolean v0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputMethodFloating:Z

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$5;

    invoke-direct {v4, p0, p1, v2}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$5;-><init>(Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;ZZ)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method

.method private updateLatestEmoticon(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v1, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticon:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticon:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v1, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticon:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticon:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-object v1, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticon:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget v2, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticonCount:I

    if-le v1, v2, :cond_0

    sget-object v1, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticon:Ljava/util/ArrayList;

    sget v2, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticonCount:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public clearEmoticonCacheView()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mEmoticonPageAdapter:Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mEmoticonPageAdapter:Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;

    invoke-virtual {v0}, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->clearEmoticonCacheView()V

    :cond_0
    return-void
.end method

.method public clearInitialEmoticonBitmap()V
    .locals 1

    sget-object v0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInitialBitmapCache:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInitialBitmapCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    sget-object v0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticon:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public clearLastestEmoticonList()V
    .locals 1

    sget-object v0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInitialBitmapCache:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticon:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method protected abstract getABC(Landroid/content/res/Resources;I)Ljava/lang/String;
.end method

.method protected abstract getEmoticonCountInRow()I
.end method

.method protected abstract getEmoticonFontSize()F
.end method

.method protected abstract getEmoticonHeight()I
.end method

.method public getEmoticonListView()Landroid/widget/GridView;
    .locals 3

    iget-object v1, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mViewPager:Lcom/ime/framework/view/emoticon/CustomViewPager;

    invoke-virtual {v1}, Lcom/ime/framework/view/emoticon/CustomViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mViewPager:Lcom/ime/framework/view/emoticon/CustomViewPager;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ime/framework/view/emoticon/CustomViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    iget-object v1, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mViewPager:Lcom/ime/framework/view/emoticon/CustomViewPager;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ime/framework/view/emoticon/CustomViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    return-object v1
.end method

.method protected abstract getEmoticonTypeface()Landroid/graphics/Typeface;
.end method

.method protected abstract getEmoticonWidth()I
.end method

.method protected abstract getItemBackgroundResId()I
.end method

.method protected abstract getLastestEmoticonCount()I
.end method

.method public getLatestEmoticon()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticon:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLatestEmoticonSize()I
    .locals 1

    sget-object v0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticon:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected abstract getListLayoutHeight()I
.end method

.method public abstract getListPaddingBottom()I
.end method

.method public abstract getListPaddingLeft()I
.end method

.method public abstract getListPaddingRight()I
.end method

.method public abstract getListPaddingTop()I
.end method

.method public getNeedInitialization()Z
    .locals 1

    sget-boolean v0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mNeedInitialization:Z

    return v0
.end method

.method public getViewPager()Lcom/ime/framework/view/emoticon/CustomViewPager;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mViewPager:Lcom/ime/framework/view/emoticon/CustomViewPager;

    return-object v0
.end method

.method public onEmoticonClickListener(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v1, -0x73

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->onPress(I)V

    iget-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0, p1}, Lcom/ime/framework/common/InputManager;->onText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mCurrentPosition:I

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->updateLatestEmoticon(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mEmoticonPageAdapter:Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;

    invoke-virtual {v0}, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 14

    const v13, 0x7f0b00a7

    const/4 v12, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v8, 0x7f100046

    invoke-virtual {p0, v8}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/ime/framework/view/emoticon/CustomViewPager;

    iput-object v8, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mViewPager:Lcom/ime/framework/view/emoticon/CustomViewPager;

    iget-object v8, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mViewPager:Lcom/ime/framework/view/emoticon/CustomViewPager;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    invoke-virtual {p0}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->getListLayoutHeight()I

    move-result v11

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Lcom/ime/framework/view/emoticon/CustomViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mViewPager:Lcom/ime/framework/view/emoticon/CustomViewPager;

    new-instance v9, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$1;

    invoke-direct {v9, p0}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$1;-><init>(Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;)V

    invoke-virtual {v8, v9}, Lcom/ime/framework/view/emoticon/CustomViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    new-instance v3, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$2;

    invoke-direct {v3, p0}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$2;-><init>(Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;)V

    const v8, 0x7f100048

    invoke-virtual {p0, v8}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mTabABC:Landroid/widget/TextView;

    const v8, 0x7f100049

    invoke-virtual {p0, v8}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mTabRecent:Landroid/widget/ImageView;

    const v8, 0x7f10004a

    invoke-virtual {p0, v8}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mTabEmoticon:Landroid/widget/ImageView;

    const v8, 0x7f10004b

    invoke-virtual {p0, v8}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mTabCrown:Landroid/widget/ImageView;

    const v8, 0x7f10004c

    invoke-virtual {p0, v8}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mTabAnimal:Landroid/widget/ImageView;

    const v8, 0x7f10004d

    invoke-virtual {p0, v8}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mTabHouse:Landroid/widget/ImageView;

    const v8, 0x7f10004e

    invoke-virtual {p0, v8}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mTabStar:Landroid/widget/ImageView;

    const v8, 0x7f10004f

    invoke-virtual {p0, v8}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mTabBackspace:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v9, "INPUT_LANGUAGE"

    const/high16 v10, 0x656e0000

    invoke-interface {v8, v9, v10}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0, v4, v1}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->getABC(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v2

    iget-object v8, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mTabABC:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v8, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f02004a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v8, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_2

    :cond_1
    iget-object v8, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f02005e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :cond_2
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    invoke-virtual {v5, v12, v12, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v6, Landroid/text/style/ImageSpan;

    invoke-direct {v6, v5, v12}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    new-instance v7, Landroid/text/SpannableString;

    iget-object v8, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mTabABC:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v7}, Landroid/text/SpannableString;->length()I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v7, v6, v12, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v8, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mTabABC:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v8, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v8

    if-eqz v8, :cond_4

    const v8, 0x7f10005b

    invoke-virtual {p0, v8}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mTabClose:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mTabClose:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v8, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mTabClose:Landroid/widget/ImageView;

    new-instance v9, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$3;

    invoke-direct {v9, p0}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$3;-><init>(Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v8, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mTabABC:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v8, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mTabABC:Landroid/widget/TextView;

    new-instance v9, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$4;

    invoke-direct {v9, p0}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$4;-><init>(Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mTabRecent:Landroid/widget/ImageView;

    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mTabEmoticon:Landroid/widget/ImageView;

    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mTabCrown:Landroid/widget/ImageView;

    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mTabAnimal:Landroid/widget/ImageView;

    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mTabHouse:Landroid/widget/ImageView;

    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mTabStar:Landroid/widget/ImageView;

    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mTabBackspace:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    new-instance v0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener;

    iget-object v8, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener;-><init>(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mTabBackspace:Landroid/widget/ImageView;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v8, 0x7f100050

    invoke-virtual {p0, v8}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/ime/framework/view/emoticon/EmoticonPageIndicatorView;

    iput-object v8, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mEmoticonPageIndicator:Lcom/ime/framework/view/emoticon/EmoticonPageIndicatorView;

    iget-object v8, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mEmoticonPageIndicator:Lcom/ime/framework/view/emoticon/EmoticonPageIndicatorView;

    invoke-virtual {p0}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b005f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/ime/framework/view/emoticon/EmoticonPageIndicatorView;->setColors(I)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mCurrentPosition:I

    invoke-virtual {p0, v0}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->setEmoticonPageIndicator(I)V

    return-void
.end method

.method public saveLatestEmoticonList()V
    .locals 5

    invoke-virtual {p0}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "emoticons"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "LastestEmoticonList"

    invoke-direct {p0}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->lastestEmoticonToString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setEmoticonCategory(Ljava/util/ArrayList;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I)V"
        }
    .end annotation

    iget v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mCurrentCategory:I

    if-ne v0, p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    sget-object p1, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticon:Ljava/util/ArrayList;

    :cond_2
    if-eqz p1, :cond_0

    new-instance v0, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;

    iget-object v1, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;)V

    iput-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mEmoticonPageAdapter:Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;

    iget-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mEmoticonPageAdapter:Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;

    invoke-virtual {v0, p0}, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->setEmoticonAdapterListener(Lcom/ime/framework/view/emoticon/EmoticonAdapter$EmoticonAdapterListener;)V

    iget-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mEmoticonPageAdapter:Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;

    invoke-virtual {p0}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->getListPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->getListPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->getListPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->getListPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->setLayoutPadding(IIII)V

    iget-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mEmoticonPageAdapter:Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;

    invoke-virtual {p0}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->getEmoticonTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mEmoticonPageAdapter:Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;

    invoke-virtual {p0}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->getEmoticonFontSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->setFontSize(F)V

    iget-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mEmoticonPageAdapter:Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;

    invoke-virtual {p0}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->getEmoticonWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->setEmoticonWidth(I)V

    iget-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mEmoticonPageAdapter:Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;

    invoke-virtual {p0}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->getEmoticonHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->setEmoticonHeight(I)V

    iget-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mEmoticonPageAdapter:Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;

    invoke-virtual {p0}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->getItemBackgroundResId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->setItemBackgroundResId(I)V

    iget-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mEmoticonPageAdapter:Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;

    sget-object v1, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInitialBitmapCache:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;->setInitialBitmapCache(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mViewPager:Lcom/ime/framework/view/emoticon/CustomViewPager;

    iget-object v1, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mEmoticonPageAdapter:Lcom/ime/framework/view/emoticon/EmoticonPageAdapter;

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/emoticon/CustomViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mViewPager:Lcom/ime/framework/view/emoticon/CustomViewPager;

    invoke-virtual {v0, p2}, Lcom/ime/framework/view/emoticon/CustomViewPager;->setCurrentItem(I)V

    iput p2, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mCurrentCategory:I

    goto :goto_0
.end method

.method public setEmoticonPageIndicator(I)V
    .locals 4

    iget-object v3, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mCategoryTabIds:[I

    aget v3, v3, p1

    invoke-virtual {p0, v3}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v3, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mEmoticonPageIndicator:Lcom/ime/framework/view/emoticon/EmoticonPageIndicatorView;

    invoke-virtual {v3, v0, v1}, Lcom/ime/framework/view/emoticon/EmoticonPageIndicatorView;->setCategoryPageId(II)V

    return-void
.end method

.method public setEmoticonPageIndicator(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mEmoticonPageIndicator:Lcom/ime/framework/view/emoticon/EmoticonPageIndicatorView;

    invoke-virtual {v2, v0, v1}, Lcom/ime/framework/view/emoticon/EmoticonPageIndicatorView;->setCategoryPageId(II)V

    return-void
.end method
