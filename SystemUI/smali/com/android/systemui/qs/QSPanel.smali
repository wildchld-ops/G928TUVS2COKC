.class public Lcom/android/systemui/qs/QSPanel;
.super Landroid/widget/FrameLayout;
.source "QSPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSPanel$QuickSettingButtonNumberObserver;,
        Lcom/android/systemui/qs/QSPanel$Callback;,
        Lcom/android/systemui/qs/QSPanel$TileRecord;,
        Lcom/android/systemui/qs/QSPanel$Record;,
        Lcom/android/systemui/qs/QSPanel$H;
    }
.end annotation


# static fields
.field private static final DB_NUMBER_OF_APPS:Ljava/lang/String; = "notification_panel_active_number_of_apps"

.field private static final TILE_ASPECT:F = 1.2f

.field private static final TW_TAG:Ljava/lang/String; = "StatusBar-QSPanel"

.field private static mDiagnosticLogs:Z


# instance fields
.field private mBottomPadding:I

.field private mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

.field private mBrightnessHeight:I

.field private mBrightnessPaddingTop:I

.field private mButtonCorrectionWidth:I

.field private mButtonGap:I

.field private mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

.field private mCellHeight:I

.field private mCellWidth:I

.field private mClosingDetail:Z

.field private mCocktailBarPresent:Z

.field private mColumns:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field mDefaultDisplay:Landroid/view/Display;

.field private mDetail:Landroid/view/View;

.field private mDetailContent:Landroid/view/ViewGroup;

.field private mDetailDoneButton:Landroid/widget/TextView;

.field private mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

.field private mDetailSettingsButton:Landroid/widget/TextView;

.field private mDetailTitleHeight:I

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDualTileUnderlap:I

.field private mExpanded:Z

.field private mExtraMargin:I

.field private mGridContentVisible:Z

.field private mGridHeight:I

.field private final mHandler:Lcom/android/systemui/qs/QSPanel$H;

.field private mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

.field private mIsCocktailBarEnabled:Z

.field private mIsCoveredState:Z

.field private mLargeCellHeight:I

.field private mLargeCellWidth:I

.field private mListening:Z

.field private mNotificationPadding:I

.field private mNotificationPanelWidth:I

.field private mNumberObserver:Lcom/android/systemui/qs/QSPanel$QuickSettingButtonNumberObserver;

.field mOldConfig:Landroid/content/res/Configuration;

.field private mPanelPaddingBottom:I

.field private mQConnectHeight:I

.field private mQSPanelSidePadding:I

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/QSPanel$TileRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOn:Z

.field private mSingleLine:Z

.field private mSingleLineBottomPadding:I

.field private mTopMarginFirstRow:I

.field private mTopMarginRow:I

.field private mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

.field private mVisibleButtonNum:I

.field mWM:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/qs/QSPanel;->mDiagnosticLogs:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/QSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/qs/QSPanel$H;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/qs/QSPanel$H;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$1;)V

    iput-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    iput-boolean v7, p0, Lcom/android/systemui/qs/QSPanel;->mGridContentVisible:Z

    iput-boolean v6, p0, Lcom/android/systemui/qs/QSPanel;->mSingleLine:Z

    iput v6, p0, Lcom/android/systemui/qs/QSPanel;->mExtraMargin:I

    iput-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mOldConfig:Landroid/content/res/Configuration;

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDefaultDisplay:Landroid/view/Display;

    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mWM:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v2, Lcom/android/systemui/qs/QSPanel$QuickSettingButtonNumberObserver;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QSPanel$QuickSettingButtonNumberObserver;-><init>(Lcom/android/systemui/qs/QSPanel;)V

    iput-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mNumberObserver:Lcom/android/systemui/qs/QSPanel$QuickSettingButtonNumberObserver;

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "notification_panel_active_number_of_apps"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mNumberObserver:Lcom/android/systemui/qs/QSPanel$QuickSettingButtonNumberObserver;

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/Feature;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mCocktailBarPresent:Z

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mCocktailBarPresent:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c04b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mExtraMargin:I

    :cond_0
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mSupportMumButton:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040070

    invoke-virtual {v2, v3, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetailContent:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    const v3, 0x102001a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetailSettingsButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    const v3, 0x1020019

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetailDoneButton:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateDetailText()V

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setClickable(Z)V

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSPanel;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetailDoneButton:Landroid/widget/TextView;

    new-instance v3, Lcom/android/systemui/qs/QSPanel$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/QSPanel$1;-><init>(Lcom/android/systemui/qs/QSPanel;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0c03ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetailTitleHeight:I

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutDirection(I)V

    new-instance v2, Lcom/android/systemui/qs/QSPanel$2;

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/qs/QSPanel$2;-><init>(Lcom/android/systemui/qs/QSPanel;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v2}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateResources()V

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/qs/QSPanel;->mDiagnosticLogs:Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/QSPanel;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->fireToggleStateChanged(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/QSPanel;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->fireScanStateChanged(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/statusbar/phone/QSTileHost;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$Record;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->handleShowDetail(Lcom/android/systemui/qs/QSPanel$Record;Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/QSPanel;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->handleSetTileVisibility(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/QSPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->handleDelayedOnConfigurationChanged()V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/systemui/qs/QSPanel;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/QSPanel;->mVisibleButtonNum:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/QSPanel;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->getButtonNumberFromDB()I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/QSPanel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mSingleLine:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$Record;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/qs/QSPanel;->mDiagnosticLogs:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QSPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->sendLogs()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$QuickSettingButtonNumberObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mNumberObserver:Lcom/android/systemui/qs/QSPanel$QuickSettingButtonNumberObserver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/QSPanel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mGridContentVisible:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/QSPanel;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->setTileVisibility(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/QSPanel;ZLcom/android/systemui/qs/QSPanel$Record;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V

    return-void
.end method

.method private addTile(Lcom/android/systemui/qs/QSTile;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;)V"
        }
    .end annotation

    new-instance v4, Lcom/android/systemui/qs/QSPanel$TileRecord;

    invoke-direct {v4}, Lcom/android/systemui/qs/QSPanel$TileRecord;-><init>()V

    iput-object p1, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Lcom/android/systemui/qs/QSTile;->createTileView(Landroid/content/Context;)Lcom/android/systemui/qs/QSTileView;

    move-result-object v5

    iput-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/QSTileView;->setVisibility(I)V

    new-instance v0, Lcom/android/systemui/qs/QSPanel$3;

    invoke-direct {v0, p0, v4}, Lcom/android/systemui/qs/QSPanel$3;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v5, v0}, Lcom/android/systemui/qs/QSTile;->setCallback(Lcom/android/systemui/qs/QSTile$Callback;)V

    new-instance v1, Lcom/android/systemui/qs/QSPanel$4;

    invoke-direct {v1, p0, v4}, Lcom/android/systemui/qs/QSPanel$4;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    new-instance v2, Lcom/android/systemui/qs/QSPanel$5;

    invoke-direct {v2, p0, v4}, Lcom/android/systemui/qs/QSPanel$5;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    new-instance v3, Lcom/android/systemui/qs/QSPanel$6;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/qs/QSPanel$6;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v5, v1, v2, v3}, Lcom/android/systemui/qs/QSTileView;->init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    iget-boolean v6, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/QSTile;->setListening(Z)V

    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/android/systemui/qs/QSTile$Callback;->onStateChanged(Lcom/android/systemui/qs/QSTile$State;)V

    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSTile;->refreshState()V

    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/QSPanel;->addView(Landroid/view/View;)V

    return-void
.end method

.method private adjustCellWidth()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c031c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    :cond_0
    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mNotificationPanelWidth:I

    if-lez v1, :cond_1

    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mNotificationPanelWidth:I

    :cond_1
    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mNotificationPadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mIsCocktailBarEnabled:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mExtraMargin:I

    sub-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mNotificationPanelWidth:I

    if-lez v1, :cond_3

    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    mul-int/2addr v1, v2

    sub-int v1, v0, v1

    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mButtonGap:I

    :goto_0
    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    iget v3, p0, Lcom/android/systemui/qs/QSPanel;->mButtonGap:I

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mButtonGap:I

    sub-int/2addr v1, v2

    sub-int v1, v0, v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mButtonCorrectionWidth:I

    const-string v1, "StatusBar-QSPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustCellWidth mButtonWidth : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", displayWidth : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mQSPanelSidePadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v0, v1

    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    iget v3, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mButtonGap:I

    goto :goto_0
.end method

.method private static exactly(I)I
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private fireScanStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSPanel$Callback;->onScanStateChanged(Z)V

    :cond_0
    return-void
.end method

.method private fireShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSPanel$Callback;->onShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V

    :cond_0
    return-void
.end method

.method private fireToggleStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSPanel$Callback;->onToggleStateChanged(Z)V

    :cond_0
    return-void
.end method

.method private getButtonNumberFromDB()I
    .locals 5

    const/16 v0, 0xa

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f004c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "notification_panel_active_number_of_apps"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "notification_panel_active_number_of_apps"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_1
    :goto_0
    const-string v2, "StatusBar-QSPanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Button Number from DB :  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_0
    move-exception v1

    const-string v2, "StatusBar-QSPanel"

    const-string v3, "getButtonNumberFromDB() - SettingNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getColumnCount(I)I
    .locals 5

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v3, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTileView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    iget v3, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    if-ne v3, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getRowTop(I)I
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mSingleLine:Z

    if-eqz v0, :cond_1

    if-gtz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mTopMarginFirstRow:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    mul-int/2addr v0, p1

    goto :goto_0

    :cond_1
    if-gtz p1, :cond_2

    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mTopMarginFirstRow:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mTopMarginFirstRow:I

    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mTopMarginRow:I

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, -0x1

    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private handleDelayedOnConfigurationChanged()V
    .locals 2

    const-string v0, "StatusBar-QSPanel"

    const-string v1, "handleDelayedOnConfigurationChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateResources()V

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mSingleLine:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->setSingleLine(Z)I

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->refreshTileLabel()V

    return-void
.end method

.method private handleSetTileVisibility(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne p2, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private handleShowDetail(Lcom/android/systemui/qs/QSPanel$Record;Z)V
    .locals 2

    instance-of v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailTile(Lcom/android/systemui/qs/QSPanel$TileRecord;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZII)V

    goto :goto_0
.end method

.method private handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZII)V
    .locals 8

    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-ne v2, p2, :cond_1

    :goto_1
    return-void

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    iget-object v6, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/systemui/qs/QSPanel;->mDetailContent:Landroid/view/ViewGroup;

    invoke-interface {v0, v2, v6, v7}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailView:Landroid/view/View;

    iget-object v2, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailView:Landroid/view/View;

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Must return detail view"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-interface {v0}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->getSettingsIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v6, p0, Lcom/android/systemui/qs/QSPanel;->mDetailSettingsButton:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    move v2, v3

    :goto_2
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetailSettingsButton:Landroid/widget/TextView;

    new-instance v6, Lcom/android/systemui/qs/QSPanel$7;

    invoke-direct {v6, p0, v1}, Lcom/android/systemui/qs/QSPanel$7;-><init>(Lcom/android/systemui/qs/QSPanel;Landroid/content/Intent;)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetailContent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetailContent:Landroid/view/ViewGroup;

    iget-object v6, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setDetailRecord(Lcom/android/systemui/qs/QSPanel$Record;)V

    :goto_3
    if-eqz p2, :cond_5

    :goto_4
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSPanel;->fireShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V

    if-eqz p2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSPanel;->sendAccessibilityEvent(I)V

    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_2

    :cond_4
    invoke-direct {p0, v3}, Lcom/android/systemui/qs/QSPanel;->fireScanStateChanged(Z)V

    goto :goto_3

    :cond_5
    move-object v0, v5

    goto :goto_4

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetailContent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-direct {p0, v5}, Lcom/android/systemui/qs/QSPanel;->setDetailRecord(Lcom/android/systemui/qs/QSPanel$Record;)V

    goto :goto_1
.end method

.method private handleShowDetailTile(Lcom/android/systemui/qs/QSPanel$TileRecord;Z)V
    .locals 0

    return-void
.end method

.method private refreshAllTiles()V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTile;->refreshState()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendLogs()V
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    const-string v3, "com.android.systemui.statusbar.policy.quicksetting"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "feature"

    const-string v3, "QS07"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setDetailRecord(Lcom/android/systemui/qs/QSPanel$Record;)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-ne p1, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    instance-of v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->scanState:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSPanel;->fireScanStateChanged(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setTileVisibility(Landroid/view/View;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/systemui/qs/QSPanel$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v1, v0, v2, p2}, Lcom/android/systemui/qs/QSPanel$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private updateButtonInfo()V
    .locals 8

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDefaultDisplay:Landroid/view/Display;

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const v1, 0x7f0c0374

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mNotificationPadding:I

    const v1, 0x7f0c0375

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mQSPanelSidePadding:I

    const v1, 0x7f0f0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "toggle_view"

    const/4 v7, 0x6

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    const v1, 0x7f0c0496

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->adjustCellWidth()V

    const v1, 0x7f0c0322

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    const v1, 0x7f0c041b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessHeight:I

    const v1, 0x7f0c043f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mQConnectHeight:I

    const v1, 0x7f0c04ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mTopMarginFirstRow:I

    const v1, 0x7f0c04ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mTopMarginRow:I

    const v1, 0x7f0c04af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mBottomPadding:I

    const v1, 0x7f0c04b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mSingleLineBottomPadding:I

    const-string v1, "StatusBar-QSPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateButtonInfo mButtonWidth : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mColumns:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " orien: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mButtonCorrectionWidth:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/qs/QSPanel;->mButtonCorrectionWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateDetailText()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailDoneButton:Landroid/widget/TextView;

    const v2, 0x7f0d0323

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailSettingsButton:Landroid/widget/TextView;

    const v2, 0x7f0d0322

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0508

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailDoneButton:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mDetailDoneButton:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailSettingsButton:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mDetailSettingsButton:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public SetCocktailBarEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mIsCocktailBarEnabled:Z

    return-void
.end method

.method public closeDetail()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V

    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->isShowingDetail()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getGridHeight()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mGridHeight:I

    return v0
.end method

.method public getHost()Lcom/android/systemui/statusbar/phone/QSTileHost;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    return-object v0
.end method

.method public isClosingDetail()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mClosingDetail:Z

    return v0
.end method

.method public isShowingDetail()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSingleLine()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mSingleLine:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    const/4 v6, 0x3

    const-string v2, "StatusBar-QSPanel"

    const-string v3, "onConfigurationChanged()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x80

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mOldConfig:Landroid/content/res/Configuration;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mOldConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    :cond_0
    const-string v2, "StatusBar-QSPanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newConfig diff : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mOldConfig:Landroid/content/res/Configuration;

    const/16 v2, 0x20

    if-ne v0, v2, :cond_1

    :goto_0
    return-void

    :cond_1
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mSupportMumButton:Z

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    invoke-virtual {v2, v6}, Lcom/android/systemui/qs/QSPanel$H;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    invoke-virtual {v2, v6}, Lcom/android/systemui/qs/QSPanel$H;->removeMessages(I)V

    :cond_3
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mScreenOn:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    if-eqz v2, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->handleDelayedOnConfigurationChanged()V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v6, v4, v5}, Lcom/android/systemui/qs/QSPanel$H;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 13

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v9, v6, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v9}, Lcom/android/systemui/qs/QSTileView;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_0

    iget v9, v6, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v9, "toggle_view"

    const v5, 0x6

    invoke-static {v1, v9, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    mul-int v9, v1, v0

    sub-int v9, v8, v9

    add-int/lit8 v10, v0, 0x1

    div-int v3, v9, v10

    iget v9, v6, Lcom/android/systemui/qs/QSPanel$TileRecord;->col:I

    iget v10, p0, Lcom/android/systemui/qs/QSPanel;->mButtonGap:I

    add-int/2addr v10, v1

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/qs/QSPanel;->mQSPanelSidePadding:I

    add-int v5, v9, v10

    iget v9, v6, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    invoke-direct {p0, v9}, Lcom/android/systemui/qs/QSPanel;->getRowTop(I)I

    move-result v7

    iget v9, p0, Lcom/android/systemui/qs/QSPanel;->mNotificationPanelWidth:I

    if-lez v9, :cond_1

    iget v9, p0, Lcom/android/systemui/qs/QSPanel;->mQSPanelSidePadding:I

    sub-int/2addr v5, v9

    :cond_1
    iget-object v9, v6, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    iget v10, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    add-int/2addr v10, v5

    iget v11, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    add-int/2addr v11, v7

    invoke-virtual {v9, v5, v7, v10, v11}, Lcom/android/systemui/qs/QSTileView;->layout(IIII)V

    const-string v9, "StatusBar-QSPanel"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onLayout left:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " top:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " record.row:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->mSupportMumButton:Z

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getMeasuredHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v9, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    invoke-virtual {v9, v10, v11, v12, v2}, Landroid/view/View;->layout(IIII)V

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 15

    const/4 v6, -0x1

    const/4 v0, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    iget-boolean v12, p0, Lcom/android/systemui/qs/QSPanel;->mCocktailBarPresent:Z

    if-eqz v12, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->adjustCellWidth()V

    :cond_0
    iget-object v12, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v12, v7, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v12}, Lcom/android/systemui/qs/QSTileView;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_1

    iget-boolean v12, p0, Lcom/android/systemui/qs/QSPanel;->mSingleLine:Z

    if-eqz v12, :cond_3

    iget v12, p0, Lcom/android/systemui/qs/QSPanel;->mVisibleButtonNum:I

    add-int/lit8 v12, v12, -0x1

    if-ge v0, v12, :cond_2

    add-int/lit8 v10, v10, 0x1

    :cond_2
    const/4 v6, 0x0

    add-int/lit8 v0, v0, 0x1

    iput v6, v7, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    iput v0, v7, Lcom/android/systemui/qs/QSPanel$TileRecord;->col:I

    add-int/lit8 v9, v6, 0x1

    goto :goto_0

    :cond_3
    const/4 v12, -0x1

    if-eq v6, v12, :cond_4

    iget v12, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    add-int/lit8 v12, v12, -0x1

    if-ne v0, v12, :cond_5

    :cond_4
    add-int/lit8 v6, v6, 0x1

    const/4 v0, 0x0

    :goto_1
    iput v6, v7, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    iput v0, v7, Lcom/android/systemui/qs/QSPanel$TileRecord;->col:I

    add-int/lit8 v9, v6, 0x1

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iget-object v12, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v12, v7, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    iget-object v13, v7, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v13}, Lcom/android/systemui/qs/QSTile;->supportsDualTargets()Z

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/systemui/qs/QSTileView;->setDual(Z)V

    iget-object v12, v7, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v12}, Lcom/android/systemui/qs/QSTileView;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_7

    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    iget-object v12, v7, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-static {v2}, Lcom/android/systemui/qs/QSPanel;->exactly(I)I

    move-result v13

    invoke-static {v1}, Lcom/android/systemui/qs/QSPanel;->exactly(I)I

    move-result v14

    invoke-virtual {v12, v13, v14}, Lcom/android/systemui/qs/QSTileView;->measure(II)V

    goto :goto_2

    :cond_8
    iget-boolean v12, p0, Lcom/android/systemui/qs/QSPanel;->mSingleLine:Z

    if-eqz v12, :cond_b

    add-int/lit8 v12, v9, -0x1

    invoke-direct {p0, v12}, Lcom/android/systemui/qs/QSPanel;->getRowTop(I)I

    move-result v12

    iget v13, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    add-int/2addr v12, v13

    iget v13, p0, Lcom/android/systemui/qs/QSPanel;->mSingleLineBottomPadding:I

    add-int v3, v12, v13

    :goto_3
    iget-boolean v12, p0, Lcom/android/systemui/qs/QSPanel;->mSingleLine:Z

    if-eqz v12, :cond_c

    move v5, v10

    :goto_4
    iget v12, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    iget v13, p0, Lcom/android/systemui/qs/QSPanel;->mButtonGap:I

    add-int/2addr v12, v13

    mul-int/2addr v12, v5

    iget v13, p0, Lcom/android/systemui/qs/QSPanel;->mButtonGap:I

    sub-int/2addr v12, v13

    iget v13, p0, Lcom/android/systemui/qs/QSPanel;->mQSPanelSidePadding:I

    mul-int/lit8 v13, v13, 0x2

    add-int v11, v12, v13

    iget v12, p0, Lcom/android/systemui/qs/QSPanel;->mNotificationPanelWidth:I

    if-lez v12, :cond_9

    iget v12, p0, Lcom/android/systemui/qs/QSPanel;->mQSPanelSidePadding:I

    mul-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    :cond_9
    sget-boolean v12, Lcom/android/systemui/statusbar/Feature;->mSupportMumButton:Z

    if-eqz v12, :cond_a

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->isShowingDetail()Z

    move-result v12

    if-eqz v12, :cond_a

    iget-object v12, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-static {v11}, Lcom/android/systemui/qs/QSPanel;->exactly(I)I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/view/View;->measure(II)V

    iget-object v12, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    :cond_a
    invoke-virtual {p0, v11, v3}, Lcom/android/systemui/qs/QSPanel;->setMeasuredDimension(II)V

    return-void

    :cond_b
    add-int/lit8 v12, v9, -0x1

    invoke-direct {p0, v12}, Lcom/android/systemui/qs/QSPanel;->getRowTop(I)I

    move-result v12

    iget v13, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    add-int/2addr v12, v13

    iget v13, p0, Lcom/android/systemui/qs/QSPanel;->mBottomPadding:I

    add-int v3, v12, v13

    goto :goto_3

    :cond_c
    iget v5, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    goto :goto_4
.end method

.method public recreateDetail()V
    .locals 5

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSupportMumButton:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/qs/QSPanel$Record;->detailView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    iget-object v3, v3, Lcom/android/systemui/qs/QSPanel$Record;->detailView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mDetailContent:Landroid/view/ViewGroup;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/QSPanel$Record;->detailView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailContent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$Record;->detailView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public refreshTileLabel()V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v2, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTile;->getNeedFontChange()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v2, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTileView;->useTruncatedName()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v2, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    iget v3, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSTileView;->dynamicallyCutandReduceTextSize(I)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v2, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    iget v3, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSTileView;->dynamicallyReduceTextSize(I)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public resetAlpha(F)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/QSTileView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 4

    const v3, 0x7f0e025c

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->getMirror()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setMirror(Lcom/android/systemui/settings/ToggleSlider;)V

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSlider;->setMirrorController(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/QSPanel$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    return-void
.end method

.method public setCoverState(Z)V
    .locals 4

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mIsCoveredState:Z

    if-ne v2, p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mIsCoveredState:Z

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSTile;->coverStateChanged(Z)V

    goto :goto_0
.end method

.method public setExpanded(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    goto :goto_0
.end method

.method public setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    return-void
.end method

.method public setListening(Z)V
    .locals 4

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    if-ne v2, p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSTile;->setListening(Z)V

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    iget-object v3, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSTileView;->onStateChanged(Lcom/android/systemui/qs/QSTile$State;)V

    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTile;->getNeedFontChange()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    iget-object v3, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSTileView;->setTileFontSizeForApn(Lcom/android/systemui/qs/QSTile$State;)V

    goto :goto_0
.end method

.method public setNotificationPanelWidth(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/QSPanel;->mNotificationPanelWidth:I

    return-void
.end method

.method public setScreenOn(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mScreenOn:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mScreenOn:Z

    goto :goto_0
.end method

.method public setSecondLineAlpha(F)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/QSTileView;->setAlpha(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSingleLine(Z)I
    .locals 14

    const/16 v13, 0x8

    const/4 v12, -0x2

    const/4 v1, 0x0

    const-string v9, "StatusBar-QSPanel"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setSingleLine:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    const-string v9, "StatusBar-QSPanel"

    const-string v10, "setSingleLine() - return"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mSingleLine:Z

    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateButtonInfo()V

    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->mSupportMumButton:Z

    if-eqz v9, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->isShowingDetail()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-boolean v9, p0, Lcom/android/systemui/qs/QSPanel;->mSingleLine:Z

    if-eqz v9, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->closeDetail()V

    :cond_2
    const/4 v5, -0x1

    const/4 v0, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/QSPanel$TileRecord;

    if-eqz p1, :cond_4

    iget v9, p0, Lcom/android/systemui/qs/QSPanel;->mVisibleButtonNum:I

    add-int/lit8 v9, v9, -0x1

    if-ge v0, v9, :cond_3

    iget-object v9, v6, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v9, v1}, Lcom/android/systemui/qs/QSTileView;->setVisibility(I)V

    :goto_2
    const/4 v5, 0x0

    add-int/lit8 v0, v0, 0x1

    iput v5, v6, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    iput v0, v6, Lcom/android/systemui/qs/QSPanel$TileRecord;->col:I

    add-int/lit8 v8, v5, 0x1

    goto :goto_1

    :cond_3
    iget-object v9, v6, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v9, v13}, Lcom/android/systemui/qs/QSTileView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    const/4 v9, -0x1

    if-eq v5, v9, :cond_5

    iget v9, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    add-int/lit8 v9, v9, -0x1

    if-ne v0, v9, :cond_6

    :cond_5
    add-int/lit8 v5, v5, 0x1

    const/4 v0, 0x0

    :goto_3
    iget-object v9, v6, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v9, v1}, Lcom/android/systemui/qs/QSTileView;->setVisibility(I)V

    iput v5, v6, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    iput v0, v6, Lcom/android/systemui/qs/QSPanel$TileRecord;->col:I

    add-int/lit8 v8, v5, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    iget-object v9, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v9, v6, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v9}, Lcom/android/systemui/qs/QSTileView;->getVisibility()I

    move-result v9

    if-eq v9, v13, :cond_8

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget v9, v6, Lcom/android/systemui/qs/QSPanel$TileRecord;->col:I

    iget v10, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    iget v11, p0, Lcom/android/systemui/qs/QSPanel;->mButtonGap:I

    add-int/2addr v10, v11

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/qs/QSPanel;->mQSPanelSidePadding:I

    add-int v3, v9, v10

    iget v9, p0, Lcom/android/systemui/qs/QSPanel;->mNotificationPanelWidth:I

    if-lez v9, :cond_9

    iget v9, p0, Lcom/android/systemui/qs/QSPanel;->mQSPanelSidePadding:I

    sub-int/2addr v3, v9

    :cond_9
    iget v9, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v9, v6, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    invoke-direct {p0, v9}, Lcom/android/systemui/qs/QSPanel;->getRowTop(I)I

    move-result v9

    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v9, v6, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {p0, v9, v4}, Lcom/android/systemui/qs/QSPanel;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_a
    const/4 v1, 0x0

    iget-boolean v9, p0, Lcom/android/systemui/qs/QSPanel;->mSingleLine:Z

    if-eqz v9, :cond_b

    add-int/lit8 v9, v8, -0x1

    invoke-direct {p0, v9}, Lcom/android/systemui/qs/QSPanel;->getRowTop(I)I

    move-result v9

    iget v10, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/qs/QSPanel;->mSingleLineBottomPadding:I

    add-int v1, v9, v10

    :goto_5
    const-string v9, "StatusBar-QSPanel"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setSingleLine height:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->mSupportMumButton:Z

    if-eqz v9, :cond_c

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->isShowingDetail()Z

    move-result v9

    if-eqz v9, :cond_c

    iget v10, p0, Lcom/android/systemui/qs/QSPanel;->mDetailTitleHeight:I

    iget-object v9, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    iget-object v9, v9, Lcom/android/systemui/qs/QSPanel$Record;->detailView:Landroid/view/View;

    check-cast v9, Lcom/android/systemui/qs/tiles/UserDetailView;

    check-cast v9, Lcom/android/systemui/qs/tiles/UserDetailView;

    invoke-virtual {v9}, Lcom/android/systemui/qs/tiles/UserDetailView;->getGridViewHeight()I

    move-result v9

    add-int v1, v10, v9

    goto :goto_5

    :cond_c
    add-int/lit8 v9, v8, -0x1

    invoke-direct {p0, v9}, Lcom/android/systemui/qs/QSPanel;->getRowTop(I)I

    move-result v9

    iget v10, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/qs/QSPanel;->mBottomPadding:I

    add-int v1, v9, v10

    goto :goto_5
.end method

.method public setTiles(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;>;)V"
        }
    .end annotation

    const-string v4, "StatusBar-QSPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "qstile setTiles"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v4, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QSPanel;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSTile;

    invoke-direct {p0, v3}, Lcom/android/systemui/qs/QSPanel;->addTile(Lcom/android/systemui/qs/QSTile;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->isShowingDetail()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_2
    return-void
.end method

.method public showDetailAdapter(ZLcom/android/systemui/qs/QSTile$DetailAdapter;)V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/QSPanel$Record;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSPanel$Record;-><init>(Lcom/android/systemui/qs/QSPanel$1;)V

    iput-object p2, v0, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V

    return-void
.end method

.method public updateResources()V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    const v3, 0x7f0f0016

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    const v2, 0x7f0c0333

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mPanelPaddingBottom:I

    const v2, 0x7f0c032c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mDualTileUnderlap:I

    const v2, 0x7f0c033d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessPaddingTop:I

    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateButtonInfo()V

    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    if-eq v2, v0, :cond_0

    iput v0, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->postInvalidate()V

    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->refreshAllTiles()V

    :cond_1
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mSupportMumButton:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateDetailText()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->refreshTileLabel()V

    return-void
.end method
