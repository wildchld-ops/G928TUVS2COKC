.class Lcom/android/systemui/volume/SecVolumePanel$6;
.super Ljava/lang/Object;
.source "SecVolumePanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SecVolumePanel;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ZenModeController;)V
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

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumePanel$6;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel$6;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    # getter for: Lcom/android/systemui/volume/SecVolumePanel;->mMoreButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumePanel;->access$1000(Lcom/android/systemui/volume/SecVolumePanel;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel$6;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    # invokes: Lcom/android/systemui/volume/SecVolumePanel;->expand()V
    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumePanel;->access$1500(Lcom/android/systemui/volume/SecVolumePanel;)V

    :cond_0
    const-string v0, "SecVolumePanel"

    const-string v1, "SecVolumePanel : onClick : call resetTimeout()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel$6;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    # invokes: Lcom/android/systemui/volume/SecVolumePanel;->resetTimeout()V
    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumePanel;->access$1400(Lcom/android/systemui/volume/SecVolumePanel;)V

    return-void
.end method
