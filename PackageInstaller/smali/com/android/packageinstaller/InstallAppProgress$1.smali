.class Lcom/android/packageinstaller/InstallAppProgress$1;
.super Landroid/os/Handler;
.source "InstallAppProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/InstallAppProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/InstallAppProgress;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/InstallAppProgress;)V
    .locals 0

    iput-object p1, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    const/4 v12, 0x4

    const/4 v6, -0x1

    const/4 v11, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x0

    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v8, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    # getter for: Lcom/android/packageinstaller/InstallAppProgress;->mInstallFlowAnalytics:Lcom/android/packageinstaller/InstallFlowAnalytics;
    invoke-static {v8}, Lcom/android/packageinstaller/InstallAppProgress;->access$000(Lcom/android/packageinstaller/InstallAppProgress;)Lcom/android/packageinstaller/InstallFlowAnalytics;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setFlowFinishedWithPackageManagerResult(I)V

    iget-object v8, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-virtual {v8}, Lcom/android/packageinstaller/InstallAppProgress;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "android.intent.extra.RETURN_RESULT"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v8, "android.intent.extra.INSTALL_RESULT"

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    iget v9, p1, Landroid/os/Message;->arg1:I

    if-ne v9, v7, :cond_0

    :goto_1
    invoke-virtual {v8, v6, v5}, Lcom/android/packageinstaller/InstallAppProgress;->setResult(ILandroid/content/Intent;)V

    iget-object v6, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-virtual {v6}, Lcom/android/packageinstaller/InstallAppProgress;->finish()V

    goto :goto_0

    :cond_0
    move v6, v7

    goto :goto_1

    :cond_1
    iget-object v8, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    # getter for: Lcom/android/packageinstaller/InstallAppProgress;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v8}, Lcom/android/packageinstaller/InstallAppProgress;->access$100(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/ProgressBar;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v0, -0x1

    iget-object v8, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-virtual {v8}, Lcom/android/packageinstaller/InstallAppProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020001

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LevelListDrawable;

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v7, :cond_5

    iget-object v7, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    # getter for: Lcom/android/packageinstaller/InstallAppProgress;->mLaunchButton:Landroid/widget/Button;
    invoke-static {v7}, Lcom/android/packageinstaller/InstallAppProgress;->access$200(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/Button;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v1, v10}, Landroid/graphics/drawable/LevelListDrawable;->setLevel(I)Z

    const v2, 0x7f060009

    iget-object v7, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    iget-object v8, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-virtual {v8}, Lcom/android/packageinstaller/InstallAppProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    # getter for: Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;
    invoke-static {v9}, Lcom/android/packageinstaller/InstallAppProgress;->access$400(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    # setter for: Lcom/android/packageinstaller/InstallAppProgress;->mLaunchIntent:Landroid/content/Intent;
    invoke-static {v7, v8}, Lcom/android/packageinstaller/InstallAppProgress;->access$302(Lcom/android/packageinstaller/InstallAppProgress;Landroid/content/Intent;)Landroid/content/Intent;

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    # getter for: Lcom/android/packageinstaller/InstallAppProgress;->mLaunchIntent:Landroid/content/Intent;
    invoke-static {v7}, Lcom/android/packageinstaller/InstallAppProgress;->access$300(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-virtual {v7}, Lcom/android/packageinstaller/InstallAppProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    # getter for: Lcom/android/packageinstaller/InstallAppProgress;->mLaunchIntent:Landroid/content/Intent;
    invoke-static {v8}, Lcom/android/packageinstaller/InstallAppProgress;->access$300(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    const/4 v3, 0x1

    iget-object v7, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    # getter for: Lcom/android/packageinstaller/InstallAppProgress;->mLaunchIntent:Landroid/content/Intent;
    invoke-static {v7}, Lcom/android/packageinstaller/InstallAppProgress;->access$300(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    if-eqz v3, :cond_4

    iget-object v7, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    # getter for: Lcom/android/packageinstaller/InstallAppProgress;->mLaunchButton:Landroid/widget/Button;
    invoke-static {v7}, Lcom/android/packageinstaller/InstallAppProgress;->access$200(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/Button;

    move-result-object v7

    iget-object v8, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/drawable/LevelListDrawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/drawable/LevelListDrawable;->getIntrinsicHeight()I

    move-result v8

    invoke-virtual {v1, v10, v10, v7, v8}, Landroid/graphics/drawable/LevelListDrawable;->setBounds(IIII)V

    iget-object v7, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    # getter for: Lcom/android/packageinstaller/InstallAppProgress;->mStatusTextView:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/packageinstaller/InstallAppProgress;->access$700(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v1, v11, v11, v11}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v7, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    # getter for: Lcom/android/packageinstaller/InstallAppProgress;->mStatusTextView:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/packageinstaller/InstallAppProgress;->access$700(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(I)V

    if-eq v0, v6, :cond_7

    iget-object v6, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    # getter for: Lcom/android/packageinstaller/InstallAppProgress;->mExplanationTextView:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/packageinstaller/InstallAppProgress;->access$800(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object v6, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    # getter for: Lcom/android/packageinstaller/InstallAppProgress;->mExplanationTextView:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/packageinstaller/InstallAppProgress;->access$800(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    iget-object v6, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    # getter for: Lcom/android/packageinstaller/InstallAppProgress;->mDoneButton:Landroid/widget/Button;
    invoke-static {v6}, Lcom/android/packageinstaller/InstallAppProgress;->access$900(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/Button;

    move-result-object v6

    iget-object v7, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    # getter for: Lcom/android/packageinstaller/InstallAppProgress;->mOkPanel:Landroid/view/View;
    invoke-static {v6}, Lcom/android/packageinstaller/InstallAppProgress;->access$1000(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v7, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    # getter for: Lcom/android/packageinstaller/InstallAppProgress;->mLaunchButton:Landroid/widget/Button;
    invoke-static {v7}, Lcom/android/packageinstaller/InstallAppProgress;->access$200(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/Button;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    :cond_5
    iget v8, p1, Landroid/os/Message;->arg1:I

    const/4 v9, -0x4

    if-ne v8, v9, :cond_6

    iget-object v6, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    # invokes: Lcom/android/packageinstaller/InstallAppProgress;->showDialogInner(I)V
    invoke-static {v6, v7}, Lcom/android/packageinstaller/InstallAppProgress;->access$500(Lcom/android/packageinstaller/InstallAppProgress;I)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/LevelListDrawable;->setLevel(I)Z

    iget-object v7, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    iget v8, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/packageinstaller/InstallAppProgress;->getExplanationFromErrorCode(I)I
    invoke-static {v7, v8}, Lcom/android/packageinstaller/InstallAppProgress;->access$600(Lcom/android/packageinstaller/InstallAppProgress;I)I

    move-result v0

    const v2, 0x7f060010

    iget-object v7, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    # getter for: Lcom/android/packageinstaller/InstallAppProgress;->mLaunchButton:Landroid/widget/Button;
    invoke-static {v7}, Lcom/android/packageinstaller/InstallAppProgress;->access$200(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/Button;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    :cond_7
    iget-object v6, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    # getter for: Lcom/android/packageinstaller/InstallAppProgress;->mExplanationTextView:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/packageinstaller/InstallAppProgress;->access$800(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/TextView;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
