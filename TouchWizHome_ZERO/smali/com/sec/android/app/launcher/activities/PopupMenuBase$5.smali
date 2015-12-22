.class Lcom/sec/android/app/launcher/activities/PopupMenuBase$5;
.super Ljava/lang/Object;
.source "PopupMenuBase.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/PopupMenuBase;->setButtonInvisible(ZLcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/PopupMenuBase;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/PopupMenuBase;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase$5;->this$0:Lcom/sec/android/app/launcher/activities/PopupMenuBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase$5;->this$0:Lcom/sec/android/app/launcher/activities/PopupMenuBase;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mButton:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase$5;->this$0:Lcom/sec/android/app/launcher/activities/PopupMenuBase;

    # getter for: Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mSlideOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->access$100(Lcom/sec/android/app/launcher/activities/PopupMenuBase;)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
