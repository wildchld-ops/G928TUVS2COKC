.class public Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;
.super Lcom/android/systemui/statusbar/BaseStatusBar;
.source "SubPhoneStatusBar.java"


# static fields
.field private static final AUTOHIDE_TIMEOUT_MS:J = 0xbb8L

.field public static final DEBUG:Z

.field private static final STATUS_OR_NAV_TRANSIENT:I = 0xc000000

.field static final TAG:Ljava/lang/String; = "SubPhoneStatusBar"


# instance fields
.field private mAutoHidePending:Z

.field private final mAutohide:Ljava/lang/Runnable;

.field private mAutohideSuspended:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mDisabled:I

.field mExpandedVisible:Z

.field private mFloatingBackKey:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

.field private mInteractingWindows:I

.field private mIsFloatingKeyVisible:Z

.field mNaturalBarHeight:I

.field private mNavigationBarMode:I

.field private mScreenOn:Ljava/lang/Boolean;

.field mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mStatusBarMode:I

.field mSubStatusBarView:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;

.field private mSubStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;

.field mSubStatusBarWindowView:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;

.field mSystemUiVisibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mNaturalBarHeight:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mDisabled:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSystemUiVisibility:I

    new-instance v0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar$1;-><init>(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mAutoHidePending:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar$2;-><init>(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mIsFloatingKeyVisible:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mAutoHidePending:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->notifyUiVisibilityChanged(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mIsFloatingKeyVisible:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;)Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingBackKey:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->addFloatingBackKey()V

    return-void
.end method

.method private addFloatingBackKey()V
    .locals 10

    const/4 v9, 0x1

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingBackKey:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mIsFloatingKeyVisible:Z

    if-nez v2, :cond_0

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e8

    const v4, 0x800328

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const-string v1, "Floating Back Key"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManagerImpl;

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/view/WindowManagerImpl;->createPresentationWindowManager(Landroid/view/Display;)Landroid/view/WindowManagerImpl;

    move-result-object v8

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingBackKey:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-virtual {v8, v1, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mIsFloatingKeyVisible:Z

    :cond_0
    return-void
.end method

.method private addSubStatusBarWindow()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->makeSubStatusBarView()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarWindowView:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->getStatusBarHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->add(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarWindowView:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->setSubStatusBarWindowManager(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;)V

    return-void
.end method

.method private cancelAutohide()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mAutohideSuspended:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mAutoHidePending:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private notifyUiVisibilityChanged(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mScreen:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v1}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->statusBarVisibilityChangedToDisplay(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private resumeSuspendedAutohide()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mAutohideSuspended:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->scheduleAutohide()V

    :cond_0
    return-void
.end method

.method private scheduleAutohide()V
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->cancelAutohide()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mAutoHidePending:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startSubKeyguard()V
    .locals 2

    const-class v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->registerSubStatusBar(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;)V

    return-void
.end method

.method private suspendAutohide()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mAutoHidePending:Z

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSystemUiVisibility:I

    const/high16 v2, 0xc000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mAutohideSuspended:Z

    return-void
.end method


# virtual methods
.method public addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0

    return-void
.end method

.method public addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    return-void
.end method

.method public animateCollapsePanels(I)V
    .locals 0

    return-void
.end method

.method public animateExpandNotificationsPanel()V
    .locals 0

    return-void
.end method

.method public animateExpandSettingsPanel()V
    .locals 0

    return-void
.end method

.method public buzzBeepBlinked()V
    .locals 0

    return-void
.end method

.method protected createAndAddWindows()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->addSubStatusBarWindow()V

    return-void
.end method

.method public disable(IZ)V
    .locals 0

    return-void
.end method

.method public enableSignals(Z)V
    .locals 0

    return-void
.end method

.method protected getMaxKeyguardNotifications()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getSearchLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatusBarHeight()I
    .locals 2

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mNaturalBarHeight:I

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mNaturalBarHeight:I

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mNaturalBarHeight:I

    return v1
.end method

.method public getStatusBarView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubStatusBarView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarView:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;

    return-object v0
.end method

.method public getSubStatusBarWindowView()Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarWindowView:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;

    return-object v0
.end method

.method protected haltTicker()V
    .locals 0

    return-void
.end method

.method makeExpandedInvisible()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "SubPhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeExpandedInvisible: mExpandedVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mExpandedVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mExpandedVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarWindowView:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mExpandedVisible:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->setStatusBarExpanded(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarView:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->dismissPopups()V

    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->setInteracting(IZ)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mAutoHidePending:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mAutoHidePending:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method makeExpandedVisible(Z)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "SubPhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeExpandedVisible:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mExpandedVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mExpandedVisible:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mExpandedVisible:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setSlippery(Z)V

    :cond_2
    const/16 v0, -0x2710

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->updateExpandedViewPos(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->setStatusBarExpanded(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarView:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;->setFocusable(Z)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->visibilityChanged(Z)V

    invoke-virtual {p0, v3, v3}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->setInteracting(IZ)V

    goto :goto_0
.end method

.method protected makeSubStatusBarView()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mContext:Landroid/content/Context;

    const v3, 0x7f0400d2

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarWindowView:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarWindowView:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;

    iput-object p0, v2, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarWindowView:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;

    const v3, 0x7f0e040b

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarView:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarView:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;->setBar(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;)V

    const v2, 0x7f040019

    invoke-static {v0, v2, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingBackKey:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->addFloatingBackKey()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingBackKey:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->setSubBar(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.sec.android.action.FLOATING_BACK_KEY_VISIBILITY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.sec.android.action.NOTIFY_COUPLEDTASK_RESUMED_STATUS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public notificationLightOff()V
    .locals 0

    return-void
.end method

.method public notificationLightPulse(III)V
    .locals 0

    return-void
.end method

.method public notifyRecentPanelVisiblity(Z)V
    .locals 0

    return-void
.end method

.method public onActivated(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 0

    return-void
.end method

.method public onActivationReset(Lcom/android/systemui/statusbar/ActivatableNotificationView;Z)V
    .locals 0

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->makeExpandedInvisible()V

    const/4 v0, 0x1

    return v0
.end method

.method public onMenuPressed()Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKeyguardState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onMenuPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method panelsEnabled()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mDisabled:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected refreshLayout(I)V
    .locals 0

    return-void
.end method

.method public removeIcon(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    return-void
.end method

.method public resetHeadsUpDecayTimer()V
    .locals 0

    return-void
.end method

.method public scheduleHeadsUpClose()V
    .locals 0

    return-void
.end method

.method public scheduleHeadsUpEscalation()V
    .locals 0

    return-void
.end method

.method public scheduleHeadsUpOpen()V
    .locals 0

    return-void
.end method

.method protected setAreThereNotifications()V
    .locals 0

    return-void
.end method

.method public setCallBackground(I)V
    .locals 0

    return-void
.end method

.method public setFloatingKeyVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mIsFloatingKeyVisible:Z

    return-void
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;IIZ)V
    .locals 0

    return-void
.end method

.method public setInteracting(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mInteractingWindows:I

    or-int/2addr v0, p1

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mInteractingWindows:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mInteractingWindows:I

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->suspendAutohide()V

    :goto_1
    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mInteractingWindows:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->resumeSuspendedAutohide()V

    goto :goto_1
.end method

.method public setMultiWindowBg(Z)V
    .locals 0

    return-void
.end method

.method public setOtherBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-void
.end method

.method public setSystemUiVisibility(II)V
    .locals 12

    const/high16 v11, 0x10000000

    const/4 v3, 0x0

    const v10, -0x10000001

    const/4 v4, 0x1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSystemUiVisibility:I

    xor-int/lit8 v5, p2, -0x1

    and-int/2addr v5, v2

    and-int v6, p1, p2

    or-int v1, v5, v6

    xor-int v0, v1, v2

    sget-boolean v5, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "SubPhoneStatusBar"

    const-string v6, "SUB - setSystemUiVisibility vis=%s mask=%s oldVal=%s newVal=%s diff=%s"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v8, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_6

    iget v5, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSystemUiVisibility:I

    and-int/lit16 v5, v5, 0x4000

    if-lez v5, :cond_1

    move v3, v4

    :cond_1
    iput v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSystemUiVisibility:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->scheduleAutohide()V

    and-int v5, p1, v11

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSystemUiVisibility:I

    and-int/2addr v5, v10

    iput v5, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSystemUiVisibility:I

    :cond_2
    const/high16 v5, 0x20000000

    and-int/2addr v5, p1

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSystemUiVisibility:I

    const v6, -0x20000001

    and-int/2addr v5, v6

    iput v5, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSystemUiVisibility:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingBackKey:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->isAttachedToWindow()Z

    move-result v5

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mIsFloatingKeyVisible:Z

    if-nez v5, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->addFloatingBackKey()V

    :cond_3
    and-int/lit8 v5, p1, 0x2

    if-eqz v5, :cond_7

    const-string v5, "SubPhoneStatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " hide floating back key - SYSTEM_UI_FLAG_HIDE_NAVIGATION : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mIsFloatingKeyVisible:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingBackKey:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->isAttachedToWindow()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mIsFloatingKeyVisible:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingBackKey:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->disappear()V

    :cond_4
    :goto_0
    if-eqz v3, :cond_5

    iget v5, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSystemUiVisibility:I

    or-int/lit16 v5, v5, 0x4000

    iput v5, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSystemUiVisibility:I

    :cond_5
    iget v5, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSystemUiVisibility:I

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->notifyUiVisibilityChanged(I)V

    and-int v5, p1, v11

    if-eqz v5, :cond_6

    iget v5, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSystemUiVisibility:I

    and-int/2addr v5, v10

    iput v5, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSystemUiVisibility:I

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->makeExpandedVisible(Z)V

    :cond_6
    return-void

    :cond_7
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingBackKey:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->isAttachedToWindow()Z

    move-result v5

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mIsFloatingKeyVisible:Z

    if-nez v5, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->addFloatingBackKey()V

    goto :goto_0
.end method

.method public setWindowState(II)V
    .locals 0

    return-void
.end method

.method protected shouldDisableNavbarGestures()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public showScreenPinningRequest()V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->start()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->startSubKeyguard()V

    return-void
.end method

.method public startActivityAndDismiss(Landroid/content/Intent;)V
    .locals 4

    const/high16 v1, 0x14000000

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->makeExpandedInvisible()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "SubPhoneStatusBar"

    const-string v2, "activity not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected tick(Landroid/service/notification/StatusBarNotification;Z)V
    .locals 0

    return-void
.end method

.method public toggleRecentApps()V
    .locals 0

    return-void
.end method

.method public topAppWindowChanged(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v1, "SubPhoneStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_2

    const-string v0, "showing"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " the MENU button"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingBackKey:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingBackKey:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->setMenuVisible(Z)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "hiding"

    goto :goto_0
.end method

.method protected updateExpandedViewPos(I)V
    .locals 0

    return-void
.end method

.method public updateIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0

    return-void
.end method

.method protected updateNotificationRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    return-void
.end method

.method protected updateNotifications()V
    .locals 0

    return-void
.end method
