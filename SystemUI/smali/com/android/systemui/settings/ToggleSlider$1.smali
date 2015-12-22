.class Lcom/android/systemui/settings/ToggleSlider$1;
.super Ljava/lang/Object;
.source "ToggleSlider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSlider$1;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$1;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mPossibleHighbrightnessMode:Z
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$000(Lcom/android/systemui/settings/ToggleSlider;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "ToggleSlider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouch hbm is enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSlider$1;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mEnabledHighBrightnessMode:Z
    invoke-static {v3}, Lcom/android/systemui/settings/ToggleSlider;->access$100(Lcom/android/systemui/settings/ToggleSlider;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$1;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mHbmIcon:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$200(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->playSoundEffect(I)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$1;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$300(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$1;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$300(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider$1;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mEnabledHighBrightnessMode:Z
    invoke-static {v2}, Lcom/android/systemui/settings/ToggleSlider;->access$100(Lcom/android/systemui/settings/ToggleSlider;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-interface {v1, v0}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onChangedHBM(Z)V

    goto :goto_0
.end method
