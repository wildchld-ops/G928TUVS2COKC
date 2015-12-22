.class Lcom/android/incallui/SecTabletCallButtonVoiceView$3;
.super Ljava/lang/Object;
.source "SecTabletCallButtonVoiceView.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecTabletCallButtonVoiceView;->createAddcallButtonListWidgetFromView(Landroid/view/View;)Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecTabletCallButtonVoiceView;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecTabletCallButtonVoiceView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView$3;->this$0:Lcom/android/incallui/SecTabletCallButtonVoiceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v3

    :pswitch_0
    iget-object v1, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView$3;->this$0:Lcom/android/incallui/SecTabletCallButtonVoiceView;

    const/4 v2, 0x1

    # setter for: Lcom/android/incallui/SecTabletCallButtonVoiceView;->isHovering:Z
    invoke-static {v1, v2}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->access$602(Lcom/android/incallui/SecTabletCallButtonVoiceView;Z)Z

    goto :goto_0

    :pswitch_1
    const-string v1, "onHover - ACTION_HOVER_EXIT"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView$3;->this$0:Lcom/android/incallui/SecTabletCallButtonVoiceView;

    # getter for: Lcom/android/incallui/SecTabletCallButtonVoiceView;->isHovering:Z
    invoke-static {v1}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->access$600(Lcom/android/incallui/SecTabletCallButtonVoiceView;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "onHover - ACTION_HOVER_EXIT - isShowing"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView$3;->this$0:Lcom/android/incallui/SecTabletCallButtonVoiceView;

    # setter for: Lcom/android/incallui/SecTabletCallButtonVoiceView;->isHovering:Z
    invoke-static {v1, v3}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->access$602(Lcom/android/incallui/SecTabletCallButtonVoiceView;Z)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
