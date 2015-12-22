.class Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "IncomingCallImageHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->animateForArrowContainer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;


# direct methods
.method constructor <init>(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$4;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$4;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "animateForArrowContainer..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$4;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    # getter for: Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleType:I
    invoke-static {v3}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->access$700(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onAnimationEnd"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$4;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    # getter for: Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;
    invoke-static {v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->access$1200(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$4;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    # getter for: Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowList:[Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->access$1300(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)[Landroid/widget/ImageView;

    move-result-object v1

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
