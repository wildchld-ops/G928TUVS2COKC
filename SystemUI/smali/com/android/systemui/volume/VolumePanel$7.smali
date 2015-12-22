.class Lcom/android/systemui/volume/VolumePanel$7;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumePanel;->createSliders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel;

.field final synthetic val$sc:Lcom/android/systemui/volume/VolumePanel$StreamControl;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$StreamControl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumePanel$7;->val$sc:Lcom/android/systemui/volume/VolumePanel$StreamControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mSecondaryIconTransition:Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$1100(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$7;->val$sc:Lcom/android/systemui/volume/VolumePanel$StreamControl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->start(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V

    return-void
.end method
