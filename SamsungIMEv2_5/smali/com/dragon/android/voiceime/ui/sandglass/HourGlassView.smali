.class public Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;
.super Landroid/widget/RelativeLayout;
.source "HourGlassView.java"


# static fields
.field private static CONTENT_HEIGHT:F

.field private static CONTENT_WIDTH:F


# instance fields
.field private mController:Lcom/dragon/android/voiceime/ui/sandglass/Controller;

.field private mSandDropView:Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;

.field private mSandLowerView:Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;

.field private mSandUpperView:Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x42080000    # 34.0f

    sput v0, Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;->CONTENT_WIDTH:F

    const/high16 v0, 0x421c0000    # 39.0f

    sput v0, Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;->CONTENT_HEIGHT:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;->init()V

    return-void
.end method

.method private addDropSand()Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;
    .locals 4

    new-instance v0, Lcom/dragon/android/voiceime/ui/sandglass/SandDropView;

    invoke-virtual {p0}, Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;->CONTENT_WIDTH:F

    sget v3, Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;->CONTENT_HEIGHT:F

    invoke-direct {v0, v1, v2, v3}, Lcom/dragon/android/voiceime/ui/sandglass/SandDropView;-><init>(Landroid/content/Context;FF)V

    invoke-virtual {p0, v0}, Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private addFrame()Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;
    .locals 4

    new-instance v0, Lcom/dragon/android/voiceime/ui/sandglass/ClockFrameView;

    invoke-virtual {p0}, Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;->CONTENT_WIDTH:F

    sget v3, Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;->CONTENT_HEIGHT:F

    invoke-direct {v0, v1, v2, v3}, Lcom/dragon/android/voiceime/ui/sandglass/ClockFrameView;-><init>(Landroid/content/Context;FF)V

    invoke-virtual {p0, v0}, Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private addLowerSand()Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;
    .locals 4

    new-instance v0, Lcom/dragon/android/voiceime/ui/sandglass/SandLowerView;

    invoke-virtual {p0}, Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;->CONTENT_WIDTH:F

    sget v3, Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;->CONTENT_HEIGHT:F

    invoke-direct {v0, v1, v2, v3}, Lcom/dragon/android/voiceime/ui/sandglass/SandLowerView;-><init>(Landroid/content/Context;FF)V

    invoke-virtual {p0, v0}, Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private addUpperSand()Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;
    .locals 4

    new-instance v0, Lcom/dragon/android/voiceime/ui/sandglass/SandUpperView;

    invoke-virtual {p0}, Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;->CONTENT_WIDTH:F

    sget v3, Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;->CONTENT_HEIGHT:F

    invoke-direct {v0, v1, v2, v3}, Lcom/dragon/android/voiceime/ui/sandglass/SandUpperView;-><init>(Landroid/content/Context;FF)V

    invoke-virtual {p0, v0}, Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private init()V
    .locals 4

    invoke-direct {p0}, Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;->addFrame()Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;

    invoke-direct {p0}, Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;->addUpperSand()Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;

    move-result-object v0

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;->mSandUpperView:Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;

    invoke-direct {p0}, Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;->addLowerSand()Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;

    move-result-object v0

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;->mSandLowerView:Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;

    invoke-direct {p0}, Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;->addDropSand()Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;

    move-result-object v0

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;->mSandDropView:Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;

    new-instance v0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;

    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;->mSandUpperView:Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;

    iget-object v2, p0, Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;->mSandLowerView:Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;

    iget-object v3, p0, Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;->mSandDropView:Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/dragon/android/voiceime/ui/sandglass/Controller;-><init>(Landroid/view/View;Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;)V

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;->mController:Lcom/dragon/android/voiceime/ui/sandglass/Controller;

    return-void
.end method


# virtual methods
.method public play(I)V
    .locals 1

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;->mController:Lcom/dragon/android/voiceime/ui/sandglass/Controller;

    invoke-virtual {v0}, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->stop()V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;->mController:Lcom/dragon/android/voiceime/ui/sandglass/Controller;

    invoke-virtual {v0, p1}, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->play(I)V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;->mController:Lcom/dragon/android/voiceime/ui/sandglass/Controller;

    invoke-virtual {v0}, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->stop()V

    return-void
.end method
