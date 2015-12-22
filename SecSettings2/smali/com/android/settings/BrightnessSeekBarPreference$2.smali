.class Lcom/android/settings/BrightnessSeekBarPreference$2;
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

    iput-object p1, p0, Lcom/android/settings/BrightnessSeekBarPreference$2;->this$0:Lcom/android/settings/BrightnessSeekBarPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference$2;->this$0:Lcom/android/settings/BrightnessSeekBarPreference;

    invoke-virtual {v0}, Lcom/android/settings/BrightnessSeekBarPreference;->onBrightnessModeChanged()V

    return-void
.end method
