.class Lcom/android/systemui/volume/SecVolumePanel$5;
.super Ljava/lang/Object;
.source "SecVolumePanel.java"

# interfaces
.implements Lcom/android/systemui/volume/Interaction$Callback;


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

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumePanel$5;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInteraction()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel$5;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    # invokes: Lcom/android/systemui/volume/SecVolumePanel;->resetTimeout()V
    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumePanel;->access$1400(Lcom/android/systemui/volume/SecVolumePanel;)V

    return-void
.end method
