.class Lcom/android/systemui/settings/ToggleSlider$3;
.super Ljava/lang/Object;
.source "ToggleSlider.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/ToggleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/ToggleSlider;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/ToggleSlider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 10

    const/16 v9, 0x42

    const/16 v8, 0x17

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const-string v4, "false"

    aput-object v4, v1, v2

    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v5, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/settings/ToggleSlider;->access$400(Lcom/android/systemui/settings/ToggleSlider;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v7, "isSettingsChangesAllowed"

    # invokes: Lcom/android/systemui/settings/ToggleSlider;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    invoke-static {v4, v5, v6, v7, v1}, Lcom/android/systemui/settings/ToggleSlider;->access$500(Lcom/android/systemui/settings/ToggleSlider;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    if-nez v0, :cond_0

    const-string v2, "ToggleSlider"

    const-string v4, "onTouch(): Change brightness was not allowed"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_1
    :goto_1
    move v3, v2

    goto :goto_0

    :pswitch_0
    if-eq p2, v9, :cond_2

    if-ne p2, v8, :cond_1

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/settings/ToggleSlider;->access$400(Lcom/android/systemui/settings/ToggleSlider;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->IsDualFolderType(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/settings/ToggleSlider;->access$400(Lcom/android/systemui/settings/ToggleSlider;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->isFolderOpen(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/settings/ToggleSlider;->access$400(Lcom/android/systemui/settings/ToggleSlider;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0d0578

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v4}, Lcom/android/systemui/settings/ToggleSlider;->access$700(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/CompoundButton;->setPressed(Z)V

    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # setter for: Lcom/android/systemui/settings/ToggleSlider;->mIsTogglePressed:Z
    invoke-static {v4, v3}, Lcom/android/systemui/settings/ToggleSlider;->access$602(Lcom/android/systemui/settings/ToggleSlider;Z)Z

    goto :goto_1

    :pswitch_1
    if-eq p2, v9, :cond_4

    if-ne p2, v8, :cond_1

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v4}, Lcom/android/systemui/settings/ToggleSlider;->access$700(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/CompoundButton;->setPressed(Z)V

    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v4}, Lcom/android/systemui/settings/ToggleSlider;->access$700(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v5}, Lcom/android/systemui/settings/ToggleSlider;->isChecked()Z

    move-result v5

    if-nez v5, :cond_5

    move v2, v3

    :cond_5
    invoke-virtual {v4, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
