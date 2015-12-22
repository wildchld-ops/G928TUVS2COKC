.class public Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "RecentsMultiWindowActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;,
        Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;,
        Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;
    }
.end annotation


# static fields
.field public static final PAGE_APPLIST:I = 0x1

.field public static final PAGE_RECENT:I = 0x0

.field public static final TAG:Ljava/lang/String; = "Recents_RecentsMultiWindowActivity"

.field private static mStatusBarManager:Landroid/app/StatusBarManager;


# instance fields
.field private mAppListShadowDistance:F

.field private mAppListShadowOpacity:F

.field private mAppListStrokeOpacity:F

.field private mAppListViewPager:Landroid/support/v4/view/ViewPager;

.field private mAppListViewPagerAdapter:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;

.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDisplaySize:Landroid/graphics/Point;

.field private mElevationLineLand:Landroid/view/View;

.field private mElevationLinePort:Landroid/view/View;

.field private mFinishRequested:Z

.field mGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

.field private mGuideText:Landroid/widget/TextView;

.field private mGuideTextMarginLand:I

.field private mGuideTextMarginPort:I

.field private mHandler:Landroid/os/Handler;

.field private mLastOrientation:I

.field mLastTabKeyEventTime:J

.field mLocalReceiver:Landroid/content/BroadcastReceiver;

.field private mMainView:Landroid/widget/LinearLayout;

.field private mMiddleLineLand:Landroid/widget/LinearLayout;

.field private mMiddleLinePort:Landroid/widget/LinearLayout;

.field private mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private mMultiWindowAppListInfo:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

.field mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field mNeedDarkFont:Z

.field private mNeedMoveAppListPage:Z

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field private mSelectedAppInfo:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStartTouchX:F

.field private mViewPagerCount:I

.field private mViewPagerMark:Landroid/widget/LinearLayout;

.field private mViewPagerMarkerMarginLeft:I

.field private mViewPagerMarkerSize:I

.field mViewPagerOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mViewPagerScrollIdlePage:I

.field private mViewPagerSelectedPage:I

.field mVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mDisplaySize:Landroid/graphics/Point;

    iput-boolean v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mNeedMoveAppListPage:Z

    iput-boolean v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mNeedDarkFont:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCallbacks:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mFinishRequested:Z

    new-instance v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$4;-><init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

    new-instance v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$5;-><init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mLocalReceiver:Landroid/content/BroadcastReceiver;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mStartTouchX:F

    new-instance v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;-><init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerOnTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$8;-><init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mProcessObserver:Landroid/app/IProcessObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerScrollIdlePage:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerScrollIdlePage:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->initViewPageMark()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerCount:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mNeedMoveAppListPage:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mNeedMoveAppListPage:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mFinishRequested:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerSelectedPage:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerSelectedPage:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMark:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMarkerSize:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListViewPagerAdapter:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mStartTouchX:F

    return v0
.end method

.method static synthetic access$702(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mStartTouchX:F

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMultiWindowAppListInfo:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;Landroid/util/Pair;)Landroid/util/Pair;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mSelectedAppInfo:Landroid/util/Pair;

    return-object p1
.end method

.method private initViewPageMark()V
    .locals 10

    const/4 v9, -0x2

    const/high16 v8, 0x40000000    # 2.0f

    const v7, 0x3f99999a    # 1.2f

    iget-object v4, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMark:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    :goto_0
    iget v4, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerCount:I

    if-ge v0, v4, :cond_1

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_0

    const v4, 0x7f02089a

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v7, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget v4, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMarkerSize:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMarkerSize:I

    int-to-float v5, v5

    mul-float/2addr v5, v7

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    iget v5, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMarkerSize:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMarkerSize:I

    int-to-float v6, v6

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    div-float/2addr v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :goto_1
    sget-object v4, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget v4, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMarkerSize:I

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v4, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMarkerSize:I

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMark:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$7;

    invoke-direct {v4, p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$7;-><init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const v4, 0x7f020899

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v4, 0x66

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget v4, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMarkerMarginLeft:I

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public finishActivity()V
    .locals 4

    const-string v0, "Recents_RecentsMultiWindowActivity"

    const-string v1, "finishActivity"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mFinishRequested:Z

    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$9;-><init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public getMultiWindowAppListInfo()Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMultiWindowAppListInfo:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    return-object v0
.end method

.method public getSelectedAppPackageInfo()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mSelectedAppInfo:Landroid/util/Pair;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getTopRunningPackage(Z)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mSelectedAppInfo:Landroid/util/Pair;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mSelectedAppInfo:Landroid/util/Pair;

    return-object v0
.end method

.method public getTopRunningPackage(Z)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v6, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    const/16 v7, 0xa

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getRunningTasks(II)Ljava/util/List;

    move-result-object v4

    new-instance v2, Landroid/util/Pair;

    const-string v6, ""

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v6

    if-nez v6, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    const-string v6, "Recents_RecentsMultiWindowActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getTopRunningPackage - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " | isSplit : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "| zone : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " | id : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    iget-object v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget v7, v3, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_2
    return-object v2

    :catch_0
    move-exception v0

    const-string v6, "Recents_RecentsMultiWindowActivity"

    const-string v7, "getTopRunningPackage - baseActivity is null"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public moveViewPage(IZ)V
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerCount:I

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerSelectedPage:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    const-string v0, "Recents_RecentsMultiWindowActivity"

    const-string v1, "onBackPressed is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->finish()V

    const v0, 0x10a0042

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v1, "Recents_RecentsMultiWindowActivity"

    const-string v2, "onConfigurationChanged is getting called "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mLastOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mLastOrientation:I

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->updateMainLayout()V

    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListViewPagerAdapter:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;->notifyDataSetChanged()V

    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mDisplaySize:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mDisplaySize:Landroid/graphics/Point;

    iput v0, v1, Landroid/graphics/Point;->y:I

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 21

    const-string v2, "Recents_RecentsMultiWindowActivity"

    const-string v3, "onCreate is getting called"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    sput-object v2, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-static/range {p0 .. p0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->initialize(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoader;

    const v2, 0x7f040082

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->setContentView(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mLastOrientation:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c04be

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMarkerSize:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c04bf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMarkerMarginLeft:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c04d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideTextMarginPort:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c04d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideTextMarginLand:I

    const-string v2, "multiwindow_facade"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->initialize(Landroid/content/Context;)Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getInstance()Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMultiWindowAppListInfo:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    const v2, 0x7f0e02a9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMainView:Landroid/widget/LinearLayout;

    const v2, 0x7f0e02ab

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListViewPager:Landroid/support/v4/view/ViewPager;

    const v2, 0x7f0e02b0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMark:Landroid/widget/LinearLayout;

    const v2, 0x7f0e02aa

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideText:Landroid/widget/TextView;

    new-instance v9, Landroid/util/TypedValue;

    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c04cf

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v9, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v9}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListShadowDistance:F

    new-instance v10, Landroid/util/TypedValue;

    invoke-direct {v10}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c04d0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v10, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v10}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListShadowOpacity:F

    new-instance v11, Landroid/util/TypedValue;

    invoke-direct {v11}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c04ce

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v11, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v11}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListStrokeOpacity:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "need_dark_font"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mNeedDarkFont:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mNeedDarkFont:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideText:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00c7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideText:Landroid/widget/TextView;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListStrokeOpacity:F

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/TextView;->addStrokeTextEffect(FIF)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideText:Landroid/widget/TextView;

    const/high16 v3, 0x42b40000    # 90.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListShadowDistance:F

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListShadowOpacity:F

    move/from16 v20, v0

    sub-float v7, v7, v20

    invoke-virtual/range {v2 .. v7}, Landroid/widget/TextView;->addOuterShadowTextEffect(FFFIF)I

    :goto_1
    const v2, 0x7f0e02ac

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMiddleLinePort:Landroid/widget/LinearLayout;

    const v2, 0x7f0e02ad

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMiddleLineLand:Landroid/widget/LinearLayout;

    const v2, 0x7f0e02ae

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mElevationLinePort:Landroid/view/View;

    const v2, 0x7f0e02af

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mElevationLineLand:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->updateMainLayout()V

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v14

    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13}, Landroid/graphics/Point;-><init>()V

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v14, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, v2, 0x2

    iput v2, v13, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, v2, 0x2

    iput v2, v13, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v13}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setCenterBarPoint(ILandroid/graphics/Point;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$1;-><init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v12, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;-><init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v12, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v16

    new-instance v2, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;-><init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;Landroid/support/v4/app/FragmentManager;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListViewPagerAdapter:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$2;-><init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    new-instance v2, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    new-instance v3, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$3;-><init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;)Z

    :try_start_0
    const-string v2, "ambientRatio"

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/recents/misc/Utilities;->setShadowProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getWindow()Landroid/view/Window;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    move-object/from16 v0, v18

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v0, v18

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, v18

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    move-object/from16 v0, v18

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit8 v2, v2, 0x40

    move-object/from16 v0, v18

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v8, v2}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_3
    :try_start_2
    new-instance v17, Landroid/content/IntentFilter;

    invoke-direct/range {v17 .. v17}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.samsung.systemui.recents.CLOSE_RECENTS_MULTIWINDOW"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.systemui.recents.REFRESH_RECENTS_MULTIWINDOW"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mLocalReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_4
    invoke-super/range {p0 .. p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    return-void

    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideText:Landroid/widget/TextView;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x1000000

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListStrokeOpacity:F

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/TextView;->addStrokeTextEffect(FIF)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideText:Landroid/widget/TextView;

    const/high16 v3, 0x42b40000    # 90.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListShadowDistance:F

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x1000000

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListShadowOpacity:F

    move/from16 v20, v0

    sub-float v7, v7, v20

    invoke-virtual/range {v2 .. v7}, Landroid/widget/TextView;->addOuterShadowTextEffect(FFFIF)I

    goto/16 :goto_1

    :catch_0
    move-exception v15

    invoke-virtual {v15}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_2

    :catch_1
    move-exception v15

    invoke-virtual {v15}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_2

    :catch_2
    move-exception v15

    const-string v2, "Recents_RecentsMultiWindowActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to registerProcessObserver, e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_3
    move-exception v2

    goto :goto_4
.end method

.method protected onDestroy()V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    const-string v2, "Recents_RecentsMultiWindowActivity"

    const-string v3, "onDestroy is getting called "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v0, v2}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mLocalReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iput-object v5, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mContext:Landroid/content/Context;

    sput-object v5, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-void

    :catch_0
    move-exception v1

    const-string v2, "Recents_RecentsMultiWindowActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to unregisterProcessObserver, e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "Recents_RecentsMultiWindowActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to unregisterBroadcastReceiver, e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_0
    :goto_0
    :sswitch_0
    return v1

    :sswitch_1
    iget v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerScrollIdlePage:I

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListViewPagerAdapter:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;

    iget v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerScrollIdlePage:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    :sswitch_2
    iget v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerScrollIdlePage:I

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListViewPagerAdapter:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;

    iget v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerScrollIdlePage:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x3d -> :sswitch_0
        0x43 -> :sswitch_0
        0x70 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "Recents_RecentsMultiWindowActivity"

    const-string v1, "onNewIntent is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onResume()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    const-string v1, "Recents_RecentsMultiWindowActivity"

    const-string v2, "onResume is getting called "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ultra_powersaving_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x100000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    iput-boolean v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mVisible:Z

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->setGuideTextVisibility(I)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.OUTSIDE_TOUCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "recentUI.multiwindow.package"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    :goto_0
    return-void

    :cond_2
    iget v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerCount:I

    if-nez v1, :cond_3

    iput-boolean v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mNeedMoveAppListPage:Z

    :goto_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const-string v2, "RecentsMultiWindow"

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->moveViewPage(IZ)V

    goto :goto_1
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    const-string v0, "Recents_RecentsMultiWindowActivity"

    const-string v1, "onStart is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->finish()V

    const-string v0, "Recents_RecentsMultiWindowActivity"

    const-string v1, "onStop is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerCallbacks(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setGuideTextVisibility(I)V
    .locals 4

    const/16 v0, 0x8

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    iget v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mLastOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMiddleLinePort:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mElevationLinePort:Landroid/view/View;

    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMiddleLineLand:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mElevationLineLand:Landroid/view/View;

    if-nez p1, :cond_2

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public unregisterCallbacks(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateMainLayout()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mLastOrientation:I

    if-ne v2, v6, :cond_2

    iget-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v5, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMiddleLinePort:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mElevationLinePort:Landroid/view/View;

    if-eqz v0, :cond_1

    move v2, v4

    :goto_1
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMiddleLineLand:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mElevationLineLand:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideTextMarginPort:I

    iget v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideTextMarginPort:I

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :goto_2
    iget-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMultiWindowAppListInfo:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    iget v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mLastOrientation:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->updateMultiWindowItemNum(I)V

    return-void

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v5, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMiddleLineLand:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mElevationLineLand:Landroid/view/View;

    if-eqz v0, :cond_4

    move v2, v4

    :goto_4
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMiddleLinePort:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mElevationLinePort:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideTextMarginLand:I

    iget v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideTextMarginLand:I

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    :cond_3
    move v2, v4

    goto :goto_3

    :cond_4
    move v2, v3

    goto :goto_4
.end method

.method public updateSelectedPackageName(Z)V
    .locals 7

    invoke-virtual {p0, p1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getTopRunningPackage(Z)Landroid/util/Pair;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mSelectedAppInfo:Landroid/util/Pair;

    iget-boolean v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mFinishRequested:Z

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v4, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_0
    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mSelectedAppInfo:Landroid/util/Pair;

    invoke-interface {v0, v3}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;->updateSelectedPackageName(Landroid/util/Pair;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "Recents_RecentsMultiWindowActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    return-void
.end method
