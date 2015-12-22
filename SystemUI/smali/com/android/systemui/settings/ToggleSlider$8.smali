.class Lcom/android/systemui/settings/ToggleSlider$8;
.super Ljava/lang/Object;
.source "ToggleSlider.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/ToggleSlider;
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

    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSlider$8;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$8;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # setter for: Lcom/android/systemui/settings/ToggleSlider;->mFromUser:Z
    invoke-static {v1, p3}, Lcom/android/systemui/settings/ToggleSlider;->access$2202(Lcom/android/systemui/settings/ToggleSlider;Z)Z

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$8;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # setter for: Lcom/android/systemui/settings/ToggleSlider;->settedSplitValue:I
    invoke-static {v1, p2}, Lcom/android/systemui/settings/ToggleSlider;->access$2502(Lcom/android/systemui/settings/ToggleSlider;I)I

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$8;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$300(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$8;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    iget-boolean v1, v1, Lcom/android/systemui/settings/ToggleSlider;->mIsMirror:Z

    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$8;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$300(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider$8;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSlider$8;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mTracking:Z
    invoke-static {v3}, Lcom/android/systemui/settings/ToggleSlider;->access$1500(Lcom/android/systemui/settings/ToggleSlider;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider$8;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v4}, Lcom/android/systemui/settings/ToggleSlider;->access$700(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    invoke-interface {v1, v2, v3, v4, p2}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZI)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$8;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/settings/ToggleSlider;->setSplitText(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$8;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1400(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$8;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mStopMirroring:Z
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$2400(Lcom/android/systemui/settings/ToggleSlider;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$8;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1400(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v1

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1900(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_1
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseAnimatedBrightnessIcon:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$8;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$700(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$8;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$700(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$8;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    mul-int/lit8 v2, p2, 0x19

    invoke-virtual {v1, v5, v2}, Lcom/android/systemui/settings/ToggleSlider;->updateIcon(ZI)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$8;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1400(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$8;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1400(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v1

    mul-int/lit8 v2, p2, 0x19

    invoke-virtual {v1, v5, v2}, Lcom/android/systemui/settings/ToggleSlider;->updateIcon(ZI)V

    :cond_2
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$8;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # setter for: Lcom/android/systemui/settings/ToggleSlider;->mTracking:Z
    invoke-static {v0, v5}, Lcom/android/systemui/settings/ToggleSlider;->access$1502(Lcom/android/systemui/settings/ToggleSlider;Z)Z

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$8;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$300(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$8;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    iget-boolean v0, v0, Lcom/android/systemui/settings/ToggleSlider;->mIsMirror:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$8;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$300(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$8;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider$8;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mTracking:Z
    invoke-static {v2}, Lcom/android/systemui/settings/ToggleSlider;->access$1500(Lcom/android/systemui/settings/ToggleSlider;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSlider$8;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v3}, Lcom/android/systemui/settings/ToggleSlider;->access$700(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider$8;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;
    invoke-static {v4}, Lcom/android/systemui/settings/ToggleSlider;->access$1900(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZI)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$8;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$1400(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$8;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$1400(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$1900(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setPressed(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$8;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$2100(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$8;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$2100(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->showMirror()V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$8;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$2100(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$8;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v0}, Lcom/android/systemui/settings/ToggleSlider;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->setLocation(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$8;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # setter for: Lcom/android/systemui/settings/ToggleSlider;->mTracking:Z
    invoke-static {v0, v5}, Lcom/android/systemui/settings/ToggleSlider;->access$1502(Lcom/android/systemui/settings/ToggleSlider;Z)Z

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$8;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$300(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$8;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    iget-boolean v0, v0, Lcom/android/systemui/settings/ToggleSlider;->mIsMirror:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$8;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$300(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$8;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider$8;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mTracking:Z
    invoke-static {v2}, Lcom/android/systemui/settings/ToggleSlider;->access$1500(Lcom/android/systemui/settings/ToggleSlider;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSlider$8;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v3}, Lcom/android/systemui/settings/ToggleSlider;->access$700(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider$8;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;
    invoke-static {v4}, Lcom/android/systemui/settings/ToggleSlider;->access$1900(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZI)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$8;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$1400(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$8;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$1400(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$1900(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setPressed(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$8;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$2100(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$8;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$2100(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->hideMirror()V

    :cond_2
    return-void
.end method
