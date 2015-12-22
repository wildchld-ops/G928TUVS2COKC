.class Lcom/android/keyguard/sec/SecKeyguardCircleView$3;
.super Ljava/lang/Object;
.source "SecKeyguardCircleView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecKeyguardCircleView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardCircleView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    iget-object v0, v0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->checkWorkingSet(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    iget-object v0, v0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->clearFocus()V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    iget-object v0, v0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    iget-object v0, v0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
