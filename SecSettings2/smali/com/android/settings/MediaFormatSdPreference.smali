.class public Lcom/android/settings/MediaFormatSdPreference;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MediaFormatSdPreference.java"


# instance fields
.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mFinalLayout:Landroid/widget/LinearLayout;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialLayout:Landroid/widget/LinearLayout;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field private mParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/MediaFormatSdPreference;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/settings/MediaFormatSdPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MediaFormatSdPreference$1;-><init>(Lcom/android/settings/MediaFormatSdPreference;)V

    iput-object v0, p0, Lcom/android/settings/MediaFormatSdPreference;->mInitiateListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/MediaFormatSdPreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings/MediaFormatSdPreference$2;-><init>(Lcom/android/settings/MediaFormatSdPreference;)V

    iput-object v0, p0, Lcom/android/settings/MediaFormatSdPreference;->mFinalClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MediaFormatSdPreference;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/MediaFormatSdPreference;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/MediaFormatSdPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/MediaFormatSdPreference;->establishFinalConfirmationState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/MediaFormatSdPreference;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/MediaFormatSdPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/MediaFormatSdPreference;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MediaFormatSdPreference;->mContentView:Landroid/view/View;

    const v1, 0x7f10027e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MediaFormatSdPreference;->mFinalButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/MediaFormatSdPreference;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MediaFormatSdPreference;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/MediaFormatSdPreference;->mFinalLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/MediaFormatSdPreference;->mInitialLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private establishInitialState()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/MediaFormatSdPreference;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MediaFormatSdPreference;->mContentView:Landroid/view/View;

    const v1, 0x7f100280

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MediaFormatSdPreference;->mInitiateButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/MediaFormatSdPreference;->mInitiateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MediaFormatSdPreference;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/MediaFormatSdPreference;->mInitialLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/MediaFormatSdPreference;->mFinalLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3

    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/MediaFormatSdPreference;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v1, 0x7f0a06e3

    invoke-virtual {p0, v1}, Lcom/android/settings/MediaFormatSdPreference;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0a12ab

    invoke-virtual {p0, v2}, Lcom/android/settings/MediaFormatSdPreference;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "MediaFormatSdPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult() requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " /resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/MediaFormatSdPreference;->establishFinalConfirmationState()V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/MediaFormatSdPreference;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/MediaFormatSdPreference;->establishInitialState()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/MediaFormatSdPreference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MediaFormatSdPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/MediaFormatSdPreference;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/settings/MediaFormatSdPreference;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/android/settings/MediaFormatSdPreference;->mParent:Landroid/view/ViewGroup;

    const v0, 0x7f040119

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MediaFormatSdPreference;->mContentView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/MediaFormatSdPreference;->mContentView:Landroid/view/View;

    const v1, 0x7f100281

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/MediaFormatSdPreference;->mInitialLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/settings/MediaFormatSdPreference;->mContentView:Landroid/view/View;

    const v1, 0x7f100280

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MediaFormatSdPreference;->mInitiateButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/MediaFormatSdPreference;->mContentView:Landroid/view/View;

    const v1, 0x7f100282

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/MediaFormatSdPreference;->mFinalLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/settings/MediaFormatSdPreference;->mContentView:Landroid/view/View;

    const v1, 0x7f10027e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MediaFormatSdPreference;->mFinalButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/MediaFormatSdPreference;->mFinalLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/MediaFormatSdPreference;->mInitiateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MediaFormatSdPreference;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/MediaFormatSdPreference;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/MediaFormatSdPreference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/MediaFormatSdPreference;->establishInitialState()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void
.end method
