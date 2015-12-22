.class Lcom/android/keyguard/sec/KeyguardFMMView$2;
.super Ljava/lang/Object;
.source "KeyguardFMMView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardFMMView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardFMMView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardFMMView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardFMMView$2;->this$0:Lcom/android/keyguard/sec/KeyguardFMMView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView$2;->this$0:Lcom/android/keyguard/sec/KeyguardFMMView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardFMMView;->doHapticKeyClick()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView$2;->this$0:Lcom/android/keyguard/sec/KeyguardFMMView;

    # invokes: Lcom/android/keyguard/sec/KeyguardFMMView;->getEntryTextview()Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardFMMView;->access$400(Lcom/android/keyguard/sec/KeyguardFMMView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView$2;->this$0:Lcom/android/keyguard/sec/KeyguardFMMView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardFMMView;->verifyPasswordAndUnlock()V

    :cond_0
    return-void
.end method
