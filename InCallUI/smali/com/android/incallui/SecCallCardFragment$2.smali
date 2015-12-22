.class Lcom/android/incallui/SecCallCardFragment$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecCallCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecCallCardFragment;->animateForBlinkCallTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecCallCardFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecCallCardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecCallCardFragment$2;->this$0:Lcom/android/incallui/SecCallCardFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment$2;->this$0:Lcom/android/incallui/SecCallCardFragment;

    # --operator for: Lcom/android/incallui/SecCallCardFragment;->mEndCallRepeatCount:I
    invoke-static {v0}, Lcom/android/incallui/SecCallCardFragment;->access$206(Lcom/android/incallui/SecCallCardFragment;)I

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment$2;->this$0:Lcom/android/incallui/SecCallCardFragment;

    # getter for: Lcom/android/incallui/SecCallCardFragment;->mEndCallRepeatCount:I
    invoke-static {v0}, Lcom/android/incallui/SecCallCardFragment;->access$200(Lcom/android/incallui/SecCallCardFragment;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment$2;->this$0:Lcom/android/incallui/SecCallCardFragment;

    # invokes: Lcom/android/incallui/SecCallCardFragment;->animateForBlinkCallTime()V
    invoke-static {v0}, Lcom/android/incallui/SecCallCardFragment;->access$300(Lcom/android/incallui/SecCallCardFragment;)V

    :cond_0
    return-void
.end method
