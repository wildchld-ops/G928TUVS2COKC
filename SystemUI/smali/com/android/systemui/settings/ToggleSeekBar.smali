.class public Lcom/android/systemui/settings/ToggleSeekBar;
.super Landroid/widget/SeekBar;
.source "ToggleSeekBar.java"


# static fields
.field private static bDoEnable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleSeekBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/settings/ToggleSeekBar;->bDoEnable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/ToggleSeekBar;->setEnabled(Z)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/SeekBar;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleSeekBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/settings/ToggleSeekBar;->bDoEnable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/ToggleSeekBar;->setEnabled(Z)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setEnable(Z)V
    .locals 3

    sput-boolean p1, Lcom/android/systemui/settings/ToggleSeekBar;->bDoEnable:Z

    const-string v0, "ToggleSeekBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bDoEnable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/systemui/settings/ToggleSeekBar;->bDoEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
