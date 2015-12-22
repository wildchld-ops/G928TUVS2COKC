.class public Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;
.super Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;
.source "CocktailVolumePanel.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private bOrientationChanged:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCocktailContext:Landroid/content/Context;

.field private mContext:Landroid/content/Context;

.field private mOrientation:I

.field private mRoot:Landroid/view/ViewGroup;

.field private final mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeekbar:Landroid/widget/SeekBar;

.field private mSeekbarMax:I

.field private mSeekbarProgress:I

.field private mStreamImage:Landroid/widget/ImageView;

.field private mStreamType:I

.field private mVolumeLevelText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;-><init>(Landroid/content/Context;)V

    const-string v0, "CocktailVolumePanel"

    iput-object v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel$1;-><init>(Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;)V

    iput-object v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    iput-object p1, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mCocktailContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mStreamType:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->setStreamVolume(III)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mSeekbarProgress:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->makePanelView()V

    return-void
.end method

.method private getStreamVolume(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method private init()V
    .locals 3

    const-string v1, "CocktailVolumePanel"

    const-string v2, "init()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mOrientation:I

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040013

    iget-object v2, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mRoot:Landroid/view/ViewGroup;

    const v2, 0x7f0e00ea

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mStreamImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mRoot:Landroid/view/ViewGroup;

    const v2, 0x7f0e00eb

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mSeekbar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->initCocktailVolumeSeekBar()V

    iget-object v1, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mSeekbar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v1, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mRoot:Landroid/view/ViewGroup;

    const v2, 0x7f0e00ec

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mVolumeLevelText:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->bOrientationChanged:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->makePanelView()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->bOrientationChanged:Z

    :cond_0
    return-void
.end method

.method private initCocktailVolumeSeekBar()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mSeekbar:Landroid/widget/SeekBar;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMode(I)V

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->setDualColorSeekBar()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mSeekbar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMode(I)V

    goto :goto_0
.end method

.method private isDeviceOutSpeaker()Z
    .locals 2

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMuted()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makePanelView()V
    .locals 2

    const-string v0, "CocktailVolumePanel"

    const-string v1, "makePanelView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->makeStreamImageIcon()V

    invoke-direct {p0}, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->makeVolumeSeekBar()V

    invoke-direct {p0}, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->makeVolumeLevelTextView()V

    return-void
.end method

.method private makeStreamImageIcon()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->isMuted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mStreamImage:Landroid/widget/ImageView;

    const v1, 0x7f020290

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mStreamImage:Landroid/widget/ImageView;

    const v1, 0x7f02028f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private makeVolumeLevelTextView()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mVolumeLevelText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mVolumeLevelText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mSeekbarProgress:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private makeVolumeSeekBar()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mSeekbar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    const-string v0, "CocktailVolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSeekbarProgress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mSeekbarProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mSeekbar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mSeekbarMax:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mSeekbar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mSeekbarProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method private setDualColorSeekBar()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->isDeviceOutSpeaker()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "CocktailVolumePanel"

    const-string v1, "setDualColorSeekBar1()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mSeekbar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->getEarProtectLimitIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOverlapPointForDualColor(I)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "CocktailVolumePanel"

    const-string v1, "setDualColorSeekBar2()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mSeekbar:Landroid/widget/SeekBar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOverlapPointForDualColor(I)V

    goto :goto_0
.end method

.method private setStreamVolume(III)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->getStreamVolume(I)I

    move-result v0

    if-eq v0, p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 2

    const-string v0, "CocktailVolumePanel"

    const-string v1, "getView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onClosePanel()V
    .locals 2

    const-string v0, "CocktailVolumePanel"

    const-string v1, "onClosePanel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 3

    const-string v0, "CocktailVolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mOrientation:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->bOrientationChanged:Z

    invoke-direct {p0}, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->init()V

    invoke-super {p0, p1}, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->onOrientationChanged(I)V

    return-void
.end method

.method public onPanelVisibilityChanged(I)V
    .locals 3

    const-string v0, "CocktailVolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPanelVisibilityChanged() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setData(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "progress"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mSeekbarProgress:I

    const-string v0, "max"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mSeekbarMax:I

    const-string v0, "streamtype"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mStreamType:I

    const-string v0, "CocktailVolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setData() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mSeekbarProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->makePanelView()V

    return-void
.end method
