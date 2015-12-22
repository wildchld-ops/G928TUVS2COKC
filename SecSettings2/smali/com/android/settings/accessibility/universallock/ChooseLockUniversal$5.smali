.class Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;
.super Ljava/lang/Object;
.source "ChooseLockUniversal.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->attachListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v5, "ChooseLockUniversal"

    const-string v6, "confirm Clicked"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static {v5}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$500(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mCurrentScreenStage:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;
    invoke-static {v5}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$600(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    move-result-object v5

    sget-object v6, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    iget-object v6, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static {v6}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$500(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v6

    # setter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mFirstPassword:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$702(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static {v5}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$500(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static {v5}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$500(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mRightButton:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$800(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/widget/Button;

    move-result-object v5

    const v6, 0x7f0a0a57

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mRightButton:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$800(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mLeftButton:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$900(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$1000(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    invoke-virtual {v6}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0a41

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;
    invoke-static {v5}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$1100(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$1000(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$1000(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    invoke-virtual {v7}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a1524

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    sget-object v6, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;->CONFIRM_DIRECTION_SCREEN:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    # setter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mCurrentScreenStage:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;
    invoke-static {v5, v6}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$602(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;)Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyStepCircleList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$200(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$000(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # invokes: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->clearStepCircles()V
    invoke-static {v5}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$1200(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # setter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;
    invoke-static {v5, v9}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$002(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # setter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;
    invoke-static {v5, v9}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$402(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mFirstPassword:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$700(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static {v6}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$500(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v3, 0x4

    const/16 v2, 0x8

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    iget-object v6, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    invoke-virtual {v6}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/android/settings/ChooseLockAdditionalPin;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v5, "lockscreen.password_min"

    const/4 v6, 0x4

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "lockscreen.password_max"

    const/16 v6, 0x8

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v4, 0x1000

    const-string v5, "lockscreen.password_type"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "isUniversalLock"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v5, "firstlock"

    iget-object v6, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static {v6}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$500(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPasswordNumbers()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    invoke-virtual {v5, v1}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->startActivity(Landroid/content/Intent;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    invoke-virtual {v5}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mRightButton:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$800(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$1000(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    invoke-virtual {v6}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0a39

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static {v5}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$500(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static {v5}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$500(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    goto/16 :goto_0
.end method
