.class Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel$1;
.super Ljava/lang/Object;
.source "CocktailVolumePanel.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel$1;->this$0:Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    const-string v0, "CocktailVolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "progress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fromUser = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel$1;->this$0:Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;

    iget-object v1, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel$1;->this$0:Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;

    # getter for: Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mStreamType:I
    invoke-static {v1}, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->access$000(Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;)I

    move-result v1

    const/4 v2, 0x0

    # invokes: Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->setStreamVolume(III)V
    invoke-static {v0, v1, p2, v2}, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->access$100(Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;III)V

    iget-object v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel$1;->this$0:Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;

    # setter for: Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mSeekbarProgress:I
    invoke-static {v0, p2}, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->access$202(Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;I)I

    iget-object v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel$1;->this$0:Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;

    # invokes: Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->makePanelView()V
    invoke-static {v0}, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->access$300(Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
