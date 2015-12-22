.class public Lcom/android/keyguard/KeyguardMessageArea$Helper;
.super Ljava/lang/Object;
.source "KeyguardMessageArea.java"

# interfaces
.implements Lcom/android/keyguard/SecurityMessageDisplay;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardMessageArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Helper"
.end annotation


# instance fields
.field mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/android/keyguard/R$id;->keyguard_message_area:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    if-nez v0, :cond_0

    sget v0, Lcom/android/keyguard/R$id;->keyguard_message_area_bouncer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    if-nez v0, :cond_1

    sget v0, Lcom/android/keyguard/R$id;->keyguard_message_area_signature:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    if-nez v0, :cond_2

    sget v0, Lcom/android/keyguard/R$id;->keyguard_message_area_backup:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    if-nez v0, :cond_3

    sget v0, Lcom/android/keyguard/R$id;->keyguard_message_area_backup_pin_usa:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find keyguard_message_area in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-void
.end method


# virtual methods
.method public hideBouncer(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    # invokes: Lcom/android/keyguard/KeyguardMessageArea;->showMessage(I)V
    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->access$300(Lcom/android/keyguard/KeyguardMessageArea;I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingBouncer:Z

    return-void
.end method

.method public removeShortcutMessage()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/keyguard/KeyguardMessageArea;->mShorcutMessage:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    return-void
.end method

.method public setMessage(IIZ)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMessageArea;->securityMessageChanged()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    iput p2, v0, Lcom/android/keyguard/KeyguardMessageArea;->mIcon:I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, p2, v2, v2, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    :cond_0
    return-void
.end method

.method public setMessage(IZ)V
    .locals 6

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    iget-object v3, v3, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v2, v3, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/keyguard/KeyguardMessageArea;->mIcon:I

    iget-object v3, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardMessageArea;->securityMessageChanged()V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPoorPerformanceModel()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v4, 0x320

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v3, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v3, v0}, Lcom/android/keyguard/KeyguardMessageArea;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method public varargs setMessage(IZ[Ljava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/keyguard/KeyguardMessageArea;->mIcon:I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMessageArea;->securityMessageChanged()V

    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;IZ)V
    .locals 4

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    iput-object p1, v1, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    iput p2, v1, Lcom/android/keyguard/KeyguardMessageArea;->mIcon:I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardMessageArea;->securityMessageChanged()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1, p2, v2, v2, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardMessageArea;->length()I

    move-result v1

    const/16 v2, 0x46

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardMessageArea;->getTextSize()F

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    div-float v0, v1, v2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    const/high16 v2, 0x41600000    # 14.0f

    const/high16 v3, 0x41700000    # 15.0f

    div-float v3, v0, v3

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setTextSize(F)V

    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;Z)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    iput-object p1, v2, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/keyguard/KeyguardMessageArea;->mIcon:I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardMessageArea;->securityMessageChanged()V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPoorPerformanceModel()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardMessageArea;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method public setMessageAreaVisiblity(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    goto :goto_0
.end method

.method public setShortcutMessage(I)V
    .locals 2

    if-lez p1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v0, v1, Lcom/android/keyguard/KeyguardMessageArea;->mShorcutMessage:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    :cond_0
    return-void
.end method

.method public setShortcutMessageLayout()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    # invokes: Lcom/android/keyguard/KeyguardMessageArea;->setShortcutReleasedLayout()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardMessageArea;->access$200(Lcom/android/keyguard/KeyguardMessageArea;)V

    return-void
.end method

.method public setTimeout(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    int-to-long v2, p1

    iput-wide v2, v0, Lcom/android/keyguard/KeyguardMessageArea;->mTimeout:J

    return-void
.end method

.method public showBouncer(I)V
    .locals 2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x0

    # invokes: Lcom/android/keyguard/KeyguardMessageArea;->hideMessage(IZ)V
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardMessageArea;->access$000(Lcom/android/keyguard/KeyguardMessageArea;IZ)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingBouncer:Z

    return-void
.end method
