.class Lcom/android/incallui/SecTabletCallCardVoiceView$1;
.super Ljava/lang/Object;
.source "SecTabletCallCardVoiceView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecTabletCallCardVoiceView;->updateWaveEffect(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecTabletCallCardVoiceView;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/android/incallui/SecTabletCallCardVoiceView;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecTabletCallCardVoiceView$1;->this$0:Lcom/android/incallui/SecTabletCallCardVoiceView;

    iput p2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView$1;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView$1;->this$0:Lcom/android/incallui/SecTabletCallCardVoiceView;

    iget-object v0, v0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView$1;->this$0:Lcom/android/incallui/SecTabletCallCardVoiceView;

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallCardVoiceView$1;->this$0:Lcom/android/incallui/SecTabletCallCardVoiceView;

    iget-object v1, v1, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mWaveEffectWidth:I

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView$1;->this$0:Lcom/android/incallui/SecTabletCallCardVoiceView;

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallCardVoiceView$1;->this$0:Lcom/android/incallui/SecTabletCallCardVoiceView;

    invoke-virtual {v1}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mWaveEffectHeight:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size for wave effect is measured : w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallCardVoiceView$1;->this$0:Lcom/android/incallui/SecTabletCallCardVoiceView;

    iget v1, v1, Lcom/android/incallui/SecTabletCallCardVoiceView;->mWaveEffectWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallCardVoiceView$1;->this$0:Lcom/android/incallui/SecTabletCallCardVoiceView;

    iget v1, v1, Lcom/android/incallui/SecTabletCallCardVoiceView;->mWaveEffectHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView$1;->this$0:Lcom/android/incallui/SecTabletCallCardVoiceView;

    iget v1, p0, Lcom/android/incallui/SecTabletCallCardVoiceView$1;->val$state:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecTabletCallCardVoiceView;->updateWaveEffectForCallState(I)V

    return-void
.end method
