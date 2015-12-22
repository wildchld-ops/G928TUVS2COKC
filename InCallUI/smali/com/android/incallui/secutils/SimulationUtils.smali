.class public Lcom/android/incallui/secutils/SimulationUtils;
.super Ljava/lang/Object;
.source "SimulationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static mButtonHolder:Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;

.field private static mIsShowButton:Z

.field private static mMainLayout:Landroid/widget/FrameLayout;

.field private static mParent:Landroid/view/ViewGroup;

.field private static sInstance:Lcom/android/incallui/secutils/SimulationUtils;


# instance fields
.field public mBtn_main:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mIsReceivedVSTx:Z

.field private mIsVSMode:Z

.field private mListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/incallui/secutils/SimulationUtils;->DBG:Z

    sput-object v2, Lcom/android/incallui/secutils/SimulationUtils;->sInstance:Lcom/android/incallui/secutils/SimulationUtils;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/secutils/SimulationUtils;->mIsShowButton:Z

    sput-object v2, Lcom/android/incallui/secutils/SimulationUtils;->mButtonHolder:Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;

    sput-object v2, Lcom/android/incallui/secutils/SimulationUtils;->mMainLayout:Landroid/widget/FrameLayout;

    sput-object v2, Lcom/android/incallui/secutils/SimulationUtils;->mParent:Landroid/view/ViewGroup;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/incallui/secutils/SimulationUtils;->mIsVSMode:Z

    iput-boolean v0, p0, Lcom/android/incallui/secutils/SimulationUtils;->mIsReceivedVSTx:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/secutils/SimulationUtils;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/incallui/secutils/SimulationUtils$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/secutils/SimulationUtils$1;-><init>(Lcom/android/incallui/secutils/SimulationUtils;)V

    iput-object v0, p0, Lcom/android/incallui/secutils/SimulationUtils;->mListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static getInstance()Lcom/android/incallui/secutils/SimulationUtils;
    .locals 1

    sget-object v0, Lcom/android/incallui/secutils/SimulationUtils;->sInstance:Lcom/android/incallui/secutils/SimulationUtils;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/secutils/SimulationUtils;->init()Lcom/android/incallui/secutils/SimulationUtils;

    :cond_0
    sget-object v0, Lcom/android/incallui/secutils/SimulationUtils;->sInstance:Lcom/android/incallui/secutils/SimulationUtils;

    return-object v0
.end method

.method static init()Lcom/android/incallui/secutils/SimulationUtils;
    .locals 4

    const-class v1, Lcom/android/incallui/secutils/SimulationUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/secutils/SimulationUtils;->sInstance:Lcom/android/incallui/secutils/SimulationUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/secutils/SimulationUtils;

    invoke-direct {v0}, Lcom/android/incallui/secutils/SimulationUtils;-><init>()V

    sput-object v0, Lcom/android/incallui/secutils/SimulationUtils;->sInstance:Lcom/android/incallui/secutils/SimulationUtils;

    :goto_0
    sget-object v0, Lcom/android/incallui/secutils/SimulationUtils;->sInstance:Lcom/android/incallui/secutils/SimulationUtils;

    monitor-exit v1

    return-object v0

    :cond_0
    const-string v0, "[SimulationUtils]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/secutils/SimulationUtils;->sInstance:Lcom/android/incallui/secutils/SimulationUtils;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "[SimulationUtils]"

    invoke-static {v0, p0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static showSimulationButton(Z)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x8

    sput-boolean p0, Lcom/android/incallui/secutils/SimulationUtils;->mIsShowButton:Z

    sget-object v0, Lcom/android/incallui/secutils/SimulationUtils;->mButtonHolder:Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;

    if-nez v0, :cond_0

    const-string v0, "mButtonHolder null error"

    invoke-static {v0}, Lcom/android/incallui/secutils/SimulationUtils;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p0, :cond_1

    sget-object v0, Lcom/android/incallui/secutils/SimulationUtils;->mButtonHolder:Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;->mBtn_1:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/android/incallui/secutils/SimulationUtils;->mButtonHolder:Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;->mBtn_2:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/android/incallui/secutils/SimulationUtils;->mButtonHolder:Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;->mBtn_3:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/android/incallui/secutils/SimulationUtils;->mButtonHolder:Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;->mBtn_4:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/android/incallui/secutils/SimulationUtils;->mButtonHolder:Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;->mBtn_5:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/android/incallui/secutils/SimulationUtils;->mButtonHolder:Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;->mBtn_6:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/android/incallui/secutils/SimulationUtils;->mButtonHolder:Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;->mBtn_7:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/android/incallui/secutils/SimulationUtils;->mButtonHolder:Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;->mBtn_8:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/incallui/secutils/SimulationUtils;->mButtonHolder:Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;->mBtn_1:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/android/incallui/secutils/SimulationUtils;->mButtonHolder:Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;->mBtn_2:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/android/incallui/secutils/SimulationUtils;->mButtonHolder:Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;->mBtn_3:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/android/incallui/secutils/SimulationUtils;->mButtonHolder:Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;->mBtn_4:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/android/incallui/secutils/SimulationUtils;->mButtonHolder:Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;->mBtn_5:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/android/incallui/secutils/SimulationUtils;->mButtonHolder:Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;->mBtn_6:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/android/incallui/secutils/SimulationUtils;->mButtonHolder:Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;->mBtn_7:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/android/incallui/secutils/SimulationUtils;->mButtonHolder:Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;->mBtn_8:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public create(ILandroid/app/Activity;)V
    .locals 2

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/secutils/SimulationUtils;->create(Landroid/view/ViewGroup;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public create(Landroid/view/ViewGroup;Landroid/content/Context;)V
    .locals 3

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput-object p1, Lcom/android/incallui/secutils/SimulationUtils;->mParent:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/incallui/secutils/SimulationUtils;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040148

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    sput-object v1, Lcom/android/incallui/secutils/SimulationUtils;->mMainLayout:Landroid/widget/FrameLayout;

    sget-object v1, Lcom/android/incallui/secutils/SimulationUtils;->mParent:Landroid/view/ViewGroup;

    sget-object v2, Lcom/android/incallui/secutils/SimulationUtils;->mMainLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget-object v1, Lcom/android/incallui/secutils/SimulationUtils;->mMainLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f100347

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/secutils/SimulationUtils;->mBtn_main:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/secutils/SimulationUtils;->mBtn_main:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/secutils/SimulationUtils;->mBtn_main:Landroid/widget/Button;

    const-string v2, "simulation"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/secutils/SimulationUtils;->mBtn_main:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/incallui/secutils/SimulationUtils;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/incallui/secutils/SimulationUtils;->createButtonHolder()V

    goto :goto_0
.end method

.method public createButtonHolder()V
    .locals 3

    new-instance v0, Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;

    invoke-direct {v0}, Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;-><init>()V

    sput-object v0, Lcom/android/incallui/secutils/SimulationUtils;->mButtonHolder:Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;

    sget-object v0, Lcom/android/incallui/secutils/SimulationUtils;->mButtonHolder:Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;

    if-nez v0, :cond_0

    const-string v0, "mButtonHolder null error"

    invoke-static {v0}, Lcom/android/incallui/secutils/SimulationUtils;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/android/incallui/secutils/SimulationUtils;->mButtonHolder:Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;

    sget-object v0, Lcom/android/incallui/secutils/SimulationUtils;->mMainLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f100349

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;->mBtn_1:Landroid/widget/Button;

    sget-object v1, Lcom/android/incallui/secutils/SimulationUtils;->mButtonHolder:Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;

    sget-object v0, Lcom/android/incallui/secutils/SimulationUtils;->mMainLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f10034a

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;->mBtn_2:Landroid/widget/Button;

    sget-object v1, Lcom/android/incallui/secutils/SimulationUtils;->mButtonHolder:Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;

    sget-object v0, Lcom/android/incallui/secutils/SimulationUtils;->mMainLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f10034b

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;->mBtn_3:Landroid/widget/Button;

    sget-object v1, Lcom/android/incallui/secutils/SimulationUtils;->mButtonHolder:Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;

    sget-object v0, Lcom/android/incallui/secutils/SimulationUtils;->mMainLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f10034c

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;->mBtn_4:Landroid/widget/Button;

    sget-object v1, Lcom/android/incallui/secutils/SimulationUtils;->mButtonHolder:Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;

    sget-object v0, Lcom/android/incallui/secutils/SimulationUtils;->mMainLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f10034e

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;->mBtn_5:Landroid/widget/Button;

    sget-object v1, Lcom/android/incallui/secutils/SimulationUtils;->mButtonHolder:Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;

    sget-object v0, Lcom/android/incallui/secutils/SimulationUtils;->mMainLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f10034f

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;->mBtn_6:Landroid/widget/Button;

    sget-object v1, Lcom/android/incallui/secutils/SimulationUtils;->mButtonHolder:Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;

    sget-object v0, Lcom/android/incallui/secutils/SimulationUtils;->mMainLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f100350

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;->mBtn_7:Landroid/widget/Button;

    sget-object v1, Lcom/android/incallui/secutils/SimulationUtils;->mButtonHolder:Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;

    sget-object v0, Lcom/android/incallui/secutils/SimulationUtils;->mMainLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f100351

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;->mBtn_8:Landroid/widget/Button;

    sget-object v0, Lcom/android/incallui/secutils/SimulationUtils;->mButtonHolder:Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;->mBtn_1:Landroid/widget/Button;

    const-string v1, "Req_Video"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/android/incallui/secutils/SimulationUtils;->mButtonHolder:Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;->mBtn_1:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/secutils/SimulationUtils;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/android/incallui/secutils/SimulationUtils;->mButtonHolder:Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;->mBtn_2:Landroid/widget/Button;

    const-string v1, "Req_VSRx"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/android/incallui/secutils/SimulationUtils;->mButtonHolder:Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;->mBtn_2:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/secutils/SimulationUtils;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/android/incallui/secutils/SimulationUtils;->mButtonHolder:Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;->mBtn_3:Landroid/widget/Button;

    const-string v1, "vs_rx"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/android/incallui/secutils/SimulationUtils;->mButtonHolder:Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;->mBtn_3:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/secutils/SimulationUtils;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/android/incallui/secutils/SimulationUtils;->mButtonHolder:Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;->mBtn_4:Landroid/widget/Button;

    const-string v1, "vs_tx"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/android/incallui/secutils/SimulationUtils;->mButtonHolder:Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;->mBtn_4:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/secutils/SimulationUtils;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/android/incallui/secutils/SimulationUtils;->mButtonHolder:Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;->mBtn_5:Landroid/widget/Button;

    const-string v1, "accept"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/android/incallui/secutils/SimulationUtils;->mButtonHolder:Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;->mBtn_5:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/secutils/SimulationUtils;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/android/incallui/secutils/SimulationUtils;->mButtonHolder:Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;->mBtn_6:Landroid/widget/Button;

    const-string v1, "Conf Mgr"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/android/incallui/secutils/SimulationUtils;->mButtonHolder:Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;->mBtn_6:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/secutils/SimulationUtils;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/android/incallui/secutils/SimulationUtils;->mButtonHolder:Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;->mBtn_7:Landroid/widget/Button;

    const-string v1, "->video"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/android/incallui/secutils/SimulationUtils;->mButtonHolder:Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;->mBtn_7:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/secutils/SimulationUtils;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/android/incallui/secutils/SimulationUtils;->mButtonHolder:Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;->mBtn_8:Landroid/widget/Button;

    const-string v1, "->vs_rx"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/android/incallui/secutils/SimulationUtils;->mButtonHolder:Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/SimulationUtils$ButtonHolder;->mBtn_8:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/secutils/SimulationUtils;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/secutils/SimulationUtils;->showSimulationButton(Z)V

    goto/16 :goto_0
.end method

.method public modifyReceiveVSRx()V
    .locals 5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/incallui/secui/SecCall;->setType(I)V

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/incallui/secui/SecCall;->setModifyProgressingType(I)V

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/incallui/secui/SecCall;->setVideoResolution(I)V

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    :cond_0
    return-void
.end method

.method public modifyReceiveVideo()V
    .locals 6

    const/4 v5, 0x3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    const-string v3, "concept_usa_att"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->foreceUpdateModifyRequestDummyType()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/incallui/secui/SecCall;->setType(I)V

    invoke-virtual {v2, v5}, Lcom/android/incallui/secui/SecCall;->setModifyProgressingType(I)V

    invoke-virtual {v2, v5}, Lcom/android/incallui/secui/SecCall;->setVideoResolution(I)V

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method public modifyReuqestToVSTx()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/SecModifyCallProcessor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/incallui/SecModifyCallProcessor;->requestVideoShare(Z)V

    :cond_0
    return-void
.end method

.method public modifyReuqestToVideo()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/SecModifyCallProcessor;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/incallui/SecModifyCallProcessor;->requestModifyCall(I)Z

    :cond_0
    return-void
.end method

.method public showConferenceCallManager()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecInCallActivity;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/incallui/SecInCallActivity;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->showConferenceCallManager()V

    :cond_0
    return-void
.end method

.method public toggleButton()V
    .locals 1

    sget-boolean v0, Lcom/android/incallui/secutils/SimulationUtils;->mIsShowButton:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/incallui/secutils/SimulationUtils;->showSimulationButton(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/secutils/SimulationUtils;->showSimulationButton(Z)V

    goto :goto_0
.end method

.method public transitToVSRx()V
    .locals 5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/incallui/secui/SecCall;->setType(I)V

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    :cond_0
    return-void
.end method

.method public transitToVSTx()V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v4}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/incallui/secui/SecCall;->setType(I)V

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    :cond_0
    return-void
.end method
