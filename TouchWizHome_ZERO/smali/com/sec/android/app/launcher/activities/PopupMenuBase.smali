.class public abstract Lcom/sec/android/app/launcher/activities/PopupMenuBase;
.super Ljava/lang/Object;
.source "PopupMenuBase.java"

# interfaces
.implements Lcom/sec/android/app/launcher/activities/popup/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/activities/PopupMenuBase$10;,
        Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field protected static mParentActivity:Landroid/app/Activity;


# instance fields
.field protected mButton:Landroid/widget/ImageButton;

.field private mFadeInAnimation:Landroid/view/animation/Animation;

.field private mFadeOutAnimation:Landroid/view/animation/Animation;

.field protected mPopupMenu:Lcom/sec/android/app/launcher/activities/popup/PopupMenu;

.field private mSlideInAnimation:Landroid/view/animation/Animation;

.field private mSlideOutAnimation:Landroid/view/animation/Animation;

.field private mVisible:Z

.field protected optionsButton:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mParentActivity:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;IZ)V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mButton:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->optionsButton:Landroid/widget/TextView;

    iput-boolean v5, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mVisible:Z

    sput-object p1, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mParentActivity:Landroid/app/Activity;

    if-eqz p3, :cond_2

    sget-object v1, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mButton:Landroid/widget/ImageButton;

    if-nez v1, :cond_1

    sget-object v1, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->TAG:Ljava/lang/String;

    const-string v2, "Button resource not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/sec/android/app/launcher/activities/PopupMenuBase$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/launcher/activities/PopupMenuBase$1;-><init>(Lcom/sec/android/app/launcher/activities/PopupMenuBase;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/sec/android/app/launcher/activities/PopupMenuBase$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/launcher/activities/PopupMenuBase$2;-><init>(Lcom/sec/android/app/launcher/activities/PopupMenuBase;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :goto_1
    sget-object v1, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mParentActivity:Landroid/app/Activity;

    const v2, 0x7f040029

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mSlideInAnimation:Landroid/view/animation/Animation;

    sget-object v1, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mParentActivity:Landroid/app/Activity;

    const v2, 0x7f04002a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mSlideOutAnimation:Landroid/view/animation/Animation;

    sget-object v1, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mParentActivity:Landroid/app/Activity;

    const v2, 0x7f040027

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mFadeInAnimation:Landroid/view/animation/Animation;

    sget-object v1, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mParentActivity:Landroid/app/Activity;

    const v2, 0x7f040028

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mFadeOutAnimation:Landroid/view/animation/Animation;

    if-eqz p3, :cond_4

    new-instance v1, Lcom/sec/android/app/launcher/activities/popup/PopupMenu;

    sget-object v2, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mParentActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mButton:Landroid/widget/ImageButton;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/launcher/activities/popup/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mPopupMenu:Lcom/sec/android/app/launcher/activities/popup/PopupMenu;

    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mPopupMenu:Lcom/sec/android/app/launcher/activities/popup/PopupMenu;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/launcher/activities/popup/PopupMenu;->setOnDismissListener(Lcom/sec/android/app/launcher/activities/popup/PopupMenu$OnDismissListener;)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSavedPowerSavingModeEnableState()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mButton:Landroid/widget/ImageButton;

    const v2, 0x7f020002

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mParentActivity:Landroid/app/Activity;

    const v2, 0x7f0b00d4

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->optionsButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->optionsButton:Landroid/widget/TextView;

    if-nez v1, :cond_3

    sget-object v1, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->TAG:Ljava/lang/String;

    const-string v2, "Button resource not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->optionsButton:Landroid/widget/TextView;

    sget-object v2, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mParentActivity:Landroid/app/Activity;

    const v3, 0x7f0d0070

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mParentActivity:Landroid/app/Activity;

    const v2, 0x7f0d0029

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mParentActivity:Landroid/app/Activity;

    const v4, 0x7f0d00d1

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->optionsButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->optionsButton:Landroid/widget/TextView;

    new-instance v2, Lcom/sec/android/app/launcher/activities/PopupMenuBase$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/launcher/activities/PopupMenuBase$3;-><init>(Lcom/sec/android/app/launcher/activities/PopupMenuBase;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->optionsButton:Landroid/widget/TextView;

    new-instance v2, Lcom/sec/android/app/launcher/activities/PopupMenuBase$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/launcher/activities/PopupMenuBase$4;-><init>(Lcom/sec/android/app/launcher/activities/PopupMenuBase;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto/16 :goto_1

    :cond_4
    new-instance v1, Lcom/sec/android/app/launcher/activities/popup/PopupMenu;

    sget-object v2, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mParentActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->optionsButton:Landroid/widget/TextView;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/launcher/activities/popup/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mPopupMenu:Lcom/sec/android/app/launcher/activities/popup/PopupMenu;

    goto/16 :goto_2
.end method

.method static synthetic access$000(Lcom/sec/android/app/launcher/activities/PopupMenuBase;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mVisible:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/launcher/activities/PopupMenuBase;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mVisible:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/launcher/activities/PopupMenuBase;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mSlideOutAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/launcher/activities/PopupMenuBase;ZLcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->setButtonVisible(ZLcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/launcher/activities/PopupMenuBase;ZLcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->setButtonInvisible(ZLcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;)V

    return-void
.end method

.method private setButtonInvisible(ZLcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;)V
    .locals 2

    if-eqz p1, :cond_0

    sget-object v0, Lcom/sec/android/app/launcher/activities/PopupMenuBase$10;->$SwitchMap$com$sec$android$app$launcher$activities$PopupMenuBase$AnimationType:[I

    invoke-virtual {p2}, Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mSlideOutAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sec/android/app/launcher/activities/PopupMenuBase$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/PopupMenuBase$5;-><init>(Lcom/sec/android/app/launcher/activities/PopupMenuBase;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mSlideOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mFadeOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setButtonVisible(ZLcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    if-eqz p1, :cond_0

    sget-object v0, Lcom/sec/android/app/launcher/activities/PopupMenuBase$10;->$SwitchMap$com$sec$android$app$launcher$activities$PopupMenuBase$AnimationType:[I

    invoke-virtual {p2}, Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mSlideInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mFadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getButton()Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getOptionsButton()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->optionsButton:Landroid/widget/TextView;

    return-object v0
.end method

.method public getParentActivity()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mParentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method protected abstract onButtonClick()V
.end method

.method public onDismiss(Lcom/sec/android/app/launcher/activities/popup/PopupMenu;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mVisible:Z

    return-void
.end method

.method public setButton(Landroid/widget/ImageButton;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mButton:Landroid/widget/ImageButton;

    return-void
.end method

.method public setButtonEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method public setButtonVisibility(I)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/launcher/activities/PopupMenuBase$6;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/launcher/activities/PopupMenuBase$6;-><init>(Lcom/sec/android/app/launcher/activities/PopupMenuBase;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setButtonVisibility(ZZLcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->setButtonVisibility(ZZLcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;I)V

    return-void
.end method

.method public setButtonVisibility(ZZLcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;I)V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/launcher/activities/PopupMenuBase$8;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/sec/android/app/launcher/activities/PopupMenuBase$8;-><init>(Lcom/sec/android/app/launcher/activities/PopupMenuBase;Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;ZZ)V

    int-to-long v2, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setOptionsButton(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->optionsButton:Landroid/widget/TextView;

    return-void
.end method

.method public setOptionsButtonDismiss()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mVisible:Z

    return-void
.end method

.method public setOptionsButtonEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->optionsButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public setOptionsButtonVisibility(I)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/launcher/activities/PopupMenuBase$7;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/launcher/activities/PopupMenuBase$7;-><init>(Lcom/sec/android/app/launcher/activities/PopupMenuBase;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setOptionsButtonVisibility(ZZLcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->setOptionsButtonVisibility(ZZLcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;I)V

    return-void
.end method

.method public setOptionsButtonVisibility(ZZLcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;I)V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/launcher/activities/PopupMenuBase$9;

    invoke-direct {v1, p0, p3, p1}, Lcom/sec/android/app/launcher/activities/PopupMenuBase$9;-><init>(Lcom/sec/android/app/launcher/activities/PopupMenuBase;Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;Z)V

    int-to-long v2, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;)V
    .locals 0

    sput-object p1, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mParentActivity:Landroid/app/Activity;

    return-void
.end method
