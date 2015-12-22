.class Lcom/android/incallui/SecVoiceCallCardFragment$2;
.super Ljava/lang/Object;
.source "SecVoiceCallCardFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecVoiceCallCardFragment;->setIncomingPrimaryImage(Landroid/graphics/drawable/Drawable;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecVoiceCallCardFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecVoiceCallCardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecVoiceCallCardFragment$2;->this$0:Lcom/android/incallui/SecVoiceCallCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment$2;->this$0:Lcom/android/incallui/SecVoiceCallCardFragment;

    iget-object v1, v1, Lcom/android/incallui/SecVoiceCallCardFragment;->mIncomingPhoto:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment$2;->this$0:Lcom/android/incallui/SecVoiceCallCardFragment;

    iget-object v1, v1, Lcom/android/incallui/SecVoiceCallCardFragment;->mIncomingPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment$2;->this$0:Lcom/android/incallui/SecVoiceCallCardFragment;

    # invokes: Lcom/android/incallui/SecVoiceCallCardFragment;->applyBlendedFilterIfNecessary()V
    invoke-static {v1}, Lcom/android/incallui/SecVoiceCallCardFragment;->access$000(Lcom/android/incallui/SecVoiceCallCardFragment;)V

    goto :goto_0
.end method
