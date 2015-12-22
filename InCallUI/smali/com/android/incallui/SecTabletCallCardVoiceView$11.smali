.class Lcom/android/incallui/SecTabletCallCardVoiceView$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecTabletCallCardVoiceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecTabletCallCardVoiceView;->animateIncomingPhotoForAnswer(Landroid/animation/AnimatorSet$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecTabletCallCardVoiceView;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecTabletCallCardVoiceView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecTabletCallCardVoiceView$11;->this$0:Lcom/android/incallui/SecTabletCallCardVoiceView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView$11;->this$0:Lcom/android/incallui/SecTabletCallCardVoiceView;

    iget-object v0, v0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView$11;->this$0:Lcom/android/incallui/SecTabletCallCardVoiceView;

    iget-object v0, v0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView$11;->this$0:Lcom/android/incallui/SecTabletCallCardVoiceView;

    iget-object v0, v0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIncomingPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView$11;->this$0:Lcom/android/incallui/SecTabletCallCardVoiceView;

    iget-object v0, v0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIncomingPhoto:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 5

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView$11;->this$0:Lcom/android/incallui/SecTabletCallCardVoiceView;

    iget-object v2, v2, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIncomingPhoto:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView$11;->this$0:Lcom/android/incallui/SecTabletCallCardVoiceView;

    iget-object v2, v2, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIncomingPhoto:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView$11;->this$0:Lcom/android/incallui/SecTabletCallCardVoiceView;

    iget-object v2, v2, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIncomingPhoto:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView$11;->this$0:Lcom/android/incallui/SecTabletCallCardVoiceView;

    invoke-virtual {v2}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView$11;->this$0:Lcom/android/incallui/SecTabletCallCardVoiceView;

    iget-object v2, v2, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIncomingPhoto:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/incallui/InCallUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView$11;->this$0:Lcom/android/incallui/SecTabletCallCardVoiceView;

    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView$11;->this$0:Lcom/android/incallui/SecTabletCallCardVoiceView;

    iget-object v3, v3, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIncomingPhoto:Landroid/widget/ImageView;

    # invokes: Lcom/android/incallui/SecTabletCallCardVoiceView;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    invoke-static {v2, v3, v1}, Lcom/android/incallui/SecTabletCallCardVoiceView;->access$700(Lcom/android/incallui/SecTabletCallCardVoiceView;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
