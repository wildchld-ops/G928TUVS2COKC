.class Lcom/android/incallui/SecTabletDialpadView$2;
.super Lcom/android/phone/common/animation/AnimationListenerAdapter;
.source "SecTabletDialpadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecTabletDialpadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecTabletDialpadView;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecTabletDialpadView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecTabletDialpadView$2;->this$0:Lcom/android/incallui/SecTabletDialpadView;

    invoke-direct {p0}, Lcom/android/phone/common/animation/AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/SecTabletDialpadView$2;->this$0:Lcom/android/incallui/SecTabletDialpadView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/incallui/SecTabletDialpadView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletDialpadView$2;->this$0:Lcom/android/incallui/SecTabletDialpadView;

    invoke-virtual {v1}, Lcom/android/incallui/SecTabletDialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0189

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    iget-object v1, p0, Lcom/android/incallui/SecTabletDialpadView$2;->this$0:Lcom/android/incallui/SecTabletDialpadView;

    neg-int v2, v0

    # invokes: Lcom/android/incallui/SecTabletDialpadView;->setTopMarginOfDialpad(I)V
    invoke-static {v1, v2}, Lcom/android/incallui/SecTabletDialpadView;->access$000(Lcom/android/incallui/SecTabletDialpadView;I)V

    return-void
.end method
