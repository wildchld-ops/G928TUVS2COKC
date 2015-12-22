.class Lcom/android/settings/BrightnessSeekBarPreference$1;
.super Landroid/database/ContentObserver;
.source "BrightnessSeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/BrightnessSeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BrightnessSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/BrightnessSeekBarPreference;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/BrightnessSeekBarPreference$1;->this$0:Lcom/android/settings/BrightnessSeekBarPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference$1;->this$0:Lcom/android/settings/BrightnessSeekBarPreference;

    const/4 v1, -0x1

    # setter for: Lcom/android/settings/BrightnessSeekBarPreference;->mCurBrightness:I
    invoke-static {v0, v1}, Lcom/android/settings/BrightnessSeekBarPreference;->access$002(Lcom/android/settings/BrightnessSeekBarPreference;I)I

    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference$1;->this$0:Lcom/android/settings/BrightnessSeekBarPreference;

    invoke-virtual {v0}, Lcom/android/settings/BrightnessSeekBarPreference;->onBrightnessChanged()V

    return-void
.end method
