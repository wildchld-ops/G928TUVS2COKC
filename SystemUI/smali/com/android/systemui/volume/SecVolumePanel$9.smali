.class Lcom/android/systemui/volume/SecVolumePanel$9;
.super Ljava/lang/Object;
.source "SecVolumePanel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SecVolumePanel;->updateSliderEnabled(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumePanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumePanel$9;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "SecVolumePanel"

    const-string v1, "updateSliderEnabled : onTouch : call resetTimeout()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel$9;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    # invokes: Lcom/android/systemui/volume/SecVolumePanel;->resetTimeout()V
    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumePanel;->access$1400(Lcom/android/systemui/volume/SecVolumePanel;)V

    const/4 v0, 0x0

    return v0
.end method
