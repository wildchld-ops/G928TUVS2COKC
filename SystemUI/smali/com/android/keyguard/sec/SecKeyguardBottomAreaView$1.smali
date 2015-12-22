.class Lcom/android/keyguard/sec/SecKeyguardBottomAreaView$1;
.super Landroid/os/Handler;
.source "SecKeyguardBottomAreaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->access$000(Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->access$000(Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x8a3
        :pswitch_0
    .end packed-switch
.end method
