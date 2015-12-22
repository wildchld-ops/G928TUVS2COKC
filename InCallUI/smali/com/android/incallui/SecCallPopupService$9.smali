.class Lcom/android/incallui/SecCallPopupService$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecCallPopupService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecCallPopupService;->animateForBlinkCallTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecCallPopupService;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecCallPopupService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecCallPopupService$9;->this$0:Lcom/android/incallui/SecCallPopupService;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService$9;->this$0:Lcom/android/incallui/SecCallPopupService;

    # --operator for: Lcom/android/incallui/SecCallPopupService;->mEndCallRepeatCount:I
    invoke-static {v0}, Lcom/android/incallui/SecCallPopupService;->access$2406(Lcom/android/incallui/SecCallPopupService;)I

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService$9;->this$0:Lcom/android/incallui/SecCallPopupService;

    # getter for: Lcom/android/incallui/SecCallPopupService;->mEndCallRepeatCount:I
    invoke-static {v0}, Lcom/android/incallui/SecCallPopupService;->access$2400(Lcom/android/incallui/SecCallPopupService;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService$9;->this$0:Lcom/android/incallui/SecCallPopupService;

    # invokes: Lcom/android/incallui/SecCallPopupService;->animateForBlinkCallTime()V
    invoke-static {v0}, Lcom/android/incallui/SecCallPopupService;->access$2500(Lcom/android/incallui/SecCallPopupService;)V

    :cond_0
    return-void
.end method
