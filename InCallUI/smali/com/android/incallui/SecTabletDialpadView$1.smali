.class Lcom/android/incallui/SecTabletDialpadView$1;
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

    iput-object p1, p0, Lcom/android/incallui/SecTabletDialpadView$1;->this$0:Lcom/android/incallui/SecTabletDialpadView;

    invoke-direct {p0}, Lcom/android/phone/common/animation/AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadView$1;->this$0:Lcom/android/incallui/SecTabletDialpadView;

    const/4 v1, 0x0

    # invokes: Lcom/android/incallui/SecTabletDialpadView;->setTopMarginOfDialpad(I)V
    invoke-static {v0, v1}, Lcom/android/incallui/SecTabletDialpadView;->access$000(Lcom/android/incallui/SecTabletDialpadView;I)V

    return-void
.end method
