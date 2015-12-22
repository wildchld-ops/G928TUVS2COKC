.class Lcom/android/settings/BrightnessSeekBarPreference$7;
.super Ljava/lang/Object;
.source "BrightnessSeekBarPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/BrightnessSeekBarPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BrightnessSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/BrightnessSeekBarPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/BrightnessSeekBarPreference$7;->this$0:Lcom/android/settings/BrightnessSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference$7;->this$0:Lcom/android/settings/BrightnessSeekBarPreference;

    # getter for: Lcom/android/settings/BrightnessSeekBarPreference;->mIsHBM_PMS_OnOffDB:Z
    invoke-static {v0}, Lcom/android/settings/BrightnessSeekBarPreference;->access$200(Lcom/android/settings/BrightnessSeekBarPreference;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "BrightnessSeekBarPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouch hbm is enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/BrightnessSeekBarPreference$7;->this$0:Lcom/android/settings/BrightnessSeekBarPreference;

    # getter for: Lcom/android/settings/BrightnessSeekBarPreference;->mIsHBM_PMS_OnOffDB:Z
    invoke-static {v2}, Lcom/android/settings/BrightnessSeekBarPreference;->access$200(Lcom/android/settings/BrightnessSeekBarPreference;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference$7;->this$0:Lcom/android/settings/BrightnessSeekBarPreference;

    # getter for: Lcom/android/settings/BrightnessSeekBarPreference;->mBrightnessIconView:Lcom/android/settings/widget/BrightnessIconView;
    invoke-static {v0}, Lcom/android/settings/BrightnessSeekBarPreference;->access$600(Lcom/android/settings/BrightnessSeekBarPreference;)Lcom/android/settings/widget/BrightnessIconView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/BrightnessIconView;->playSoundEffect(I)V

    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference$7;->this$0:Lcom/android/settings/BrightnessSeekBarPreference;

    # getter for: Lcom/android/settings/BrightnessSeekBarPreference;->mIsHBM_UserOnOffDB:Z
    invoke-static {v0}, Lcom/android/settings/BrightnessSeekBarPreference;->access$400(Lcom/android/settings/BrightnessSeekBarPreference;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference$7;->this$0:Lcom/android/settings/BrightnessSeekBarPreference;

    invoke-virtual {v0}, Lcom/android/settings/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "high_brightness_mode_user_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference$7;->this$0:Lcom/android/settings/BrightnessSeekBarPreference;

    # invokes: Lcom/android/settings/BrightnessSeekBarPreference;->setHBMIconAndText()V
    invoke-static {v0}, Lcom/android/settings/BrightnessSeekBarPreference;->access$300(Lcom/android/settings/BrightnessSeekBarPreference;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference$7;->this$0:Lcom/android/settings/BrightnessSeekBarPreference;

    invoke-virtual {v0}, Lcom/android/settings/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "high_brightness_mode_user_enable"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method
